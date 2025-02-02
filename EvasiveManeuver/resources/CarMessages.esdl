package resources;

data interface CarMessages {
	@a2l_unit_label("km/h")
	velocity v = 0.0 [kmh];
	real power = 0.0;
	real brake = 0.0;
	@a2l_unit_label("rad")
	rad steering = 0.0 [rad];
	@a2l_unit_label("°")
	deg bearing = 0.0 [deg];
	@a2l_unit_label("m")
	m x = 0.0 [m];
	@a2l_unit_label("m")
	m y = 0.0 [m];
	boolean SM_left_active = false;
	boolean SM_right_active = false;
}
