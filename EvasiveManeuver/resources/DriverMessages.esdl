package resources;
import resources.velocity;
import resources.m;

data interface DriverMessages {
	real power = 0.0;
	real brake = 0.0;
	boolean on = false;
	real deviation = 0.0;
	boolean emergency = false;
	velocity v_target = 0.0[kmh];
	boolean laneChange_right = false;
	boolean automatic_laneChange_right = false;
	boolean laneChange_left = false;
	boolean automatic_laneChange_left = false;
	m real_distance_to_next_obst = 250.0[m];
}