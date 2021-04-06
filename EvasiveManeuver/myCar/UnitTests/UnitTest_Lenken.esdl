package myCar.UnitTests;
import assertLib.Assert;
import myCar.linksLenken;
import myCar.rechtsLenken;
import resources.rad;

static class UnitTest_Lenken {
	linksLenken uuTL;
	rechtsLenken uuTR;
	
	@Test
	public void testLeft(){
		uuTL.steering = 0.0 [rad];
		uuTL.calc();
		Assert.assertFloatEqual(uuTL.steering/1.0 [rad], 0.001396);
	}
	
	@Test
	public void testRight(){
		uuTR.steering = 0.0 [rad];
		uuTR.calc();
		Assert.assertFloatEqual(uuTR.steering/1.0 [rad], -0.001396);
	}
	
	@Test
	public void testLeftMax(){
		uuTL.steering = 0.3 [rad];
		uuTL.calc();
		Assert.assertFloatEqual(uuTL.steering/1.0 [rad], 0.3);
	}
	
	@Test
	public void testRightMax(){
		uuTR.steering = -0.3 [rad];
		uuTR.calc();
		Assert.assertFloatEqual(uuTR.steering/1.0 [rad], -0.3);
	}
}
	
