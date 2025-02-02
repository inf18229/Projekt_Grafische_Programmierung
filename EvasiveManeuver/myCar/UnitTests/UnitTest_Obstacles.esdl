package myCar.UnitTests;
import assertLib.Assert;
import myCar.Obstacles;
import resources.kmh;
import resources.m;
/*
 * This Unit Test Class tests the test track with obstacles
 * Obstacles are a subfunction of Driver.bd
 */
static class UnitTest_Obstacles{
	Obstacles uuT;
	/*
	 * If the Driver is on 50m the next Obstacle is 150m away from the driver
	 * This will be tested with speed 30kmh
	 */
	@Test
	public void beforeFirstObstacle(){
		real distance = uuT.distance(50.0 [m], 30.0 [kmh])/1.0 [m];
		Assert.assertEqual(distance, 150.0);
	}
	/*
	 * if reached the first obstacle at 200m the remaining distance
	 * should be 0m
	 */
	@Test
	public void atFirstObstacle(){
		real distance = uuT.distance(200.0 [m], 30.0 [kmh])/1.0 [m];
		Assert.assertEqual(distance, 0.0);
	}
	/*
	 * If the Driver is on 250m the next Obstacle is 200m away from the driver
	 * This will be tested with speed 30kmh
	 */
	@Test
	public void beforeSecondObstacle(){
		real distance = uuT.distance(250.0 [m], 30.0 [kmh])/1.0 [m];
		Assert.assertEqual(distance, 200.0);
	}
	/*
	 * if reached the second obstacle at 450m the remaining distance
	 * should be 0m
	 */
	@Test
	public void atSecondObstacle(){
		real distance = uuT.distance(450.0 [m], 30.0 [kmh])/1.0 [m];
		Assert.assertEqual(distance, 0.0);
	}
	/*
	 * Driver is on x=500 the remaining distance to third obstacle
	 * should be 200m
	 */
	@Test
	public void beforeThirdObstacle(){
		real distance = uuT.distance(500.0 [m], 30.0 [kmh])/1.0 [m];
		Assert.assertEqual(distance, 200.0);
	}
	/*
	 * Driver reached the third obstacle, the remaining distance should be 0
	 */
	@Test
	public void atThirdObstacle(){
		real distance = uuT.distance(700.0 [m], 30.0 [kmh])/1.0 [m];
		Assert.assertEqual(distance, 0.0);
	}
	/*
	 * Driver is on x=750m then the reamining distance to next obstacle should be 200
	 */
	@Test
	public void beforeFourthObstacle(){
		real distance = uuT.distance(750.0 [m], 30.0 [kmh])/1.0 [m];
		Assert.assertEqual(distance, 200.0);
	}
	/*
	 * if reached the last obstacle at x=950m then the remaingn distance should be 0
	 */
	@Test
	public void atFourthObstacle(){
		real distance = uuT.distance(950.0 [m], 30.0 [kmh])/1.0 [m];
		Assert.assertEqual(distance, 0.0);
	}
	/*
	 * after the last obstacle the remaining distance is set to 1000 as default
	 */
	@Test
	public void afterFourthObstacle(){
		real distance = uuT.distance(1000.0 [m], 30.0 [kmh])/1.0 [m];
		Assert.assertEqual(distance, 1000.0);
	}
	/*
	 * at 5kmh the min distance to value is the value the drive should call the emergency signal
	 * to avoid the obstacle. In this case 43.14m
	 */
	@Test
	public void testMinDist5(){
		uuT.distance(50.0 [m], 5.0 [kmh]);
		Assert.assertNear(uuT.min_dist_to_obst/1.0 [m], 43.14, 0.01);
	}
	/*
	 * the min distance to avoid the obstacle at 30kmh should be 45.93m
	 */
	@Test
	public void testMinDist30(){
		uuT.distance(50.0 [m], 30.0 [kmh]);
		Assert.assertNear(uuT.min_dist_to_obst/1.0 [m], 46.93, 0.01);
	}
	/*
	 * the min distance to avoid the obstacle at 60kmh should be 58.66m
	 */
	@Test
	public void testMinDist60(){
		uuT.distance(50.0 [m], 60.0 [kmh]);
		Assert.assertNear(uuT.min_dist_to_obst/1.0 [m], 58.66, 0.01);
	}
	
}