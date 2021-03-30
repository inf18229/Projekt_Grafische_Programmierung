package myCar;
import resources.CarMessages;
import resources.velocity;
import resources.kmh;
import resources.m;
import resources.DriverMessages;

static class Driver
reads CarMessages.v, CarMessages.x
writes CarMessages.power, CarMessages.brake, DriverMessages.emergency {
	characteristic real power = 30.0;
	characteristic velocity v_target = 30.0[kmh];
	Obstacles Obstacles_instance;
	m distance_next_Obstacle;
	characteristic m min_dist_to_obst = 50.0[m];
	Driver_Tempo Driver_Tempo_instance;
	@thread
	@generated("blockdiagram", "e6b4a3f4")
	public void calc() {
		distance_next_Obstacle = Obstacles_instance.distance(CarMessages.x); // Main/calc 1
		if (distance_next_Obstacle < min_dist_to_obst) {
			DriverMessages.emergency = true; // Main/calc 2/if-then 1
		} else {
			DriverMessages.emergency = false; // Main/calc 2/if-else 1
		} // Main/calc 2
		Driver_Tempo_instance.calc(CarMessages.v, v_target); // Main/calc 3
		CarMessages.brake = Driver_Tempo_instance.brake_out; // Main/calc 4
		CarMessages.power = Driver_Tempo_instance.power_out; // Main/calc 5
	}
}