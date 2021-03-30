package myCar;
import resources.CarMessages;
import resources.s;
import resources.a;
import resources.curve_m;
import resources.m;

static class myCar
reads CarMessages.power, CarMessages.brake, CarMessages.steering 
writes CarMessages.v, CarMessages.x, CarMessages.y, CarMessages.bearing {

	myDrive_3 myVehicle;
	s time = 0.0 [s];
	characteristic a g = 0.0[a];
	characteristic curve_m Landscape = {{0.0[m], 100.0[m], 145.569620253165[m], 202.53164556962025[m], 221.51898734177215[m], 240.0[m], 259.49367088607596[m], 300.0[m], 350.0[m], 400.0[m], 450.0[m], 500.0[m], 600.0[m], 700.0[m], 750.0[m], 800.0[m], 810.0[m], 850.0[m], 900.0[m], 1000.0[m], 1100.0[m], 1200.0[m], 1300.0[m], 1400.0[m], 1500.0[m], 1600.0[m], 1700.0[m], 1800.0[m], 1900.0[m], 2000.0[m], 2100.0[m], 2200.0[m], 2300.0[m], 2400.0[m], 2500.0[m], 2600.0[m], 2700.0[m], 2800.0[m], 2900.0[m], 3000.0[m], 3100.0[m], 3200.0[m], 3300.0[m], 3400.0[m], 3500.0[m], 3600.0[m], 3700.0[m], 3800.0[m], 3900.0[m], 4000.0[m], 4100.0[m], 4200.0[m], 4300.0[m], 4400.0[m], 4500.0[m], 4600.0[m], 4700.0[m], 4800.0[m], 4900.0[m], 5000.0[m], 5100.0[m], 5200.0[m], 5300.0[m], 5400.0[m], 5500.0[m], 5600.0[m], 5700.0[m], 5800.0[m], 5900.0[m], 6000.0[m], 6100.0[m], 6200.0[m], 6300.0[m], 6400.0[m], 6500.0[m], 6600.0[m], 6700.0[m], 6800.0[m], 6900.0[m], 7000.0[m], 7100.0[m], 7200.0[m], 7300.0[m], 7400.0[m], 7500.0[m], 7600.0[m], 7700.0[m], 7800.0[m], 7900.0[m], 8000.0[m], 8100.0[m], 8200.0[m], 8300.0[m], 8400.0[m], 8500.0[m], 8600.0[m], 8700.0[m], 8800.0[m], 8900.0[m], 9000.0[m], 9100.0[m], 9200.0[m], 9300.0[m], 9400.0[m], 9500.0[m], 9600.0[m], 9700.0[m], 9800.0[m], 9900.0[m], 10.0E3[m], 10100.0[m], 10200.0[m], 10300.0[m], 10400.0[m], 10500.0[m], 10600.0[m], 10700.0[m], 10800.0[m], 10900.0[m], 11000.0[m], 11100.0[m], 11200.0[m], 11300.0[m], 11400.0[m], 11500.0[m], 11600.0[m], 11700.0[m], 11800.0[m]}, {0.0[m], 4.0[m], 7.125[m], 10.375[m], 10.75[m], 10.5[m], 9.0[m], 5.375[m], 2.625[m], 0.625[m], 1.25[m], 0.625[m], 0.0[m], 0.0[m], 1.375[m], 0.75[m], 0.375[m], 0.625[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m], 0.0[m]}};
	characteristic m TrackSize = 0.0[m];

	@thread
	@generated("blockdiagram", "b4a4a251")
	public void calc() {
		CarMessages.v = myVehicle.v; // Main/calc 1
		CarMessages.x = myVehicle.x; // Main/calc 2
		CarMessages.y = myVehicle.y; // Main/calc 3
		time = (TimeBase.deltaT + time); // Main/calc 4
		CarMessages.bearing = myVehicle.bearing; // Main/calc 5
		myVehicle.move(CarMessages.power, CarMessages.brake, TimeBase.deltaT, g, CarMessages.steering, Landscape.getAt(myVehicle.dist), TrackSize); // Main/calc 6
	}
	@thread
	@generated("blockdiagram", "0cb8aabb")
	public void reset() {
		myVehicle.reset(); // Main/reset 1
	}
}