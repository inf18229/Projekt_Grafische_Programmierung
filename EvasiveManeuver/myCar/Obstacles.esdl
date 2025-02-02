package myCar;
import resources.m;
import resources.curve_max_count;
import resources.kmh;

import resources.velocity;

class Obstacles {
	@get
	m min_dist_to_obst;
	curve_max_count max_count_line[12] = {{5.0[kmh], 10.0[kmh], 15.0[kmh], 20.0[kmh], 25.0[kmh], 30.0[kmh], 35.0[kmh], 40.0[kmh], 45.0[kmh], 50.0[kmh], 55.0[kmh], 60.0[kmh]}, {706.0, 419.0, 236.0, 177.0, 149.0, 128.0, 116.0, 105.0, 97.0, 90.0, 84.0, 80.0}};

	@generated("blockdiagram", "c152ed78")
	public m distance(m in x, velocity in v_target_in) {
		min_dist_to_obst = (((max_count_line.getAt(v_target_in) * (((v_target_in / 3.6[kmh]) * 4.0) * 1.1)) * 0.01) * 1.0[m]); // Main/distance 1
		if (x <= 200.0[m]) {
			return(200.0[m] - x); // Main/distance 2/if-then 1
		} // Main/distance 2
		if ((!(x <= 200.0[m])) && (x <= 450.0[m])) {
			return(450.0[m] - x); // Main/distance 3/if-then 1
		} // Main/distance 3
		if ((!(x <= 450.0[m])) && (x <= 700.0[m])) {
			return(700.0[m] - x); // Main/distance 4/if-then 1
		} // Main/distance 4
		if ((!(x <= 700.0[m])) && (x <= 950.0[m])) {
			return(950.0[m] - x); // Main/distance 5/if-then 1
		} else {
			return 1000.0[m]; // Main/distance 5/if-else 1
		} // Main/distance 5
	}
}