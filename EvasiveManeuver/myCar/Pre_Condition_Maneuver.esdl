package myCar;
import resources.curve_max_count;
import resources.kmh;
import SystemLib.Miscellaneous.EdgeFalling;
import SystemLib.Miscellaneous.EdgeRising;
import resources.velocity;

class Pre_Condition_Maneuver {
	@get
	real max_count_out;
	@get
	boolean SM_left_Change_out;
	@get
	boolean SM_right_Change_out;
	EdgeFalling EdgeFalling_instance;
	curve_max_count max_count_line[12] = {{5.0[kmh], 10.0[kmh], 15.0[kmh], 20.0[kmh], 25.0[kmh], 30.0[kmh], 35.0[kmh], 40.0[kmh], 45.0[kmh], 50.0[kmh], 55.0[kmh], 60.0[kmh]}, {706.0, 419.0, 236.0, 177.0, 149.0, 128.0, 116.0, 105.0, 97.0, 90.0, 84.0, 80.0}};
	EdgeRising EdgeRising_instance;

	@generated("blockdiagram", "c94bfdc1")
	public void calc(velocity in v_target_in, boolean in emergency_in, boolean in lane_change_right_in, boolean in lane_change_left_in) {
		EdgeRising_instance.compute(emergency_in); // Main/calc 1
		EdgeFalling_instance.compute(emergency_in); // Main/calc 2
		SM_right_Change_out = (EdgeFalling_instance.value() || ((!emergency_in) && lane_change_right_in)); // Main/calc 3
		max_count_out = max_count_line.getAt(v_target_in); // Main/calc 4
		SM_left_Change_out = (EdgeRising_instance.value() || ((!emergency_in) && lane_change_left_in)); // Main/calc 5
	}
}