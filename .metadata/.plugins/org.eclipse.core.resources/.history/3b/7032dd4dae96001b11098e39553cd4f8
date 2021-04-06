package myCar;
import resources.m;
import resources.rad;

class ausweichen3 {
	@get
	rad steering = 0.0[rad];

	@generated("blockdiagram", "9735e07e")
	public void calc() {
	}

	@generated("blockdiagram", "7f40ad86")
	public void calc_2(boolean in emerg_msg, m in y) {
		if ((emerg_msg && (y < 0.75[m])) && ((steering + 0.001396[rad]) < 0.05235[rad])) {
			steering = (steering + 0.001396[rad]); // Main/calc_2 1/if-then 1
		} // Main/calc_2 1
		if ((emerg_msg && between(y, 0.75[m], 1.5[m])) && (steering >= 0.0[rad])) {
			steering = (steering - 0.001396[rad]); // Main/calc_2 2/if-then 1
		} // Main/calc_2 2
		if ((emerg_msg && between(y, 1.5[m], 2.25[m])) && ((steering - 0.001396[rad]) >= -0.05235[rad])) {
			steering = (steering - 0.001396[rad]); // Main/calc_2 3/if-then 1
		} // Main/calc_2 3
		if ((emerg_msg && (y >= 2.25[m])) && (steering <= 0.0[rad])) {
			steering = (steering + 0.001396[rad]); // Main/calc_2 4/if-then 1
		} // Main/calc_2 4
	}
}