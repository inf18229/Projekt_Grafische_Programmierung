package myCar;
import resources.DriverMessages;
import resources.m;
import resources.CarMessages;

static class systemTest 
reads CarMessages.x,
CarMessages.y,
DriverMessages.automatic_laneChange_left,
DriverMessages.automatic_laneChange_right,
CarMessages.SM_left_active, 
CarMessages.SM_right_active,
DriverMessages.real_distance_to_next_obst
writes DriverMessages.automatic_laneChange_left, 
DriverMessages.automatic_laneChange_right{
	
	boolean systemTest_sucess = true;
	boolean systemTest_done = false;
	@thread
	public void calc(){
		if(CarMessages.x < 1100.0[m]){
			if(!between(CarMessages.y,-0.5[m],5.0[m])){
				systemTest_sucess = false;
			}
			if(DriverMessages.real_distance_to_next_obst < (1.5[m]+2.85[m]/2.0)){
				systemTest_sucess = false;
			}
		}
		if(between(CarMessages.x,1100.0[m],1110.0[m])){
			DriverMessages.automatic_laneChange_left = true;
		}
		if(between(CarMessages.x,1200.0[m],1210.0[m]) && DriverMessages.automatic_laneChange_left && !CarMessages.SM_left_active){
			DriverMessages.automatic_laneChange_left = false;
		}
		if(between(CarMessages.x,1220.0[m],1240.0[m])){
			DriverMessages.automatic_laneChange_right = true;
		}
		if(between(CarMessages.x,1300.0[m],1310.0[m]) && DriverMessages.automatic_laneChange_right && !CarMessages.SM_right_active){
			DriverMessages.automatic_laneChange_right = false;
		}
		if(CarMessages.x > 1400.0 [m] && between(CarMessages.y,-1.0 [m],1.0 [m])){
			systemTest_done = true;
		}
		
	}
}