package myCar.UnitTests;
import assertLib.Assert;
import myCar.Obstacles;
import resources.kmh;
import resources.m;

static class UnitTest_Obstacles{
	Obstacles uuT;
	
	@Test
	public void beforeFirstObstacle(){
		real distance = uuT.distance(50.0 [m], 30.0 [kmh])/1.0 [m];
		Assert.assertEqual(distance, 150.0);
	}
	
	@Test
	public void atFirstObstacle(){
		real distance = uuT.distance(200.0 [m], 30.0 [kmh])/1.0 [m];
		Assert.assertEqual(distance, 0.0);
	}
	
	@Test
	public void beforeSecondObstacle(){
		real distance = uuT.distance(250.0 [m], 30.0 [kmh])/1.0 [m];
		Assert.assertEqual(distance, 200.0);
	}
	
	@Test
	public void atSecondObstacle(){
		real distance = uuT.distance(450.0 [m], 30.0 [kmh])/1.0 [m];
		Assert.assertEqual(distance, 0.0);
	}
	
	@Test
	public void beforeThirdObstacle(){
		real distance = uuT.distance(500.0 [m], 30.0 [kmh])/1.0 [m];
		Assert.assertEqual(distance, 200.0);
	}
	
	@Test
	public void atThirdObstacle(){
		real distance = uuT.distance(700.0 [m], 30.0 [kmh])/1.0 [m];
		Assert.assertEqual(distance, 0.0);
	}
	
	@Test
	public void beforeFourthObstacle(){
		real distance = uuT.distance(750.0 [m], 30.0 [kmh])/1.0 [m];
		Assert.assertEqual(distance, 200.0);
	}
	
	@Test
	public void atFourthObstacle(){
		real distance = uuT.distance(950.0 [m], 30.0 [kmh])/1.0 [m];
		Assert.assertEqual(distance, 0.0);
	}
	
	@Test
	public void afterFourthObstacle(){
		real distance = uuT.distance(1000.0 [m], 30.0 [kmh])/1.0 [m];
		Assert.assertEqual(distance, 1000.0);
	}
	
	@Test
	public void testMinDist5(){
		uuT.distance(50.0 [m], 5.0 [kmh]);
		Assert.assertNear(uuT.min_dist_to_obst/1.0 [m], 43.14, 0.01);
	}
	
	@Test
	public void testMinDist30(){
		uuT.distance(50.0 [m], 30.0 [kmh]);
		Assert.assertNear(uuT.min_dist_to_obst/1.0 [m], 46.93, 0.01);
	}
	
	@Test
	public void testMinDist60(){
		uuT.distance(50.0 [m], 60.0 [kmh]);
		Assert.assertNear(uuT.min_dist_to_obst/1.0 [m], 58.66, 0.01);
	}
	
}