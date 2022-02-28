#include <moveit_cartesian_plan_plugin/add_way_point.h>

#define POSE_PREVIEW_MARKER_NAME "pose_preview"

namespace moveit_cartesian_plan_plugin
{

	AddWayPoint::AddWayPoint(QWidget *parent):rviz::Panel(parent) {
		/**
		 * The constructor sets the Object name, resets the Interactive Marker server.
		 * It initialize the subscriber to the mouse click topic and registers the call back to a mouse click event.
		 * It initializes the constants for the Marker color and scales, all the Interactive Markers are defined as
		 * arrows. The User Interaction arrow is set to have red color, while the way-points when in an IK Solution are
		 * set as blue. The Way-Points which are outside an IK solution are set to have yellow color.
		 **/

		setObjectName("CartesianPathPlannerPlugin");
		server_.reset( new interactive_markers::InteractiveMarkerServer("moveit_cartesian_plan_plugin","",false));

		WAY_POINT_COLOR_.r = 0.10;
		WAY_POINT_COLOR_.g = 0.20;
		WAY_POINT_COLOR_.b = 0.4;
		WAY_POINT_COLOR_.a = 1.0;

		WAY_POINT_COLOR_OUTSIDE_IK_.r = 1.0;
		WAY_POINT_COLOR_OUTSIDE_IK_.g = 1.0;
		WAY_POINT_COLOR_OUTSIDE_IK_.b = 0.0;
		WAY_POINT_COLOR_OUTSIDE_IK_.a = 1.0;

		/*WAY_POINT_SCALE_CONTROL_.x = 0.28;
		WAY_POINT_SCALE_CONTROL_.y = 0.032;
		WAY_POINT_SCALE_CONTROL_.z = 0.032;*/

		WAY_POINT_SCALE_CONTROL_.x = 0.1;
		WAY_POINT_SCALE_CONTROL_.y = 0.1;
		WAY_POINT_SCALE_CONTROL_.z = 0.1;

		INTERACTIVE_MARKER_SCALE_ = 0.4;

		/*ARROW_INTER_COLOR_.r = 0.8;
		ARROW_INTER_COLOR_.g = 0.2;
		ARROW_INTER_COLOR_.b = 0.1;
		ARROW_INTER_COLOR_.a = 1.0;*/

		/*
		ARROW_INTER_SCALE_CONTROL_.x = 0.27;
		ARROW_INTER_SCALE_CONTROL_.y = 0.03;
		ARROW_INTER_SCALE_CONTROL_.z = 0.03;
		 */

		ARROW_INTER_SCALE_CONTROL_.x = 0.1;
		ARROW_INTER_SCALE_CONTROL_.y = 0.1;
		ARROW_INTER_SCALE_CONTROL_.z = 0.1;

		ARROW_INTERACTIVE_SCALE_ = 0.3;

		ROS_INFO("AddWayPoint created");
	}

	AddWayPoint::~AddWayPoint()
	{
		/**
		 * The object destructor resets the Interactive Marker server on the Object Destruction.
		 **/

		server_.reset();
	}

	void AddWayPoint::onInitialize()
	{

		/**
		 * Creating main layout object, object for the Cartesian Path Planning Class and the RQT Widget.
		 * Here we also create the Interactive Marker Menu handler for the Way-Points.
		 * Make all the necessary connections for the QObject communications.
		 * Inter Object connections for communications between the classes.
		 **/

		path_generate_ = new GenerateCartesianPath();
		set_cart_path_params_ = new SetCartesianImpedance();
		set_cart_ft_params_ = new SetCartesianFTControl();
		widget_ = new PathPlanningWidget("~");
		this->parentWidget()->resize(widget_->width(),widget_->height());
		QHBoxLayout* main_layout = new QHBoxLayout(this);
		main_layout->addWidget(widget_);

		/// Inform the user that the RViz is initializing
		ROS_INFO("initializing..");

		menu_handler_.insert( "Delete", boost::bind( &AddWayPoint::processFeedback, this, _1 ) );
		menu_handler_.setCheckState(menu_handler_.insert( "Fine adjustment", boost::bind( &AddWayPoint::processFeedback, this, _1 )),interactive_markers::MenuHandler::UNCHECKED);

		connect(this, SIGNAL(wayPoints_signal(std::vector<geometry_msgs::Pose>)),path_generate_,SLOT(cartesianPathHandler(std::vector<geometry_msgs::Pose>)));
		connect(this, SIGNAL(addPointRViz(const Waypoint&,const int)), widget_, SLOT(insertRow(const Waypoint&,const int)));
		connect(this, SIGNAL(pointPoseUpdatedRViz(const Waypoint&,const int)), widget_, SLOT(pointPosUpdated_slot(const Waypoint&,const int)));
		connect(this, SIGNAL(pointDeleteRviz(int)),widget_,SLOT(removeRow(int)));
		connect(this, SIGNAL(onUpdatePosCheckIkValidity(const geometry_msgs::Pose&, const int)),path_generate_,SLOT(checkWayPointValidity(const geometry_msgs::Pose&, const int)));
		connect(this, SIGNAL(previewMarkerPoseUpdated(const tf::Transform&)), widget_, SLOT(setNewWaypointInputs(const tf::Transform&)));

		connect(widget_, SIGNAL(addPoint(Waypoint)),this,SLOT( addPointFromUI(Waypoint)));
		connect(widget_, SIGNAL(pointDeleteUI_signal(int)), this, SLOT(pointDeleted(int)));
		connect(widget_, SIGNAL(pointPosUpdated_signal(const Waypoint&, const int)), this, SLOT(waypointUpdated(const Waypoint&, const int)));

		connect(widget_, SIGNAL(cartesianPathParamsFromUI_signal(double, double, double, bool, bool )), path_generate_, SLOT(setCartParams(double, double, double, bool, bool)));
		connect(widget_, SIGNAL(moveToPose_signal(geometry_msgs::Pose)), path_generate_, SLOT(moveToPose(geometry_msgs::Pose)));
		connect(widget_, SIGNAL(moveToHomeFromUI_signal()), path_generate_, SLOT(moveToHome()));
		connect(widget_, SIGNAL(parseWayPointBtn_signal()), this, SLOT(parseWayPoints()));
		connect(widget_, SIGNAL(saveToFileBtn_press()), this, SLOT(saveWayPointsToFile()));
		connect(widget_, SIGNAL(swapWaypoints_signal(const int, const int)), this, SLOT(swapWaypoints(const int, const int)));
		connect(widget_, SIGNAL(clearAllPoints_signal()), this, SLOT(clearAllPointsRViz()));
		connect(widget_, SIGNAL(sendSendSelectedPlanGroup(int)), path_generate_, SLOT(getSelectedGroupIndex(int)));
		connect(widget_, SIGNAL(newWaypointInputValueChanged(const tf::Transform&)), this, SLOT(waypointPreviewPoseUpdated(const tf::Transform&)));

		connect(path_generate_, SIGNAL(getRobotModelFrame_signal(const std::string, const tf::Transform)),this,SLOT(getRobotModelFrame_slot(const std::string, const tf::Transform)));
		connect(path_generate_, SIGNAL(getRobotModelFrame_signal(const std::string, const tf::Transform)),widget_,SLOT(setAddPointUIStartPos(const std::string, const tf::Transform)));
		connect(path_generate_, SIGNAL(updateCurrentPosition_signal(const std::string, const tf::Transform)),widget_,SLOT(updateCurrentPositionDisplay(const std::string, const tf::Transform)));
		//connect(path_generate_, SIGNAL(moveToPose_signal(geometry_msgs::Pose)),path_generate_,SLOT(moveToPose(geometry_msgs::Pose)));
		connect(path_generate_, SIGNAL(wayPointOutOfIK(int,int)),this,SLOT(wayPointOutOfIK_slot(int,int)));
		connect(path_generate_, SIGNAL(cartesianPathExecuteStarted()),widget_,SLOT(cartesianPathStartedHandler()));
		connect(path_generate_, SIGNAL(cartesianPathExecuteFinished()),widget_,SLOT(cartesianPathFinishedHandler()));
		connect(path_generate_, SIGNAL(cartesianPathCompleted(double)),widget_,SLOT(cartPathCompleted_slot(double )));
		connect(path_generate_, SIGNAL(sendCartPlanGroup(std::vector< std::string >)),widget_,SLOT(getCartPlanGroup(std::vector< std::string >)));

		connect(this,SIGNAL(initRviz()),path_generate_,SLOT(initRvizDone()));

		// With the signal initRviz() we call a function GenerateCartesianPath::initRvizDone() which sets the initial parameters of the MoveIt environment.
		Q_EMIT initRviz();

		//addition connect the cartesian Path parameters
		connect(widget_,SIGNAL(setCartesianImpedanceParamsUI_signal(cartesian_impedance_msgs::SetCartesianImpedancePtr)),set_cart_path_params_,SLOT(sendCartImpedanceParams(cartesian_impedance_msgs::SetCartesianImpedancePtr)));
		connect(widget_,SIGNAL(setCartesianFTParamsUI_signal(cartesian_impedance_msgs::SetCartesianForceCtrlPtr)),set_cart_ft_params_,SLOT(sendCartFTParams(cartesian_impedance_msgs::SetCartesianForceCtrlPtr)));

		ROS_INFO("ready.");
	}

	void AddWayPoint::load(const rviz::Config& config)
	{
		/**
		 * @brief Setting up the configurations for the Panel of the RViz environment.
		 **/
		rviz::Panel::load(config);
		QString text_entry;

		ROS_INFO_STREAM("rviz: Initializing the user interaction planning panel");
		if(config.mapGetString("TextEntry",&text_entry)) {
			ROS_INFO_STREAM("Loaded TextEntry with value: "<<text_entry.toStdString());
		}

		ROS_INFO_STREAM("rviz Initialization Finished reading config file");
	}

	void AddWayPoint::save(rviz::Config config) const
	{
		/// Allowing the user to save the current configuration of the panel
		ROS_DEBUG("AddWayPoint::save");
		rviz::Panel::save(config);
		config.mapSetValue("TextEntry",QString::fromStdString( std::string("test_field")));
	}

	void AddWayPoint::swapWaypoints(const int index1, const int index2) {
		ROS_DEBUG_STREAM("AddWayPoint::swapWaypoints("<<index1<<","<<index2<<")");

		Waypoint tmp = waypoints_[index1] ;
		waypoints_[index1] = waypoints_[index2];
		waypoints_[index2] = tmp ;

		pointPoseUpdatedRViz(waypoints_[index1], index1);
		pointPoseUpdatedRViz(waypoints_[index2], index2);
	}

	void AddWayPoint::addPointFromUI(const Waypoint point_pos) {
		/**
		 * Function for handling the signal of the RQT to add a new Way-Point in the RViz environment.
		 **/

		ROS_DEBUG_STREAM("AddWayPoint::addPointFromUI("<<point_pos.name_<<")");

		waypoints_.push_back(point_pos);
		Q_EMIT addPointRViz(point_pos, count_);
		makeArrow(point_pos,count_);
		count_++;
		server_->applyChanges();
	}

	void AddWayPoint::processFeedback( const visualization_msgs::InteractiveMarkerFeedbackConstPtr &feedback ) {
		/**
		 * This function is one of the most essential ones since it handles the events of the InteractiveMarkers from
		 * the User in the RViz environment.
		 * In this function we have handlers for all the necessary events of the User Interaction with the
		 * InteractiveMarkers.
		 * When the user clicks on the User Interactive Arrow, it acts as button and adds new Way-Point in the RViz
		 * environment.
		 * When the User changes the pose of an InteractiveMarker from the RViz environment the position of the
		 * InteractiveMarker is updated synchronously in the RViz environment and in the RQT Widget.
		 * The Menu handlers take care of the User selected items from the menu of the Way-Point and call the necessary
		 * functions to change their state depending on the item selected from the menu.
		 **/

		ROS_DEBUG_STREAM("AddWayPoint::processFeedback("<<feedback->marker_name<<")");

		switch ( feedback->event_type ) {
			case visualization_msgs::InteractiveMarkerFeedback::BUTTON_CLICK: {
				if (feedback->marker_name == POSE_PREVIEW_MARKER_NAME) {
					// ROS_INFO_STREAM("on click feedback pose is"<<feedback->pose.position.x<<", "<<feedback->pose.position.y<<", "<<feedback->pose.position.z<<";");

					Waypoint point_pos(widget_->generateNewWaypointName());
					tf::poseMsgToTF(feedback->pose, point_pos.pose_);
					addPointFromUI(point_pos);
				}

				break;
			}
			case visualization_msgs::InteractiveMarkerFeedback::POSE_UPDATE: {
				if (feedback->marker_name == POSE_PREVIEW_MARKER_NAME) {
					tf::Transform pose ;
					tf::poseMsgToTF(feedback->pose, pose);

					Q_EMIT previewMarkerPoseUpdated(pose);
				}
				else {
					int index = std::atoi(feedback->marker_name.c_str());

					if (0 <= index && index < count_) {
						Waypoint point_pos(waypoints_[index].name_);
						tf::poseMsgToTF(feedback->pose,point_pos.pose_);

						waypointUpdated(point_pos, index);
						Q_EMIT pointPoseUpdatedRViz(point_pos, index);
					}
					else {
						ROS_WARN_STREAM("Received POSE_UPDATE feedback from invalid marker: "<<feedback->marker_name);
					}
				}

				break;
			}
			case visualization_msgs::InteractiveMarkerFeedback::MENU_SELECT: {
				int index = std::atoi(feedback->marker_name.c_str());

				if (0 <= index && index < count_) {
					//get the menu item which is pressed
					interactive_markers::MenuHandler::EntryHandle menu_item = feedback->menu_entry_id;
					interactive_markers::MenuHandler::CheckState state;

					menu_handler_.getCheckState(menu_item,state);

					if(menu_item == 1) {
						pointDeleted(index);
					}
					else {
						if(state == interactive_markers::MenuHandler::UNCHECKED) {
							ROS_INFO("The selected marker is shown with 6DOF control");

							menu_handler_.setCheckState(menu_item, interactive_markers::MenuHandler::CHECKED );
							geometry_msgs::Pose pose;
							changeMarkerControlAndPose(index,true);
						}
						else {
							ROS_INFO("The selected marker is shown as default");

							menu_handler_.setCheckState( menu_item, interactive_markers::MenuHandler::UNCHECKED );
							geometry_msgs::Pose pose;
							changeMarkerControlAndPose(index,false);
						}
					}
				}
				else {
					ROS_WARN_STREAM("Received MENU_SELECT feedback from invalid marker: "<<feedback->marker_name);
				}

				break;
			}
		}
	}

	void AddWayPoint::waypointUpdated(const Waypoint &point_pos, const int index)
	{
		/**
		 * @param point_pos takes the changed position of the InteractiveMarker either from RViz environment or the RQT.
		 *        The vector for storing the Way-Points and the User Interaction Marker are updated according to the
		 *        value of this parameter.
		 * @param marker_name is passed from this function either by taking information of the name of the Marker that
		 *        has its position changed or by the RQT environment.
		 *
		 * Depending on the name of the Marker we either update the pose of the User Interactive Arrow or the Way-Point
		 * that is selected either from the RViz environment or the RQT Widget. In the case of updating a pose of a
		 * Way-Point, the corresponding position of the vector that stores all the poses for the Way-Points is updated
		 * as well.
		 **/

		ROS_DEBUG("AddWayPoint::waypointUpdated");

		geometry_msgs::Pose pose;
		tf::poseTFToMsg(point_pos.pose_, pose);

		ROS_DEBUG_STREAM(
				"Updating waypoint "<<index<<" to "<<"\""<<point_pos.name_<<"\" "
				<<"["<<point_pos.pose_.getOrigin().x()<<", "<<point_pos.pose_.getOrigin().y()<<", "<<point_pos.pose_.getOrigin().z()<<"], "
				<<"["<<point_pos.pose_.getRotation().x()<<", "<<point_pos.pose_.getRotation().y()<<", "<<point_pos.pose_.getRotation().z()<<"], "
		) ;

		waypoints_[index] = point_pos;

		InteractiveMarker interact_marker;
		server_->get(std::to_string(index), interact_marker);
		interact_marker.description = point_pos.name_;
		interact_marker.pose = pose;
		server_->insert( interact_marker);

		Q_EMIT onUpdatePosCheckIkValidity(pose,index);

		server_->applyChanges();
	}

	Marker AddWayPoint::makeWayPoint( InteractiveMarker &msg ) {
		/**
		 * Define a type and properties of a Marker for the Way-Point.
		 * This will be use as a base to define the shape, color and scale of the InteractiveMarker for the Way-Points.
		 **/

		ROS_DEBUG("AddWayPoint::makeWayPoint");

		Marker marker;

		marker.type = marker.type = Marker::MESH_RESOURCE;
		marker.mesh_resource = "package://moveit_cartesian_plan_plugin/meshes/axes.dae";
		marker.scale = WAY_POINT_SCALE_CONTROL_;

		//marker.color = WAY_POINT_COLOR_;
		marker.mesh_use_embedded_materials = true ;
		marker.action = visualization_msgs::Marker::ADD;
		return marker;
	}

	InteractiveMarkerControl& AddWayPoint::makeArrowControlDefault( InteractiveMarker &msg ) {
		ROS_DEBUG("AddWayPoint::makeArrowControlDefault");

		InteractiveMarkerControl control_menu;
		control_menu.always_visible = true;

		control_menu.interaction_mode = InteractiveMarkerControl::MENU;

		control_menu.name = "menu_select";
		msg.controls.push_back( control_menu );
		control_menu.markers.push_back( makeWayPoint(msg) );


		InteractiveMarkerControl control_move3d;
		control_move3d.always_visible = true;

		control_move3d.interaction_mode = InteractiveMarkerControl::MOVE_ROTATE_3D;
		control_move3d.name = "move";
		control_move3d.markers.push_back( makeWayPoint(msg) );
		msg.controls.push_back( control_move3d );

		return msg.controls.back();

	}

	InteractiveMarkerControl& AddWayPoint::makeArrowControlDetails( InteractiveMarker &msg ) {
		ROS_DEBUG("AddWayPoint::makeArrowControlDetails");

		InteractiveMarkerControl control_menu;
		control_menu.always_visible = true;

		control_menu.interaction_mode = InteractiveMarkerControl::MENU;
		control_menu.name = "menu_select";
		msg.controls.push_back( control_menu );
		control_menu.markers.push_back(makeWayPoint(msg));

		InteractiveMarkerControl control_view_details;
		control_view_details.always_visible = true;
		//********************************** rotate and move around the x-axis *****************************************
		control_view_details.orientation.w = 1;
		control_view_details.orientation.x = 1;
		control_view_details.orientation.y = 0;
		control_view_details.orientation.z = 0;

		control_view_details.name = "rotate_x";
		control_view_details.interaction_mode = InteractiveMarkerControl::ROTATE_AXIS;
		msg.controls.push_back( control_view_details );

		control_view_details.name = "move_x";
		control_view_details.interaction_mode = InteractiveMarkerControl::MOVE_AXIS;
		msg.controls.push_back( control_view_details );
		//**************************************************************************************************************

		//********************************** rotate and move around the z-axis *****************************************
		control_view_details.orientation.w = 1;
		control_view_details.orientation.x = 0;
		control_view_details.orientation.y = 1;
		control_view_details.orientation.z = 0;

		control_view_details.name = "rotate_z";
		control_view_details.interaction_mode = InteractiveMarkerControl::ROTATE_AXIS;
		msg.controls.push_back( control_view_details );

		control_view_details.name = "move_z";
		control_view_details.interaction_mode = InteractiveMarkerControl::MOVE_AXIS;
		msg.controls.push_back( control_view_details );
		//**************************************************************************************************************


		//********************************** rotate and move around the y-axis *****************************************
		control_view_details.orientation.w = 1;
		control_view_details.orientation.x = 0;
		control_view_details.orientation.y = 0;
		control_view_details.orientation.z = 1;

		control_view_details.name = "rotate_y";
		control_view_details.interaction_mode = InteractiveMarkerControl::ROTATE_AXIS;

		msg.controls.push_back( control_view_details );


		control_view_details.name = "move_y";
		control_view_details.interaction_mode = InteractiveMarkerControl::MOVE_AXIS;
		msg.controls.push_back( control_view_details );
		control_view_details.markers.push_back( makeWayPoint(msg) );

		msg.controls.push_back( control_view_details );

		//**************************************************************************************************************
		return msg.controls.back();
	}

	void AddWayPoint::makeArrow(const Waypoint& point_pos, const int count_arrow) {
		/**
		 * Function for adding a new Way-Point in the RViz scene and here we send the signal to notify the RQT Widget
		 * that a new Way-Point has been added.
		 */

		ROS_DEBUG("AddWayPoint::makeArrow");

		InteractiveMarker interact_marker;

		ROS_INFO_STREAM("Markers frame is: "<< target_frame_);

		interact_marker.header.frame_id = target_frame_;

		ROS_DEBUG_STREAM("Markers has frame id: "<< interact_marker.header.frame_id);

		interact_marker.scale = INTERACTIVE_MARKER_SCALE_;

		tf::poseTFToMsg(point_pos.pose_,interact_marker.pose);

		std::vector<Waypoint>::iterator it_pos = std::find((waypoints_.begin()),(waypoints_.end()-1),point_pos);

		//**************************************************************************************************************
		ROS_DEBUG_STREAM("end of make arrow, count is:"<<count_<<" positions count: "<<waypoints_.size());
		interact_marker.name = std::to_string(count_arrow);
		interact_marker.description = point_pos.name_ ;

		makeArrowControlDefault(interact_marker);
		server_->insert( interact_marker);
		server_->setCallback( interact_marker.name, boost::bind( &AddWayPoint::processFeedback, this, _1 ));
		menu_handler_.apply(*server_,interact_marker.name);
		//server->applyChanges();
		Q_EMIT onUpdatePosCheckIkValidity(interact_marker.pose, count_arrow);
	}

	void AddWayPoint::waypointPreviewPoseUpdated(const tf::Transform& pose) {
		ROS_DEBUG("AddWayPoint::waypointPreviewPoseUpdated") ;

		geometry_msgs::Pose pose_msg;
		tf::poseTFToMsg(pose, pose_msg);

		InteractiveMarker interact_marker ;

		server_->get(POSE_PREVIEW_MARKER_NAME, interact_marker);
		interact_marker.pose = pose_msg ;
		server_->insert( interact_marker);
		server_->applyChanges();
	}

	void AddWayPoint::changeMarkerControlAndPose(const int index, const bool set_control) {
		/**
		 * Handling the events from the clicked Menu Items for the Control of the Way-Point.
		 * Here the user can change the control either to freely move the Way-Point or get the 6DOF pose control option.
		 **/

		ROS_DEBUG("AddWayPoint::changeMarkerControlAndPose");

		InteractiveMarker interact_marker ;
		server_->get(std::to_string(index), interact_marker);

		if(set_control)
		{
			interact_marker.controls.clear();
			makeArrowControlDetails(interact_marker);
		}
		else if(!set_control)
		{
			interact_marker.controls.clear();
			makeArrowControlDefault(interact_marker);
		}

		server_->insert( interact_marker);
		menu_handler_.apply(*server_,interact_marker.name);
		server_->setCallback( interact_marker.name, boost::bind( &AddWayPoint::processFeedback, this, _1 ));
		Q_EMIT onUpdatePosCheckIkValidity(interact_marker.pose,index);

		server_->applyChanges();

	}

	void AddWayPoint::pointDeleted(int index) {
		/**
		 * The point can be deleted either from the RViz or the RQT Widget
		 * This function handles the event of removing a point from the RViz environment. It finds the name of the
		 * selected marker which the user wants to delete and updates the RViz environment and the vector that contains
		 * all the Way-Points.
		 **/

		ROS_DEBUG_STREAM("AddWayPoint::pointDeleted("<<index<<")");

		for( int i=0;i<waypoints_.size();i++) {
			ROS_INFO_STREAM(
					"vector["<<i<<"] before delete: \n"
							 << "x: " << waypoints_[i].pose_.getOrigin().x() << "; "
							 << "y: " << waypoints_[i].pose_.getOrigin().y() << "; "
							 << "z: " << waypoints_[i].pose_.getOrigin().z() << ";"
			);
		}

		//get the index of the selected marker
		waypoints_.erase(waypoints_.begin()+index);

		for( int i=0;i<waypoints_.size();i++) {
			ROS_INFO_STREAM(
					"vector["<<i<<"] after delete: \n"
							 << "x: " << waypoints_[i].pose_.getOrigin().x() << "; "
							 << "y: " << waypoints_[i].pose_.getOrigin().y() << "; "
							 << "z: " << waypoints_[i].pose_.getOrigin().z() << ";"
			);
		}

		//InteractiveMarker interact_marker;

		ROS_INFO_STREAM("count_: "<<count_);
		for(int i=count_-1; i>=index; i--) {
			std::stringstream s;
			s << i;
			server_->erase(s.str());
			Q_EMIT pointDeleteRviz(i);
		}

		count_--;

		for (int i=index; i<count_; i++) {
			Q_EMIT addPointRViz(waypoints_[i], i);
			makeArrow(waypoints_[i], i);
		}

		server_->applyChanges();
	}

	Marker AddWayPoint::makeInteractiveArrow(InteractiveMarker &msg)
	{
		/**
		 * Define the Marker Arrow which the user can add new Way-Points with.
		 */

		ROS_DEBUG("AddWayPoint::makeInteractiveArrow");

		//define a marker
		Marker marker;

		marker.type = Marker::MESH_RESOURCE;
		marker.mesh_resource = "package://moveit_cartesian_plan_plugin/meshes/axes.dae";
		marker.scale = ARROW_INTER_SCALE_CONTROL_;

		//make the markers with interesting color
		//marker.color = ARROW_INTER_COLOR_;
		marker.mesh_use_embedded_materials = true;

		return marker;
	}

	InteractiveMarkerControl& AddWayPoint::makeInteractiveMarkerControl( InteractiveMarker &msg )
	{
		/**
		 * Set the User Interactive Marker with 6DOF control.
		 **/

		ROS_DEBUG("AddWayPoint::makeInteractiveMarkerControl");

		// //control for button interaction
		InteractiveMarkerControl control_button;
		control_button.always_visible = true;
		control_button.interaction_mode = InteractiveMarkerControl::BUTTON;
		control_button.name = "button_interaction";
		control_button.markers.push_back(makeInteractiveArrow(msg) );

		msg.controls.push_back( control_button );
		//server.reset( new interactive_markers::InteractiveMarkerServer("moveit_cartesian_plan_plugin","",false));
		InteractiveMarkerControl control_inter_arrow;
		control_inter_arrow.always_visible = true;

		//********************************** rotate and move around the x-axis *****************************************
		control_inter_arrow.orientation.w = 1;
		control_inter_arrow.orientation.x = 1;
		control_inter_arrow.orientation.y = 0;
		control_inter_arrow.orientation.z = 0;

		control_inter_arrow.name = "rotate_x";
		control_inter_arrow.interaction_mode = InteractiveMarkerControl::ROTATE_AXIS;
		msg.controls.push_back( control_inter_arrow );

		control_inter_arrow.name = "move_x";
		control_inter_arrow.interaction_mode = InteractiveMarkerControl::MOVE_AXIS;
		msg.controls.push_back( control_inter_arrow );
		//**************************************************************************************************************

		//********************************** rotate and move around the z-axis *****************************************
		control_inter_arrow.orientation.w = 1;
		control_inter_arrow.orientation.x = 0;
		control_inter_arrow.orientation.y = 1;
		control_inter_arrow.orientation.z = 0;

		control_inter_arrow.name = "rotate_z";
		control_inter_arrow.interaction_mode = InteractiveMarkerControl::ROTATE_AXIS;
		msg.controls.push_back( control_inter_arrow );

		control_inter_arrow.name = "move_z";
		control_inter_arrow.interaction_mode = InteractiveMarkerControl::MOVE_AXIS;
		msg.controls.push_back( control_inter_arrow );
		//**************************************************************************************************************

		//********************************** rotate and move around the y-axis *****************************************
		control_inter_arrow.orientation.w = 1;
		control_inter_arrow.orientation.x = 0;
		control_inter_arrow.orientation.y = 0;
		control_inter_arrow.orientation.z = 1;

		control_inter_arrow.name = "rotate_y";
		control_inter_arrow.interaction_mode = InteractiveMarkerControl::ROTATE_AXIS;
		msg.controls.push_back( control_inter_arrow );

		control_inter_arrow.name = "move_y";
		control_inter_arrow.interaction_mode = InteractiveMarkerControl::MOVE_AXIS;
		msg.controls.push_back( control_inter_arrow );
		//**************************************************************************************************************
		control_inter_arrow.markers.push_back(makeInteractiveArrow(msg) );

		return msg.controls.back();
	}

	void AddWayPoint::makeInteractiveMarker()
	{
		/**
		 * Create the User Interactive Marker and update the RViz environment.
		 **/

		ROS_DEBUG("AddWayPoint::makeInteractiveMarker");

		InteractiveMarker inter_arrow_marker_;
		inter_arrow_marker_.header.frame_id = target_frame_;
		inter_arrow_marker_.scale = ARROW_INTERACTIVE_SCALE_;

		ROS_INFO_STREAM_ONCE("Marker Frame is:" << target_frame_);

		geometry_msgs::Pose pose;
		tf::poseTFToMsg(box_pos_,inter_arrow_marker_.pose);

		inter_arrow_marker_.description = "New waypoint pose";

		//button like interactive marker. Detect when we have left click with the mouse and add new arrow then
		inter_arrow_marker_.name = POSE_PREVIEW_MARKER_NAME;

		makeInteractiveMarkerControl(inter_arrow_marker_);
		server_->insert( inter_arrow_marker_);
		//add interaction feedback to the markers
		server_->setCallback( inter_arrow_marker_.name, boost::bind( &AddWayPoint::processFeedback, this, _1 ));
	}

	void AddWayPoint::parseWayPoints()
	{
		/**
		 * Get the vector of all Way-Points and convert it to geometry_msgs::Pose and send Qt signal when ready.
		 **/

		ROS_DEBUG("AddWayPoint::parseWayPoints");

		geometry_msgs::Pose target_pose;
		std::vector<geometry_msgs::Pose> waypoints;

		for(int i=0;i<waypoints_.size();i++) {
			tf::poseTFToMsg (waypoints_[i].pose_, target_pose);
			waypoints.push_back(target_pose);
		}

		Q_EMIT wayPoints_signal(waypoints);
	}

	void AddWayPoint::saveWayPointsToFile()
	{
		/**
		 * Function for saving all the Way-Points into yaml file.
		 * This function opens a Qt Dialog where the user can set the name of the Way-Points file and the location.
		 * Furthermore, it parses the way-points into a format that could be also loaded into the Plugin.
		 **/

		ROS_DEBUG("AddWayPoint::saveWayPointsToFile");

		QString fileName = QFileDialog::getSaveFileName(this, tr("Save Way Points"), ".yaml", tr("Way Points (*.yaml);;All Files (*)"));

		if (fileName.isEmpty()) {
			return;
		}
		else {
			QFile file(fileName);
			if (!file.open(QIODevice::WriteOnly)) {
				QMessageBox::information(this, tr("Unable to open file"),
										 file.errorString());
				file.close();
				return;
			}

			YAML::Emitter out;
			out << YAML::BeginSeq;

			for(int i=0;i<waypoints_.size();i++) {
				out << YAML::BeginMap;
				std::vector <double> points_vec;
				points_vec.push_back(waypoints_[i].pose_.getOrigin().x());
				points_vec.push_back(waypoints_[i].pose_.getOrigin().y());
				points_vec.push_back(waypoints_[i].pose_.getOrigin().z());

				double rx, ry, rz;

				tf::Matrix3x3 m(waypoints_[i].pose_.getRotation());
				m.getRPY(rx, ry, rz,1);
				points_vec.push_back(RAD2DEG(rx));
				points_vec.push_back(RAD2DEG(ry));
				points_vec.push_back(RAD2DEG(rz));

				out << YAML::Key << "name";
				out << YAML::Value << (i+1);
				out << YAML::Key << "point";
				out << YAML::Value << YAML::Flow << points_vec;
				out << YAML::EndMap;
			}


			out << YAML::EndSeq;

			std::ofstream myfile;
			myfile.open (fileName.toStdString().c_str());
			myfile << out.c_str();
			myfile.close();
		}
	}

	void AddWayPoint::clearAllPointsRViz() {
		ROS_DEBUG("AddWayPoint::clearAllPointsRViz");

		waypoints_.clear();
		server_->clear();
		//delete the waypoints_pos vector
		count_ = 0;
		makeInteractiveMarker();
		server_->applyChanges();
	}

	void AddWayPoint::wayPointOutOfIK_slot(int point_number,int out) {
		ROS_DEBUG_STREAM("AddWayPoint::wayPointOutOfIK_slot("<<point_number<<","<<out<<")");

		InteractiveMarker interact_marker;
		visualization_msgs::Marker point_marker;
		std::stringstream marker_name;
		marker_name<<point_number;
		server_->get(marker_name.str(), interact_marker);

		int control_size = interact_marker.controls.size();
		ROS_DEBUG_STREAM("size of controls for marker: "<<control_size);

		if(control_size == 0) {
			return;
		}
		else {
			control_size = control_size-1;
		}

		if(out == 1) {
			//make the marker outside the IK solution with yellow color
			interact_marker.controls.at(control_size).markers.at(0).color = WAY_POINT_COLOR_OUTSIDE_IK_;
		}
		else {
			interact_marker.controls.at(control_size).markers.at(0).color.r = 0 ;
			interact_marker.controls.at(control_size).markers.at(0).color.g = 0 ;
			interact_marker.controls.at(control_size).markers.at(0).color.b = 0 ;
			interact_marker.controls.at(control_size).markers.at(0).color.a = 0 ;

			interact_marker.controls.at(control_size).markers.at(0).mesh_use_embedded_materials = true ;
			//interact_marker.controls.at(control_size).markers.at(0).color = WAY_POINT_COLOR_;
		}

		server_->insert( interact_marker);
	}

	void AddWayPoint::getRobotModelFrame_slot(const std::string robot_model_frame,const tf::Transform end_effector) {
		/**
		 * Set the frame of the all the InteractiveMarkers to correspond to the base of the loaded Robot Model.
		 * This function also initializes the count of the Way-Points and adds the User Interactive Marker to the scene
		 * and the RQT Widget.
		 **/

		ROS_DEBUG("AddWayPoint::getRobotModelFrame_slot");

		target_frame_.assign(robot_model_frame);
		ROS_INFO_STREAM_ONCE("The robot model frame is: " << target_frame_);
		box_pos_ = end_effector;

		clearAllPointsRViz();

		count_ = 0;
		makeInteractiveMarker();
		server_->applyChanges();
	}
}//end of namespace for add_way_point

#include <pluginlib/class_list_macros.h>
PLUGINLIB_EXPORT_CLASS(moveit_cartesian_plan_plugin::AddWayPoint,rviz::Panel )
