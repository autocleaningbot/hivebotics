from datetime import datetime
import copy
import math
import open3d
import numpy as np

import rospy
from geometry_msgs.msg import PoseArray, Pose
import tf

import math3d

import pdb

# def median_filter_for_yaw(path_poses_arr):
#     #path_poses_arr = PoseArray()
#     #pdb.set_trace()
#     window_size = 3
#     # yaw_list = []
#     proj_list = []
#     tmp_pose_arr = []
#     path_poses_arr_tmp = copy.deepcopy(path_poses_arr)
#     # TODO automate it
#     path_poses_arr_tmp.poses.insert(0, path_poses_arr.poses[-1])
#     path_poses_arr_tmp.poses.insert(0, path_poses_arr.poses[-2])
#     path_poses_arr_tmp.poses.append(path_poses_arr.poses[1])
#     path_poses_arr_tmp.poses.append(path_poses_arr.poses[2])
    
#     for ii, pose in enumerate(path_poses_arr.poses):
#         for kk in range(0, window_size):
#             tmp_pose_arr.append(path_poses_arr_tmp.poses[ii - (kk - int(window_size/2))])

#         ii_q_tmp = math3d.UnitQuaternion(pose.orientation.w, pose.orientation.x, pose.orientation.y, pose.orientation.z)
#         ii_o_tmp = math3d.Orientation(ii_q_tmp)
#         ii_o_tmp_x = ii_o_tmp.matrix[0,0:3]        
        
#         for jj, tmp_pose in enumerate(tmp_pose_arr):
#             #print("tmp_pose:", tmp_pose)
#             jj_q_tmp = math3d.UnitQuaternion(tmp_pose.orientation.w, tmp_pose.orientation.x, tmp_pose.orientation.y, tmp_pose.orientation.z)
#             jj_o_tmp = math3d.Orientation(jj_q_tmp)
#             jj_o_tmp_x = jj_o_tmp.matrix[0,0:3]
            
#             proj_list.append(np.dot(ii_o_tmp_x,jj_o_tmp_x))
#             # yaw_list.append(o_tmp.to_euler('zyx')[0])
            
#         proj = np.arctan(proj_list)
#         proj_max_idx = np.argmax([proj > np.pi/4])

#         print(proj_list)
#         # proj_list.sort()
#         # print(proj_list)


#         # mid_val = yaw_list[int(window_size/2)]

#         if proj_max_idx:


#         q_tmp = math3d.UnitQuaternion(pose.orientation.w, pose.orientation.x, pose.orientation.y, pose.orientation.z)
#         o_tmp = math3d.Orientation(q_tmp)
#         ypr = o_tmp.to_euler('zyx')
#         o_tmp = o_tmp.new_euler((mid_val, ypr[1], ypr[2]), 'ZYX')

#         path_poses_arr.poses[ii].orientation.w = o_tmp.quaternion.s
#         path_poses_arr.poses[ii].orientation.x = o_tmp.quaternion.x
#         path_poses_arr.poses[ii].orientation.y = o_tmp.quaternion.y
#         path_poses_arr.poses[ii].orientation.z = o_tmp.quaternion.z

#         del yaw_list[:]
#         del tmp_pose_arr[:]

#     return path_poses_arr


def plan_path_pts(ptcloud_file_name, path_resolution_deg, path_resolution_z_inc, prefix_name=""):
    path_resolution_rad = path_resolution_deg * np.pi / 180
    
    ptcloud = open3d.io.read_point_cloud(ptcloud_file_name)
        
    ptcloud.estimate_normals(fast_normal_computation=False)
    ptcloud.orient_normals_to_align_with_direction([0,0,999])
    ptcloud.normalize_normals()

    xyz_points = np.asarray(ptcloud.points)
    normals = np.asarray(ptcloud.normals)

    print(xyz_points)
    print(xyz_points.shape)
    num_pts = xyz_points.shape[0]

    center_pt = np.average(xyz_points, axis=0)
    print(center_pt)

    # bring the origin in the center of the data
    xyz_points_at_orig = xyz_points - center_pt

    rho = np.sqrt( 
        np.power(xyz_points_at_orig[0:num_pts , 0], 2) + 
        np.power(xyz_points_at_orig[0:num_pts , 1], 2) 
    )
    # arctan2 generates both +ve and -ve angles
    # thus next step is to convert all -ve angles to +vs
    theta = np.arctan2(xyz_points_at_orig[0:num_pts , 1], xyz_points_at_orig[0:num_pts , 0])

    theta_neg_idx = theta < 0
    # print(theta_neg_idx)
    theta[theta_neg_idx] = 2*np.pi + theta[theta_neg_idx]

    z = xyz_points_at_orig[0:num_pts , 2]
    
    # print("rho", rho)
    # print("theta", theta)
    # print("z", z)

    path_xyz = np.array([]).reshape(0,3)
    path_nls = np.array([]).reshape(0,3)
    
    z_min = np.min(z)
    z_max = np.max(z)

    is_seat = (z_max - z_min) / path_resolution_z_inc < 1

    if is_seat:
        z_start = z_min
        z_end = z_max
        inc = path_resolution_z_inc
    else:
        z_start = z_max - path_resolution_z_inc/2 
        z_end = z_min + path_resolution_z_inc/2
        inc = -path_resolution_z_inc
    # two loops for generating the paths
    # first loop will extract the points within z_inc range
    # second loop will extract the points within theta_in range

    # plan path from up to down
    for zz in np.arange(z_start, z_end, inc):
        z_in_idx = np.logical_and(z >= zz, z < zz + path_resolution_z_inc)
        for ii in np.arange(0, 2*np.pi, path_resolution_rad):
            # print(ii)
            theta_in_idx = np.logical_and(theta >= ii , theta < ii + path_resolution_rad)
            # print("theta_idx", theta_idx.shape)
            # print("np.count_nonzero(theta_idx): ", np.count_nonzero(theta_idx))

            in_inx = np.logical_and(z_in_idx , theta_in_idx)
            

            inside_pts = xyz_points_at_orig[in_inx]
            inside_nls = normals[in_inx]

            averaged_pt = np.average(inside_pts, axis=0)
            averaged_nls = np.average(inside_nls, axis=0)

            path_xyz = np.vstack((path_xyz, averaged_pt))
            path_nls = np.vstack((path_nls, averaged_nls))






    # bring the origin to the real value of the data
    path_xyz_real = path_xyz + center_pt

    # for testing
    # path_xyz_real = np.vstack((path_xyz_real, center_pt))
    # path_nls = np.vstack((path_nls, np.average(normals, axis=0)))


    path_pts = open3d.geometry.PointCloud()
    path_pts.points = open3d.utility.Vector3dVector(path_xyz_real)
    # invert all normals to match the ee orientation
    path_pts.normals = open3d.utility.Vector3dVector(-path_nls)
    path_pts.normalize_normals()

    timestamp = datetime.now().strftime("%Y%m%d%H%M%S")

    open3d.io.write_point_cloud(prefix_name + "_" + timestamp + ".ply", path_pts, write_ascii=True)

    return path_pts



def path_pts_to_poses(path_pts, ref_frame_name, ee_frame_name, toilet_frame_name):
    tf_listener = tf.TransformListener()

    # get the tranform from world to ee
    tf_listener.waitForTransform(ref_frame_name, ee_frame_name, rospy.Time(), rospy.Duration(5))
    t, q = tf_listener.lookupTransform(ref_frame_name, ee_frame_name, rospy.Time())
    
    # math3d lib uses the quaterion format w, x, y, z
    # ros uses x, y, z, w
    t_tmp = math3d.Vector(t[0], t[1], t[2])
    o_tmp = math3d.Orientation()
    q_tmp = math3d.UnitQuaternion(q[3], q[0], q[1], q[2])
    o_tmp.set_quaternion(q_tmp)
    world_to_ee = math3d.Transform(o_tmp, t_tmp)


    # get the tranform from world to toilet_frame
    tf_listener.waitForTransform(ref_frame_name, toilet_frame_name, rospy.Time(), rospy.Duration(5))
    t, q = tf_listener.lookupTransform(ref_frame_name, toilet_frame_name, rospy.Time())
    
    # math3d lib uses the quaterion format w, x, y, z
    # ros uses x, y, z, w
    t_tmp = math3d.Vector(t[0], t[1], t[2])
    o_tmp = math3d.Orientation()
    q_tmp = math3d.UnitQuaternion(q[3], q[0], q[1], q[2])
    o_tmp.set_quaternion(q_tmp)
    world_to_toilet = math3d.Transform(o_tmp, t_tmp)
    

    # get the tranform from ee to toilet_frame
    tf_listener.waitForTransform(ee_frame_name, toilet_frame_name, rospy.Time(), rospy.Duration(5))
    t, q = tf_listener.lookupTransform(ee_frame_name, toilet_frame_name, rospy.Time())
    
    # math3d lib uses the quaterion format w, x, y, z
    # ros uses x, y, z, w
    t_tmp = math3d.Vector(t[0], t[1], t[2])
    o_tmp = math3d.Orientation()
    q_tmp = math3d.UnitQuaternion(q[3], q[0], q[1], q[2])
    o_tmp.set_quaternion(q_tmp)
    ee_to_toilet = math3d.Transform(o_tmp, t_tmp)


    # bring the planned paths to the reference frame
    # as the toilet model is in its own/observing frame
    path_pts_world = copy.deepcopy(path_pts).transform(world_to_toilet.matrix)

    # as the rotation matrix requires 3 normal vectors for 
    # comp definition  
    # but normal vector is one vector 
    # thus generating the otehr two vector from the 
    # rotation matrix of robot ee frame
    path_poses_arr = PoseArray()
    path_poses_arr.header.frame_id = "paths_in_world_frame"

    tot_pts = len(path_pts_world.points)

    # making first pose
    rot_m = world_to_ee.array[0:3, 0:3]
    y_axis_toilet = rot_m[0:,1]

    # constraint the x-axis of the paht
    z_axis_path = path_pts_world.normals[0]
    x_axis_path = np.cross(y_axis_toilet, z_axis_path)
    y_axis_path = np.cross(z_axis_path, x_axis_path)

    o_first = math3d.Orientation(
        np.column_stack((x_axis_path, y_axis_path, z_axis_path))
        ) 


    for pt, nl in zip(path_pts_world.points, path_pts_world.normals):
        # print(pt, nl)

        if np.any(np.isnan(pt)) or np.any(np.isinf(pt)):
            continue

        if np.any(np.isnan(nl)) or np.any(np.isinf(nl)):
            continue


        rot_m = world_to_ee.array[0:3, 0:3]
        y_axis_toilet = rot_m[0:,1]

        # constraint the x-axis of the path
        z_axis_path = nl / np.linalg.norm(nl)
        x_axis_path = np.cross(y_axis_toilet, z_axis_path) # o_first.array[0:,0] / np.linalg.norm(o_first.array[0:,0]) # np.cross(y_axis_toilet, z_axis_path)
        x_axis_path = x_axis_path / np.linalg.norm(x_axis_path)
        print("x_axis_path: ", x_axis_path)
        y_axis_path = np.cross(z_axis_path, x_axis_path)
        y_axis_path = y_axis_path / np.linalg.norm(y_axis_path)

        o_tmp = math3d.Orientation(
            np.column_stack((x_axis_path, y_axis_path, z_axis_path))
            )
        
        # print(
        #     pt[0], pt[1], pt[2],
        #      o_tmp.quaternion.x, o_tmp.quaternion.y, o_tmp.quaternion.z, o_tmp.quaternion.s
        # )
        path_pose = Pose()

        path_pose.position.x = pt[0]
        path_pose.position.y = pt[1]
        path_pose.position.z = pt[2]
        
        path_pose.orientation.w = o_tmp.quaternion.s
        path_pose.orientation.x = o_tmp.quaternion.x
        path_pose.orientation.y = o_tmp.quaternion.y
        path_pose.orientation.z = o_tmp.quaternion.z
        
        # print(path_pose)

        path_poses_arr.poses.append(path_pose)


    # for ii, pose in enumerate(path_poses_arr.poses):
    #     print(ii, pose)


    # path_poses_arr = median_filter_for_yaw(path_poses_arr)

    return path_poses_arr
