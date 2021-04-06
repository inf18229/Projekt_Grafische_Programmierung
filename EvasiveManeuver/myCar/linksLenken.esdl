package myCar;
import resources.rad;

class linksLenken {
	@get
	@set
	rad steering;

	@generated("blockdiagram", "114e4f2a")
	public void calc() {
		if ((steering + 0.001396[rad]) < 0.2094[rad]) {
			steering = (steering + 0.001396[rad]); // Main/calc 1/if-then 1
		} // Main/calc 1
	}
}