package myCar.UnitTests;
import assertLib.Assert;
import myCar.Pre_Condition_Maneuver;
import resources.kmh;
import resources.m;
/*
 * The Precondition Manuver class is a subfuntion of Evasive Manuver.bd
 * It Prepairs the signals for the statemaschine to make the correct movement
 * depending on the current velocity and if the driver wants to make a emergency avoidance
 * or a lane change
 */
static class UnitTest_PreConditionManeuver{
	Pre_Condition_Maneuver uuT;
	/*
	 * If at 5kmh the max_count Output should be 706
	 * This test the implemented table
	 */
	@Test
	public void testMaxCountLine5(){
		uuT.calc(5.0 [kmh], false, false, false);
		Assert.assertEqual(uuT.max_count_out, 706.0);
	}
	/*
	 * If at 30kmh the max_count Output should be 128
	 * This test the implemented table
	 */
	@Test
	public void testMaxCountLine30(){
		uuT.calc(30.0 [kmh], false, false, false);
		Assert.assertEqual(uuT.max_count_out, 128.0);
	}
	/*
	 * If at 60kmh the max_count Output should be 80
	 * This test the implemented table
	 */
	@Test
	public void testMaxCountLine60(){
		uuT.calc(60.0 [kmh], false, false, false);
		Assert.assertEqual(uuT.max_count_out, 80.0);
	}
	/*
	 * If a rising Edge of emergency is detected 
	 * the left change statemaschine should be activated and change state
	 * and not the right change state maschine
	 */
	@Test
	public void testEmergencyRising(){
		uuT.calc(5.0 [kmh], false, false, false);
		uuT.calc(5.0 [kmh], true, false, false);
		Assert.assertTrue(uuT.SM_left_Change_out && !uuT.SM_right_Change_out);
	}
	/*
	 * if a falling edge of emergency signal is detectet
	 * the right change state maschine should be triggered
	 * and not the left change state maschine
	 */
	@Test
	public void testEmergencyFalling(){
		uuT.calc(5.0 [kmh], true, false, false);
		uuT.calc(5.0 [kmh], false, false, false);
		Assert.assertTrue(uuT.SM_right_Change_out && !uuT.SM_left_Change_out);
	}
	/*
	 * if a left lane change is requested the left change statmaschine should be triggered
	 */
	@Test
	public void testLaneChangeLeft(){
		uuT.calc(5.0 [kmh], false, false, false);
		uuT.calc(5.0 [kmh], false, false, true);
		Assert.assertTrue(uuT.SM_left_Change_out && !uuT.SM_right_Change_out);
	}
	/*
	 * if a right lane change is requestet only the right change state maschine should be triggered
	 */
	@Test
	public void testLaneChangeRight(){
		uuT.calc(5.0 [kmh], false, false, false);
		uuT.calc(5.0 [kmh], false, true, false);
		Assert.assertTrue(uuT.SM_right_Change_out && !uuT.SM_left_Change_out);
	}
	/*
	 * if emergancy is on rising edge and left change is requested the left change state maschine 
	 * should be triggered
	 */
	@Test
	public void testLaneChangeLeftEmergencyRising(){
		uuT.calc(5.0 [kmh], false, false, false);
		uuT.calc(5.0 [kmh], true, false, true);
		Assert.assertTrue(uuT.SM_left_Change_out && !uuT.SM_right_Change_out);
	}
	/*
	 * if emegency is on rising edge an right lane change is requestet
	 * the left change state maschine should be triggered
	 */
	@Test
	public void testLaneChangeRightEmergencyRising(){
		uuT.calc(5.0 [kmh], false, false, false);
		uuT.calc(5.0 [kmh], true, true, false);
		Assert.assertTrue(uuT.SM_left_Change_out && !uuT.SM_right_Change_out);
	}
	
	// commented out because case is handled by state machine logic
	//@Test
	//public void testLaneChangeLeftEmergencyFalling(){
	//	uuT.calc(5.0 [kmh], true, false, false);
	//	uuT.calc(5.0 [kmh], false, false, true);
	//	Assert.assertTrue(uuT.SM_right_Change_out && !uuT.SM_left_Change_out);
	//}
	
	/*
	 * if emegancy is on a falling edge and right lane change is requested
	 * the right change state maschine should be triggered
	 */
	@Test
	public void testLaneChangeRightEmergencyFalling(){
		uuT.calc(5.0 [kmh], true, false, false);
		uuT.calc(5.0 [kmh], false, true, false);
		Assert.assertTrue(uuT.SM_right_Change_out && !uuT.SM_left_Change_out);
	}
	
}