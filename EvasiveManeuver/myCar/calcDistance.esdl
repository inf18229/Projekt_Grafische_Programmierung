package myCar;
import resources.m;
import SystemLib.Math.MathLib;

class calcDistance {
	MathLib MathLib_instance;

	@generated("blockdiagram", "319dcca1")
	public m calc(m in x, m in y) {
		return(1.0[m] * MathLib_instance.sqrt((((x / 1.0[m]) * (x / 1.0[m])) + ((y / 1.0[m]) * (y / 1.0[m]))))); // Main/calc 1
	}
}