#ifndef path_planning_widget_H_
#define path_planning_widget_H_

#include <tf/transform_datatypes.h>
#include <ros/ros.h>
#include <geometry_msgs/Pose.h>
#include <sensor_msgs/JointState.h>
#include <tf/tf.h>
#include <tf/LinearMath/Matrix3x3.h>
#include <Eigen/Geometry>
#include <yaml-cpp/yaml.h>
#include <fstream>
#include <string.h>

#include <ui_path_planning_widget.h>

#include <moveit_cartesian_plan_plugin/add_way_point.h>
#include <moveit_cartesian_plan_plugin/waypoint.h>

/// @brief The set of messages necessary to publish Cartesian Impedance/Force Control parameters via ROS Topic
#include <cartesian_impedance_msgs/SetCartesianImpedance.h>
#include <cartesian_impedance_msgs/SetCartesianForceCtrl.h>

#include <QWidget>
#include <QTimer>
#include <QtConcurrentRun>
#include <QMainWindow>
#include <QTreeView>
#include <QStandardItemModel>
#include <QStandardItem>
#include <QSplitter>
#include <QHeaderView>
#include <QCompleter>
#include <QIntValidator>
#include <QDataStream>
#include <QString>
#include <QFileDialog>
#include <QMessageBox>
#include <QProgressBar>

// macros
#ifndef DEG2RAD
#define DEG2RAD(x) ((x)*0.017453293)
#endif

#ifndef RAD2DEG
#define RAD2DEG(x) ((x)*57.29578)
#endif

namespace moveit_cartesian_plan_plugin {

	/**
	 *  @brief     Class for handling the User Interactions with the RQT Widget.
	 *  @details   The PathPlanningWidget Class handles all User Interactions with the RQT GUI.
	 *             This Class inherits from the QWidget superclass.
	 *             The concept of the RQT widget is to add the same possibilities as the UI from the RViz environment
	 *             and enabling simultaneous communication between the RViz Environment and the RQT GUI.
	 *             The updated plugin also allows Impedance/Force Control parameters to be set via the Qt UI of the
	 *             plugin.
	 *             Of course you need to make sure that you have implemented this in the particular robot driver.
	 *  @author    Risto Kojcev, Arne Peters
	 **/

	class PathPlanningWidget: public QWidget {
		Q_OBJECT

		public:
			/// RQT Widget Constructor.
			PathPlanningWidget(std::string ns="");

			/// Virtual RQT Widget Destructor.
			virtual ~PathPlanningWidget();

			/// set the name of the RQT Widget.
			std::string get_name() {
				return "RobotPathPlanner";
			}

			tf::Transform getNewWaypointInputValue() ;
			Waypoint getWaypointFromTreeView(const int index) ;

			std::string generateNewWaypointName();

		protected:
			/// Widget Initialization.
			void init();

			void emitNewWaypointInputValueChangedSignal();

			std::string param_ns_;
			/// Protected variable for the Qt UI to access the Qt UI components.
			Ui::PathPlanningWidget ui_;
			/// Definition of an abstract data model.
			QStandardItemModel* pointDataModel;

		protected Q_SLOTS:
			/// Set the start pose of the User Interactive Marker to correspond to the loaded robot base frame.
			void setAddPointUIStartPos(const std::string robot_model_frame,const tf::Transform end_effector);

			/// Initialize the TreeView with the User Interactive Marker.
			void initTreeView();
			/// Insert a row in the TreeView.
			void insertRow(const Waypoint& point_pos,const int count);
			/// Remove a row in the TreeView.
			void removeRow(int index);
			/// Handle the event when a User updates the pose of a Way-Point through the RQT UI.
			void pointPosUpdated_slot( const Waypoint& waypoint, const int index);
			/// Get the selected Way-Point from the RQT UI.
			void selectedPoint(const QModelIndex& current, const QModelIndex& previous);
			/// Handle the even when the data in the TreeView has been changed.
			void treeViewDataChanged(const QModelIndex& item, const QVariant& value);

			/// Handle the event of a Way-Point deleted from the RQT UI.
			void on_deleteWaypointButton_clicked();
			/// Handle the event of a Way-Point added from the RQT UI.
			void on_addNewWaypointButton_clicked();
			/// Slot for parsing the Way-Points and notifying the MoveIt.
			void on_executePathButton_clicked();
			/// Send a signal that a save the Way-Points to a file button has been pressed.
			void on_savePathButton_clicked();
			/// Send a signal that a load the Way-Points from a file button has been pressed.
			void on_loadPathButton_clicked();
			/// Slot connected to a clear all points button click.
			void on_clearAllPointsButton_clicked();

			void on_copyCurrentPoseButton_clicked();
			void on_addCurrentPositionPointButton_clicked();
			void on_moveToNewPositionButton_clicked();
			void on_moveToWaypointButton_clicked();

			void on_moveWaypointUpButton_clicked();
			void on_moveWaypointDownButton_clicked();

			/// Create a slot to call a signal on which the Move the robot to home position function is called
			void on_moveToHomePoseButton_clicked();
			/// set the read the Cartesian Impedance parameters from the UI and send them to the designated topic.
			void on_setCartImpParamsButton_clicked();
			/// set the read the Cartesian Force parameters from the UI and send them to the designated topic.
			void on_setFTButton_clicked();

			void updateCurrentPositionDisplay(const std::string, const tf::Transform end_effector);
			/// Slot for disabling the TabWidged while Cartesian Path is executed.
			void cartesianPathStartedHandler();
			/// Slot for enabling the TabWidged after Cartesian Path is executed.
			void cartesianPathFinishedHandler();
			/// Send the Cartesian and MoveIt parameters to the Cartesian Path Planning class.
			void sendCartTrajectoryParamsFromUI();
			/// Set a label in the RQT to inform the user of the percantage of completion of the Cartesian plan.
			void cartPathCompleted_slot(double fraction);

			/// Set the planning group ComboBox
			void getCartPlanGroup(std::vector< std::string > group_names);

			void selectedPlanGroup(int index);

			/// Check if the user wants to have cartesian Impedance enabled (check if depreciated)
			void withCartImpedanceStateChanged(int state);

			/// Check if the user wants to have F/T control from the UI
			void withFTControl(int state);

			void newWaypointValueChanged(double);

			void setNewWaypointInputs(const tf::Transform& pose);

		Q_SIGNALS:
			/// Notify RViz environment that a new Way-Point has been added from RQT.
			void addPoint( const Waypoint point_pos );
			/// Notify RViz environment that a new Way-Point has been deleted from RQT.
			void pointDeleteUI_signal(int index);
			/// Notify RViz environment that a new Way-Point has been modified from RQT.
			void pointPosUpdated_signal(const Waypoint& position, const int index);
			/// Signal that a waypoint has been moved up or down in the tree view
			void swapWaypoints_signal(const int index1, const int index2);

			/**
			 * Signal to notify the Cartesian Path Planning Class that an Execute Cartesian Plan button has been
			 * pressed.
			 **/
			void parseWayPointBtn_signal();
			/// Save to file button has been pressed.
			void saveToFileBtn_press();
			/// Copy current pose button has been pressed.
			void copyCurrentPoseButton_press();
			/// Signal that clear all points button has been pressed.
			void clearAllPoints_signal();
			/// Signal that the Cartesian Plan execution button has been pressed.
			void cartesianPathParamsFromUI_signal(double plan_time_,double cart_step_size_, double cart_jump_thresh_, bool moveit_replan_,bool avoid_collisions_);

			/**
			 * On this signal we will call the function for which will execute the MoveIt command to bring the robot in
			 * its initial state.
			 **/
			void moveToHomeFromUI_signal();

			/// Signal to trigger a motion to a single pose
			void moveToPose_signal(geometry_msgs::Pose);

			void sendSendSelectedPlanGroup(int index);
			/// signaling the Qt that the Impedance params have changed via the UI
			void setCartesianImpedanceParamsUI_signal(cartesian_impedance_msgs::SetCartesianImpedancePtr cart_impedance_params);
			/// signaling the Qt that the Force params have changed via the UI
			void setCartesianFTParamsUI_signal(cartesian_impedance_msgs::SetCartesianForceCtrlPtr cart_ft_params);

			void newWaypointInputValueChanged(const tf::Transform& pose);

		private:
			std::string getWaypointName(const int row_index) const ;
			int name_counter_ = 1;
			int selected_waypoint_ ;
	};
} //end of namespace moveit_cartesian_plan_plugin

#endif //path_planning_widget_H_
