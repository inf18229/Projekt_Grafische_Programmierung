package myCar;
import resources.rad;

class rechtsLenken {
	@get
	@set
	rad steering;

	@generated("blockdiagram", "914a115f")
	public void calc() {
		if ((steering - 0.001396[rad]) > -0.2094[rad]) {
			steering = (steering - 0.001396[rad]); // Main/calc 1/if-then 1
		} // Main/calc 1
	}
}