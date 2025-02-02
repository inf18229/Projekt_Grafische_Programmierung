package myCar.UnitTests;
import assertLib.Assert;
import myCar.SM_laneChange_left;
import myCar.SM_laneChange_right;
import resources.rad;
/*
 * This Unit Test class thests the functionallity of the State maschines
 * This are subfunctions of evasive manuver.bd
 * The state maschines make a left or right lane change in 5 states
 */
static class UnitTest_SMLaneChange {
	SM_laneChange_left uuTL;
	SM_laneChange_right uuTR;
	/*test a full circle of a left lane change if triggered once
	 * with emergency_msg the active signale should get true
	 * with a max_count = 1 every entry and static method will be executed once
	 * to reache every state 2 triggeres are needed
	 * After reached the done state the active signal will get false
	 */
	@Test
	public void testFullCircleLeft(){
		uuTL.max_count = 1.0;
		uuTL.emergency_msg = true;
		uuTL.sM_ausweichenStatemachineTrigger();
		Assert.assertTrue(uuTL.active); // StateMachine was triggered
		uuTL.sM_ausweichenStatemachineTrigger();
		uuTL.sM_ausweichenStatemachineTrigger();
		uuTL.sM_ausweichenStatemachineTrigger();
		uuTL.sM_ausweichenStatemachineTrigger();
		uuTL.sM_ausweichenStatemachineTrigger();
		uuTL.sM_ausweichenStatemachineTrigger();
		uuTL.sM_ausweichenStatemachineTrigger();
		uuTL.sM_ausweichenStatemachineTrigger();
		Assert.assertFalse(uuTL.active); // StateMachine run one complete circle
	}
	/*test a full circle of a right lane change if triggered once
	 * with emergency_msg the active signale should get true
	 * with a max_count = 1 every entry and static method will be executed once
	 * to reache every state 2 triggeres are needed
	 * After reached the done state the active signal will get false
	 */
	@Test
	public void testFullCircleRight(){
		uuTR.max_count = 1.0;
		uuTR.emergency_msg = true;
		uuTR.sM_laneChange_rightStatemachineTrigger();
		Assert.assertTrue(uuTR.active); // StateMachine was triggered
		uuTR.sM_laneChange_rightStatemachineTrigger();
		uuTR.sM_laneChange_rightStatemachineTrigger();
		uuTR.sM_laneChange_rightStatemachineTrigger();
		uuTR.sM_laneChange_rightStatemachineTrigger();
		uuTR.sM_laneChange_rightStatemachineTrigger();
		uuTR.sM_laneChange_rightStatemachineTrigger();
		uuTR.sM_laneChange_rightStatemachineTrigger();
		uuTR.sM_laneChange_rightStatemachineTrigger();
		Assert.assertFalse(uuTR.active); // StateMachine run one complete circle
	}
	
}
	
