/******************************************************************************
 * DO NOT EDIT!
 * AUTOMATICALLY GENERATED BY:..ASCET-DEVELOPER V7.6.0
 * CODE GENERATOR:..............V7.6.0
 * COMPONENT:...................myCar.Driver
 * REPRESENTATION:..............Automatic
 * DESCRIPTION:
 *    
 ******************************************************************************/


/*-----------------------------------------------------------------------------
 *    Defines
 *----------------------------------------------------------------------------*/

#define __ASD_REQUIRES_OS_INFACE

/*-----------------------------------------------------------------------------
 *    Include files
 *----------------------------------------------------------------------------*/

#include "myCar_Driver_Automatic.h"
#include "resources_CarMessages_Automatic.h"
#include "resources_DriverMessages_Automatic.h"
#include "ESDL_Linear_Interpolation.h"


/******************************************************************************
 * BEGIN: DEFINITION OF SUBSTRUCT VARIABLE 'myCar_Driver_CAL_MEM'
 * ----------------------------------------------------------------------------
 * memory class:.................................'CAL_MEM'
 * model name:...................................'myCar_Driver'
 * data set:.....................................'MYCAR_DRIVER_AUTOMATIC_esdl_Data_Default'
 * ---------------------------------------------------------------------------*/
struct myCar_Driver_Automatic_CAL_MEM_SUBSTRUCT myCar_Driver_CAL_MEM = {
   /* struct element:'myCar_Driver_CAL_MEM.c' (modeled as:'c.myCar_Driver') */
   0.0F,
   /* struct element:'myCar_Driver_CAL_MEM.min_dist_to_obst' (modeled as:'min_dist_to_obst.myCar_Driver') */
   100.0F,
   /* struct element:'myCar_Driver_CAL_MEM.power' (modeled as:'power.myCar_Driver') */
   30.0F,
   /* struct element:'myCar_Driver_CAL_MEM.v_target' (modeled as:'v_target.myCar_Driver') */
   3000U,
   /* substruct: myCar_Driver_CAL_MEM.Driver_Tempo_instance (modeled as:'Driver_Tempo_instance.myCar_Driver') */
   {
      /* struct element:'myCar_Driver_CAL_MEM.Driver_Tempo_instance.power' (modeled as:'power.Driver_Tempo_instance.myCar_Driver') */
      30.0F
   }
};
/* ----------------------------------------------------------------------------
 * END: DEFINITION OF SUBSTRUCT VARIABLE 'myCar_Driver_CAL_MEM'
 ******************************************************************************/

/******************************************************************************
 * BEGIN: DEFINITION OF SUBSTRUCT VARIABLE 'myCar_Driver_RAM'
 * ----------------------------------------------------------------------------
 * memory class:.................................'RAM'
 * model name:...................................'myCar_Driver'
 * data set:.....................................'MYCAR_DRIVER_AUTOMATIC_esdl_Data_Default'
 * ---------------------------------------------------------------------------*/
struct myCar_Driver_Automatic_RAM_SUBSTRUCT myCar_Driver_RAM = {
   /* struct element:'myCar_Driver_RAM.distance_next_Obstacle' (modeled as:'distance_next_Obstacle.myCar_Driver') */
   0.0F,
   /* struct element:'myCar_Driver_RAM.min_dist_to_obstacle' (modeled as:'min_dist_to_obstacle.myCar_Driver') */
   0.0F,
   /* substruct: myCar_Driver_RAM.Driver_Tempo_instance (modeled as:'Driver_Tempo_instance.myCar_Driver') */
   {
      /* struct element:'myCar_Driver_RAM.Driver_Tempo_instance.brake_out' (modeled as:'brake_out.Driver_Tempo_instance.myCar_Driver') */
      0.0F,
      /* struct element:'myCar_Driver_RAM.Driver_Tempo_instance.power_out' (modeled as:'power_out.Driver_Tempo_instance.myCar_Driver') */
      0.0F
   },
   /* struct element:'myCar_Driver_RAM.max_count_line' (modeled as:'max_count_line.myCar_Driver') */
   {
      12U,
      {
         5.0F, 10.0F, 15.0F, 20.0F, 25.0F, 30.0F, 35.0F, 40.0F, 45.0F, 50.0F, 55.0F,
         60.0F
      },
      {
         706.0F, 419.0F, 236.0F, 177.0F, 149.0F, 128.0F, 116.0F, 105.0F, 97.0F, 90.0F,
         84.0F, 80.0F
      }
   }
};
/* ----------------------------------------------------------------------------
 * END: DEFINITION OF SUBSTRUCT VARIABLE 'myCar_Driver_RAM'
 ******************************************************************************/

/******************************************************************************
 * BEGIN: DEFINITION OF COMPONENT VARIABLE 'myCar_Driver'
 * ----------------------------------------------------------------------------
 * memory class:.................................'ROM'
 * model name:...................................'myCar_Driver'
 * data set:.....................................'MYCAR_DRIVER_AUTOMATIC_esdl_Data_Default'
 * ---------------------------------------------------------------------------*/
const struct myCar_Driver_Automatic myCar_Driver = {
   /* substruct: myCar_Driver.Driver_Tempo_instance (modeled as:'Driver_Tempo_instance.myCar_Driver') */
   {
      /* type descriptor pointer 'myCar_Driver_Tempo_Automatic_CAL_MEM' for memory class substruct for 'CAL_MEM' */
      &myCar_Driver_CAL_MEM.Driver_Tempo_instance,
      /* type descriptor pointer 'myCar_Driver_Tempo_Automatic_RAM' for memory class substruct for 'RAM' */
      &myCar_Driver_RAM.Driver_Tempo_instance
   }
};
/* ----------------------------------------------------------------------------
 * END: DEFINITION OF COMPONENT VARIABLE 'myCar_Driver'
 ******************************************************************************/





#define distance_next_Obstacle_VAL (myCar_Driver_RAM.distance_next_Obstacle)
#define Driver_Tempo_instance_REF (&(myCar_Driver.Driver_Tempo_instance))
#define max_count_line_REF (&(myCar_Driver_RAM.max_count_line))
#define min_dist_to_obstacle_VAL (myCar_Driver_RAM.min_dist_to_obstacle)
#define v_target_VAL (myCar_Driver_CAL_MEM.v_target)


/******************************************************************************
 * BEGIN: FUNCTIONS OF COMPONENT
 ******************************************************************************/


/******************************************************************************
 * BEGIN: DEFINITION OF PROCESS 'myCar_Driver_Automatic_calc'
 * ----------------------------------------------------------------------------
 * model name:...................................'calc'
 * memory class:.................................'CODE'
 * ---------------------------------------------------------------------------*/
/* messages used by this process */


void myCar_Driver_Automatic_calc (void)
{
   /* define local message copies */
   float32 resources_CarMessages_brake__myCar_Driver_Automatic_calc;
   float32 resources_CarMessages_power__myCar_Driver_Automatic_calc;
   uint16 resources_CarMessages_v__myCar_Driver_Automatic_calc;
   float32 resources_CarMessages_x__myCar_Driver_Automatic_calc;
   boolean resources_DriverMessages_emergency__myCar_Driver_Automatic_calc;
   uint16 resources_DriverMessages_v_target__myCar_Driver_Automatic_calc;
   /* receive messages implicitly */
   {
      DisableAllInterrupts();
      resources_CarMessages_brake__myCar_Driver_Automatic_calc = resources_CarMessages_brake;
      resources_CarMessages_power__myCar_Driver_Automatic_calc = resources_CarMessages_power;
      resources_CarMessages_v__myCar_Driver_Automatic_calc = resources_CarMessages_v;
      resources_CarMessages_x__myCar_Driver_Automatic_calc = resources_CarMessages_x;
      resources_DriverMessages_emergency__myCar_Driver_Automatic_calc = resources_DriverMessages_emergency;
      resources_DriverMessages_v_target__myCar_Driver_Automatic_calc = resources_DriverMessages_v_target;
      EnableAllInterrupts();
   }
   distance_next_Obstacle_VAL
      = myCar_Obstacles_Automatic_distance(resources_CarMessages_x__myCar_Driver_Automatic_calc);
   resources_DriverMessages_emergency__myCar_Driver_Automatic_calc = distance_next_Obstacle_VAL < min_dist_to_obstacle_VAL;
   myCar_Driver_Tempo_Automatic_calc(Driver_Tempo_instance_REF, resources_CarMessages_v__myCar_Driver_Automatic_calc, v_target_VAL);
   resources_CarMessages_brake__myCar_Driver_Automatic_calc = myCar_Driver_RAM.Driver_Tempo_instance.brake_out;
   resources_CarMessages_power__myCar_Driver_Automatic_calc = myCar_Driver_RAM.Driver_Tempo_instance.power_out;
   resources_DriverMessages_v_target__myCar_Driver_Automatic_calc = v_target_VAL;
   min_dist_to_obstacle_VAL
      = ESDL_Linear_CharTable1_getAt_r32r32((max_count_line_REF)->xSize, (max_count_line_REF)->xDist, (max_count_line_REF)->values, (float32)v_target_VAL * 0.01F) * (float32)v_target_VAL * 1.22222222222222e-4F;
   /* send messages implicitly */
   {
      DisableAllInterrupts();
      resources_CarMessages_brake = resources_CarMessages_brake__myCar_Driver_Automatic_calc;
      resources_CarMessages_power = resources_CarMessages_power__myCar_Driver_Automatic_calc;
      resources_DriverMessages_emergency = resources_DriverMessages_emergency__myCar_Driver_Automatic_calc;
      resources_DriverMessages_v_target = resources_DriverMessages_v_target__myCar_Driver_Automatic_calc;
      EnableAllInterrupts();
   }
}
/* ----------------------------------------------------------------------------
 * END: DEFINITION OF PROCESS 'myCar_Driver_Automatic_calc'
 ******************************************************************************/



/* ****************************************************************************
 * END: FUNCTIONS OF COMPONENT
 ******************************************************************************/



