package myCar;
import resources.CarMessages;
import resources.velocity;
import resources.kmh;
import resources.m;
import resources.DriverMessages;

static class Driver
reads CarMessages.v, CarMessages.x, CarMessages.y, DriverMessages.automatic_laneChange_right, DriverMessages.automatic_laneChange_left
writes CarMessages.power, CarMessages.brake, DriverMessages.emergency, DriverMessages.v_target, DriverMessages.laneChange_right, DriverMessages.laneChange_left {
	characteristic velocity v_target = 30.0[kmh];
	Obstacles Obstacles_instance;
	m distance_next_Obstacle;
	Driver_Tempo Driver_Tempo_instance;
	m min_dist_to_obstacle;
	characteristic boolean Lane_Change_right = false;
	characteristic boolean Lane_Change_left = false;
	m real_distance_to_next_obst = 100.0[m];
	calcDistance calcDistance_instance;

	@thread
	@generated("blockdiagram", "a61e96c7")
	public void calc() {
		distance_next_Obstacle = Obstacles_instance.distance(CarMessages.x, v_target); // Main/calc 1
		if (min_dist_to_obstacle >= distance_next_Obstacle) {
			DriverMessages.emergency = true; // Main/calc 2/if-then 1
		} else {
			DriverMessages.emergency = false; // Main/calc 2/if-else 1
		} // Main/calc 2
		Driver_Tempo_instance.calc(CarMessages.v, v_target); // Main/calc 3
		CarMessages.brake = Driver_Tempo_instance.brake_out; // Main/calc 4
		CarMessages.power = Driver_Tempo_instance.power_out; // Main/calc 5
		DriverMessages.v_target = v_target; // Main/calc 6
		min_dist_to_obstacle = Obstacles_instance.min_dist_to_obst; // Main/calc 7
		real_distance_to_next_obst = calcDistance_instance.calc(Obstacles_instance.distance(CarMessages.x, v_target), CarMessages.y); // Main/calc 8
		DriverMessages.laneChange_right = (Lane_Change_right || DriverMessages.automatic_laneChange_right); // Main/calc 9
		DriverMessages.laneChange_left = (Lane_Change_left || DriverMessages.automatic_laneChange_left); // Main/calc 10
	}
}