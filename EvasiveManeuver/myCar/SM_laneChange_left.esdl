package myCar;
import resources.rad;

class SM_laneChange_left {
	@set
	private boolean emergency_msg;
	real count;
	linksLenken obj_links;
	rechtsLenken obj_rechts;
	@get
	private rad steering_out;
	@set
	private real max_count;
	@get
	private boolean active;

	@generated("statemachine", "000000")
	public void sM_ausweichenStatemachineTrigger() triggers SM_ausweichenStatemachine;

	@generated("statemachine", "1722c255")
	statemachine SM_ausweichenStatemachine using SM_ausweichenStatemachineStates {
		start idle;

		state idle {
			transition emergency_msg == true to turn_left;
		}

		state turn_left {
			entry {
				count = 0.0;
				obj_links.steering = steering_out;
				active = true;
			}
			static {
				count = count + 1.0;
				obj_links.calc();
				steering_out = obj_links.steering;
			}
			transition count == max_count to straighten_right;
		}

		state straighten_right {
			entry {
				count = 0.0;
				obj_rechts.steering = steering_out;
			}
			static {
				count = count + 1.0;
				if (!between(steering_out, - 0.001[rad], 0.001[rad])) {
					obj_rechts.calc();
				}
				steering_out = obj_rechts.steering;
			}
			transition count == max_count to turn_right;
		}

		state turn_right {
			entry {
				count = 0.0;
				obj_rechts.steering = steering_out;
			}
			static {
				count = count + 1.0;
				obj_rechts.calc();
				steering_out = obj_rechts.steering;
			}
			transition count == max_count to straighten_left;
		}

		state straighten_left {
			entry {
				count = 0.0;
				obj_links.steering = steering_out;
			}
			static {
				count = count + 1.0;
				if (!between(steering_out, - 0.001[rad], 0.001[rad])) {
					obj_links.calc();
				}
				steering_out = obj_links.steering;
			}
			transition count == max_count to Done;
		}

		state Done {
			entry {
				active = false;
			}
			transition emergency_msg == false to idle;
		}
	}
}
@generated("statemachine", "000000")
type SM_ausweichenStatemachineStates is enum {
	idle,
	turn_left,
	straighten_right,
	turn_right,
	straighten_left,
	Done
};