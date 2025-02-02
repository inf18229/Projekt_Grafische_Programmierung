package myCar;
import resources.DriverMessages;
import resources.CarMessages;

static class EvasiveManeuver
reads DriverMessages.emergency, DriverMessages.v_target, DriverMessages.laneChange_left, DriverMessages.laneChange_right
writes CarMessages.steering, CarMessages.SM_left_active, CarMessages.SM_right_active {
	SM_laneChange_left SM_laneChange_left_instance;
	SM_laneChange_right SM_laneChange_right_instance;
	Pre_Condition_Maneuver Pre_Condition_Maneuver_instance;
	@thread
	@generated("blockdiagram", "3cb6121a")
	public void calc() {
		SM_laneChange_left_instance.sM_ausweichenStatemachineTrigger(); // Main/calc 1
		SM_laneChange_right_instance.sM_laneChange_rightStatemachineTrigger(); // Main/calc 2
		if (SM_laneChange_left_instance.active) {
			CarMessages.steering = SM_laneChange_left_instance.steering_out; // Main/calc 3/if-then 1
		} // Main/calc 3
		if (SM_laneChange_right_instance.active) {
			CarMessages.steering = SM_laneChange_right_instance.steering_out; // Main/calc 4/if-then 1
		} // Main/calc 4
		SM_laneChange_right_instance.emergency_msg = Pre_Condition_Maneuver_instance.SM_right_Change_out; // Main/calc 5
		SM_laneChange_left_instance.max_count = Pre_Condition_Maneuver_instance.max_count_out; // Main/calc 6
		SM_laneChange_right_instance.max_count = Pre_Condition_Maneuver_instance.max_count_out; // Main/calc 7
		SM_laneChange_left_instance.emergency_msg = Pre_Condition_Maneuver_instance.SM_left_Change_out; // Main/calc 8
		Pre_Condition_Maneuver_instance.calc(DriverMessages.v_target, DriverMessages.emergency, DriverMessages.laneChange_right, DriverMessages.laneChange_left); // Main/calc 9
		CarMessages.SM_left_active = SM_laneChange_left_instance.active; // Main/calc 10
		CarMessages.SM_right_active = SM_laneChange_right_instance.active; // Main/calc 11
	}
}