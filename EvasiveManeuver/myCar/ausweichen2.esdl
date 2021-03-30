package myCar;
import resources.m;
import resources.rad;

class ausweichen2 {
	@get
	rad steering = 0.0[rad];
	characteristic real c_2 = 0.5;

	@generated("blockdiagram", "faf07bc0")
	public void calc() {
	}

	@generated("blockdiagram", "c37d7523")
	public void calc_2(boolean in emerg_msg, m in y) {
		if (!emerg_msg) {
			steering = steering; // Main/calc_2 1/if-then 1
		} // Main/calc_2 1
		if (emerg_msg) {
			if ((steering <= (0.2094[rad] * c_2)) && (y <= 3.0[m])) {
				steering = (steering + 0.001396[rad]); // Main/calc_2 2/if-then 1/if-then 1
			} // Main/calc_2 2/if-then 1
			if ((y >= 3.0[m]) && (steering >= (-0.2094[rad] * c_2))) {
				steering = (steering - 0.001396[rad]); // Main/calc_2 2/if-then 2/if-then 1
			} // Main/calc_2 2/if-then 2
		} // Main/calc_2 2
	}
}