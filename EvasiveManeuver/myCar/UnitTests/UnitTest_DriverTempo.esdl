package myCar.UnitTests;
import assertLib.Assert;
import myCar.Driver_Tempo;
import resources.kmh;
/*
 * This Unit Test Class test the class Driver Tempo
 * as a subsystem of Driver.bd
 */
static class UnitTest_DriverTempo{
	Driver_Tempo uuT;
	/*
	 * If v_target is greater then current velocity
	 * power should be set to the power caracteristics
	 * and brake should be 0
	 */
	@Test
	public void vtargetGreater(){
		uuT.calc(10.0 [kmh], 15.0[kmh]);
		Assert.assertEqual(uuT.power_out, uuT.power);
		Assert.assertEqual(uuT.brake_out, 0.0);
	}
	/*
	 * If v_target is smaller then current velocity
	 * brake should be set to power caracterstics
	 * and power is 0
	 */
	@Test
	public void vtargetSmaller(){
		uuT.calc(15.0 [kmh], 10.0[kmh]);
		Assert.assertEqual(uuT.power_out, 0.0);
		Assert.assertEqual(uuT.brake_out, uuT.power);
	}
}