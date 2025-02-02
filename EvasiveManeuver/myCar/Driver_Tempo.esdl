package myCar;
import resources.velocity;

class Driver_Tempo{
	@get
	characteristic real power = 30.0;
	@get
	real power_out;
	@get
	real brake_out;

	@generated("blockdiagram", "e825fc5c")
	public void calc(velocity in v, velocity in v_target) {
		if (v_target < v) {
			power_out = 0.0; // Main/calc 1/if-then 1
			brake_out = power; // Main/calc 1/if-then 2
		} else {
			brake_out = 0.0; // Main/calc 1/if-else 1
			power_out = power; // Main/calc 1/if-else 2
		} // Main/calc 1
	}
}