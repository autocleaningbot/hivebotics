#include "../include/moveit_cartesian_plan_plugin/waypoint.h"

namespace moveit_cartesian_plan_plugin {
	Waypoint::Waypoint(const std::string& name)
	: name_(name) {
	};

	Waypoint::Waypoint(const std::string& name, const tf::Transform& pose)
	: name_(name),
	  pose_(pose) {

	}

	bool Waypoint::operator ==(const Waypoint &other) const {
		return name_ == other.name_ && pose_ == other.pose_ ;
	}

	Waypoint& Waypoint::operator=(const Waypoint& other) {
		if (&other == this) {
			return *this;
		}

		this->name_ = other.name_ ;
		this->pose_ = other.pose_ ;
	}

	Waypoint::~Waypoint() {
	}
}