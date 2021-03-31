package myCar;
import resources.DriverMessages;
import resources.CarMessages;
import SystemLib.Miscellaneous.EdgeRising;
import SystemLib.Miscellaneous.EdgeFalling;
import resources.curve_max_count;
import resources.kmh;

static class EvasiveManeuver
reads DriverMessages.emergency, CarMessages.y, CarMessages.v, DriverMessages.v_target
writes CarMessages.steering {
	ausweichen ausweichen_instance;
	curve_max_count max_count_line[12] = {{5.0[kmh], 10.0[kmh], 15.0[kmh], 20.0[kmh], 25.0[kmh], 30.0[kmh], 35.0[kmh], 40.0[kmh], 45.0[kmh], 50.0[kmh], 55.0[kmh], 60.0[kmh]}, {706.0, 419.0, 236.0, 177.0, 149.0, 128.0, 116.0, 105.0, 97.0, 90.0, 84.0, 80.0}};
	SM_laneChange_left SM_laneChange_left_instance;
	SM_laneChange_right SM_laneChange_right_instance;
	EdgeRising EdgeRising_instance;
	EdgeFalling EdgeFalling_instance;
	characteristic integer max_count = 150;
	integer v_int;
	real max_count_var;
	@thread
	@generated("blockdiagram", "b328775f")
	public void calc() {
		SM_laneChange_left_instance.sM_ausweichenStatemachineTrigger(); // Main/calc 1
		SM_laneChange_left_instance.emergency_msg = EdgeRising_instance.value(); // Main/calc 2
		SM_laneChange_right_instance.sM_laneChange_rightStatemachineTrigger(); // Main/calc 3
		EdgeRising_instance.compute(DriverMessages.emergency); // Main/calc 4
		EdgeFalling_instance.compute(DriverMessages.emergency); // Main/calc 5
		if (SM_laneChange_left_instance.active) {
			CarMessages.steering = SM_laneChange_left_instance.steering_out; // Main/calc 6/if-then 1
		} // Main/calc 6
		if (SM_laneChange_right_instance.active) {
			CarMessages.steering = SM_laneChange_right_instance.steering_out; // Main/calc 7/if-then 1
		} // Main/calc 7
		SM_laneChange_right_instance.emergency_msg = EdgeFalling_instance.value(); // Main/calc 8
		SM_laneChange_left_instance.max_count = max_count_var; // Main/calc 9
		SM_laneChange_right_instance.max_count = max_count_var; // Main/calc 10
		max_count_var = max_count_line.getAt(DriverMessages.v_target); // Main/calc 11
	}
}