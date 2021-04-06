package myCar.UnitTests;
import assertLib.Assert;
import myCar.Driver_Tempo;
import resources.kmh;

static class UnitTest_DriverTempo{
	Driver_Tempo uuT;
	
	@Test
	public void vtargetGreater(){
		uuT.calc(10.0 [kmh], 15.0[kmh]);
		Assert.assertEqual(uuT.power_out, uuT.power);
		Assert.assertEqual(uuT.brake_out, 0.0);
	}
	
	@Test
	public void vtargetSmaller(){
		uuT.calc(15.0 [kmh], 10.0[kmh]);
		Assert.assertEqual(uuT.power_out, 0.0);
		Assert.assertEqual(uuT.brake_out, uuT.power);
	}
}