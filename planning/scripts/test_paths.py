#!/usr/bin/env python3

from importlib.resources import path
from pytools import average

import rospy
import tf 

import open3d
import numpy as np

import path_planning

def main():
    rospy.init_node('test_paths', anonymous=True)
    upper_surface_name = rospy.get_param('~upper_surface_name')
    inner_surface_name = rospy.get_param('~inner_surface_name')
    path_resolution_deg = rospy.get_param('~path_resolution_deg')
    path_resolution_z_inc = rospy.get_param('~path_resolution_z_inc')
    
    # frame names
    ref_frame_name = rospy.get_param('~ref_frame_name')
    ee_frame_name = rospy.get_param('~ee_frame_name')
    toilet_frame_name = rospy.get_param('~toilet_frame_name')

    in_path = path_planning.plan_path_pts(inner_surface_name, path_resolution_deg, path_resolution_z_inc,"inner")
    sur_path = path_planning.plan_path_pts(upper_surface_name, path_resolution_deg, path_resolution_z_inc,"surface")

    print(len(in_path.points))
    print(len(sur_path.points))

    in_path_poses = path_planning.path_pts_to_poses(in_path, ref_frame_name, ee_frame_name, toilet_frame_name)
    sur_path_poses = path_planning.path_pts_to_poses(sur_path, ref_frame_name, ee_frame_name, toilet_frame_name)

    print(len(in_path_poses.poses))
    print(len(sur_path_poses.poses))

    # for pose in in_path_poses.poses:
    #     print(pose)

    # for pose in sur_path_poses.poses:
    #     print(pose)


    tf_broadcaster = tf.TransformBroadcaster()
    

    while not rospy.is_shutdown():
        try:
            for ii, pose in enumerate(in_path_poses.poses):
                # print(ii)
                # print(pose)
                tf_broadcaster.sendTransform(
                    (pose.position.x, pose.position.y, pose.position.z),
                    (pose.orientation.x, pose.orientation.y, pose.orientation.z, pose.orientation.w),
                    rospy.Time.now(),
                    "IN" + str(ii),
                    ref_frame_name
                )

            for ii, pose in enumerate(sur_path_poses.poses):
                # print(ii)
                # print(pose)
                tf_broadcaster.sendTransform(
                    (pose.position.x, pose.position.y, pose.position.z),
                    (pose.orientation.x, pose.orientation.y, pose.orientation.z, pose.orientation.w),
                    rospy.Time.now(),
                    "SUR" + str(ii),
                    ref_frame_name
                )

        except Exception as ex:
            print("ex.args",ex.args)
            print("ex.with_traceback", ex.with_traceback)

        rospy.sleep(0.1)
    



    # path_resolution_rad = path_resolution_deg * np.pi / 180
    
    # ptcloud = open3d.io.read_point_cloud(upper_surface_name)
    
    # ptcloud.estimate_normals(fast_normal_computation=False)
    # ptcloud.orient_normals_to_align_with_direction([0,0,999])
    # ptcloud.normalize_normals()

    # xyz_points = np.asarray(ptcloud.points)
    # normals = np.asarray(ptcloud.normals)

    # print(xyz_points)
    # print(xyz_points.shape)
    # num_pts = xyz_points.shape[0]

    # center_pt = np.average(xyz_points, axis=0)
    # print(center_pt)

    # # bring the origin in the center of the data
    # xyz_points_at_orig = xyz_points - center_pt

    # rho = np.sqrt( 
    #     np.power(xyz_points_at_orig[0:num_pts , 0], 2) + 
    #     np.power(xyz_points_at_orig[0:num_pts , 1], 2) 
    # )
    # # arctan2 generates both +ve and -ve angles
    # # thus next step is to convert all -ve angles to +vs
    # theta = np.arctan2(xyz_points_at_orig[0:num_pts , 1], xyz_points_at_orig[0:num_pts , 0])

    # theta_neg_idx = theta < 0
    # # print(theta_neg_idx)
    # theta[theta_neg_idx] = 2*np.pi + theta[theta_neg_idx]

    # z = xyz_points_at_orig[0:num_pts , 2]
    
    # # print("rho", rho)
    # # print("theta", theta)
    # # print("z", z)

    # path_xyz = np.array([]).reshape(0,3)
    # path_nls = np.array([]).reshape(0,3)
    
    # z_min = np.min(z)
    # z_max = np.max(z)

    # # two loops for generating the paths
    # # first loop will extract the points within z_inc range
    # # second loop will extract the points within theta_in range
    
    # for zz in np.arange(z_min, z_max, path_resolution_z_inc):
    #     z_in_idx = np.logical_and(z >= zz - path_resolution_z_inc/2, z < zz + path_resolution_z_inc/2)
    #     for ii in np.arange(0, 2*np.pi, path_resolution_rad):
    #         # print(ii)
    #         theta_in_idx = np.logical_and(theta >= ii , theta < ii + path_resolution_rad)
    #         # print("theta_idx", theta_idx.shape)
    #         # print("np.count_nonzero(theta_idx): ", np.count_nonzero(theta_idx))

    #         in_inx = np.logical_and(z_in_idx , theta_in_idx)
            

    #         inside_pts = xyz_points_at_orig[in_inx]
    #         inside_nls = normals[in_inx]

    #         averaged_pt = np.average(inside_pts, axis=0)
    #         averaged_nls = np.average(inside_nls, axis=0)

    #         path_xyz = np.vstack((path_xyz, averaged_pt))
    #         path_nls = np.vstack((path_nls, averaged_nls))






    # # bring the origin to the real value of the data
    # path_xyz_real = path_xyz + center_pt

    # # for testing
    # # path_xyz_real = np.vstack((path_xyz_real, center_pt))
    # # path_nls = np.vstack((path_nls, np.average(normals, axis=0)))


    # path_pts = open3d.geometry.PointCloud()
    # path_pts.points = open3d.utility.Vector3dVector(path_xyz_real)
    # path_pts.normals = open3d.utility.Vector3dVector(path_nls)
    # path_pts.normalize_normals()


    # open3d.io.write_point_cloud("path.ply", path_pts, write_ascii=True)


if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass