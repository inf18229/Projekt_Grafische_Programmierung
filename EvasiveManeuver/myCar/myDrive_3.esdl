package myCar;
import resources.curve_kmh;
import resources.curve_real_a;
import resources.map_real_kmh;
import resources.velocity;
import resources.m;
import resources.s;
import resources.kmh;
import resources.g;
import resources.a;
import resources.deg;
import resources.rad;

class myDrive_3 {
	characteristic curve_real_a BrakeMomentum = {{0.0, 1.0, 40.0, 60.0, 80.0, 100.0}, {0.0 [a], 0.0 [a], -1.0 [a], -2.0 [a], -3.0 [a], -4.0 [a]}};
	characteristic map_real_kmh EngineMomentum[6][6] = {{0.0, 5.0, 20.0, 60.126582278481, 80.0, 100.0}, {0.0[kmh], 30.0[kmh], 60.0[kmh], 90.0[kmh], 150.0[kmh], 200.0[kmh]}, {{0.0[a], 0.0[a], 0.0[a], 0.0[a], 0.0[a], 0.0[a]}, {0.0[a], 0.0[a], 0.0[a], 0.0[a], 0.0[a], 0.0[a]}, {0.849999999999999[a], 0.6000000000000001[a], 0.30000000000000004[a], 0.0[a], 0.0[a], 0.0[a]}, {3.1500000000000004[a], 2.3499999999999988[a], 1.5500000000000012[a], 0.8000000000000009[a], 0.399999999999999[a], 0.0[a]}, {4.5[a], 3.5999999999999996[a], 2.7[a], 1.5[a], 0.8999999999999999[a], 0.0[a]}, {5.0[a], 4.5[a], 3.8000000000000096[a], 2.799999999999999[a], 1.899999999999999[a], 0.0 [a]}}};
	characteristic curve_kmh AirFriction = {{0.0 [kmh], 30.0 [kmh], 60.0 [kmh], 90.0 [kmh], 120.0 [kmh], 150.0 [kmh]} , {0.0 [a], -0.1 [a], -0.2 [a], -0.4 [a], -0.8 [a], -1.6 [a]}};
	m h = 0.0 [m];
	m dh = 0.0 [m];
	m ds = 0.0 [m];
	@get
	a momentum = 0.0 [a];
	@get
	m dist = 0.0 [m];
	@get
	velocity v = 0.0 [kmh];
	MyTurn MyTurn_instance;
	@get
	m x = 0.0 [m];
	@get
	m y = 0.0 [m];
	@get
	deg bearing;

	@generated("blockdiagram", "202c0f46")
	public void move(real in powerCtrl, real in brakeCtrl, s in mydt, g in myg, rad in beta, m in height, m in length) {
		if (dist > length) {
			dist = (dist - length); // Main/move 1/if-then 1
		} // Main/move 1
		momentum = EngineMomentum.getAt(powerCtrl, v); // Main/move 2
		ds = (v * mydt); // Main/move 3
		dist = (ds + dist); // Main/move 4
		dh = (h - height); // Main/move 5
		h = height; // Main/move 6
		v = (((BrakeMomentum.getAt(brakeCtrl) + momentum + AirFriction.getAt(v) + (myg * (dh / ds))) * mydt) + v); // Main/move 7
		MyTurn_instance.move(beta, v, mydt); // Main/move 8
		bearing = MyTurn_instance.bearing; // Main/move 9
		x = MyTurn_instance.x; // Main/move 10
		y = MyTurn_instance.y; // Main/move 11
	}

	@generated("blockdiagram", "711e228a")
	public void reset() {
		h = 0.0[m]; // Main/reset 1
		dist = h; // Main/reset 2
		x = dist; // Main/reset 3
		y = x; // Main/reset 4
		v = 0.0[kmh]; // Main/reset 5
		bearing = 0.0[deg]; // Main/reset 6
		MyTurn_instance.reset(); // Main/reset 7
	}
}