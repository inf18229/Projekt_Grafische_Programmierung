package myCar;
import resources.DriverMessages;
import resources.CarMessages;

static class EvasiveManeuver
reads DriverMessages.emergency, CarMessages.y
writes CarMessages.steering {
	ausweichen ausweichen_instance;
	@thread
	@generated("blockdiagram", "3828ff3c")
	public void calc() {
		CarMessages.steering = ausweichen_instance.steering; // Main/calc 1
		ausweichen_instance.steering_out(DriverMessages.emergency, CarMessages.y); // Main/calc 2
	}
}