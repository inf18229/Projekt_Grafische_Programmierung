package myCar;
import SystemLib.Math.MathLib;
import resources.kmh;
import resources.m;
import resources.s;
import resources.rad;

class MyTurn {
	@get
	m x = 0.0 [m];
	@get
	m y = 0.0 [m];
	@get
	rad bearing = 0.0 [rad];
	characteristic m D = 2.85 [m];
	MathLib Lib;
	rad dpi = 6.28318531 [rad];
	rad pi = 3.141592653 [rad]; 
	
	public void move(rad beta, kmh v, s mydt) {
		bearing = bearing + 1.0[rad]*(v/D)*Lib.tan(beta/1.0[rad])*mydt/3.6;
		if (bearing > pi) {
			bearing = bearing - dpi;
		}
		if (bearing < -pi) {
			bearing = bearing + dpi;
		}
		x = x + v*Lib.cos(bearing/1.0[rad])*mydt;
		y = y + v*Lib.sin(bearing/1.0[rad])*mydt;
	}
	public void reset() {
		bearing = 0.0 [rad];
		x = 0.0[m];
		y = 0.0[m];
	}
}