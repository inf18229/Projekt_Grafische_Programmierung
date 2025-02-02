package myCar.UnitTests;
import assertLib.Assert;
import myCar.linksLenken;
import myCar.rechtsLenken;
import resources.rad;
/*
 * This Unit Test class tests the rechtslenken and linkslenken Block Diagramm
 * Those function will be used in the coresponden State Maschines in Evasive Maneuver
 */
static class UnitTest_Lenken {
	linksLenken uuTL;
	rechtsLenken uuTR;
	/*
	 * if steering is 0 and linksLenken is called
	 * the steering value will be increased by 0.001396 rad
	 * that is the gradient for a 10ms Task to fullfill the requirment
	 * that the gradient steering didn't exceed 8 deg /min
	 */
	@Test
	public void testLeft(){
		uuTL.steering = 0.0 [rad];
		uuTL.calc();
		Assert.assertFloatEqual(uuTL.steering/1.0 [rad], 0.001396);
	}
	
	/*
	 * if steering is 0 and rechtsLenken is called
	 * the steering value will be decreased by 0.001396 rad
	 * that is the gradient for a 10ms Task to fullfill the requirment
	 * that the gradient steering didn't exceed 8 deg /min 
	 */
	@Test
	public void testRight(){
		uuTR.steering = 0.0 [rad];
		uuTR.calc();
		Assert.assertFloatEqual(uuTR.steering/1.0 [rad], -0.001396);
	}
	/*
	 * if steering is grater than the max value (12 deg) than steering
	 * will not be increased
	 */
	@Test
	public void testLeftMax(){
		uuTL.steering = 0.3 [rad];
		uuTL.calc();
		Assert.assertFloatEqual(uuTL.steering/1.0 [rad], 0.3);
	}
	/*
	 * if steering is lower than the lower bound of steering (-12 deg)
	 * than steering will not be decreased
	 */
	@Test
	public void testRightMax(){
		uuTR.steering = -0.3 [rad];
		uuTR.calc();
		Assert.assertFloatEqual(uuTR.steering/1.0 [rad], -0.3);
	}
}
	
