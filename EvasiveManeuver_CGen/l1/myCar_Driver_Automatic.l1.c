/********************************************************************************
 * DO NOT EDIT!
 * AUTOMATICALLY GENERATED
 * DESCRIPTION:
 *   L1 protocol specific instance tree creation and initialization
 ********************************************************************************/
#include "myCar_Driver_Automatic.l1.h"
#include "myCar_Driver_Automatic_private.h"
#include "myCar_Driver_Automatic.h"


static MethodList _ObjectMethodList = {
	((void *)0)
};

static MethodList _ClassMethodList = {
	((void *)0)
};

/* for singleton components create an L1 instance here */
static struct L1_myCar_Driver_Automatic_Obj* L1_myCar_Driver_AutomaticInstance = NULL;

/* L1 class descriptor */
static ASDClassHeader L1_myCar_Driver_Automatic_ClassHeader = {
	0, 0, 7, 0, &_ObjectMethodList, &_ClassMethodList
};
L1_myCar_Driver_Automatic_Class L1_myCar_Driver_Automatic_ClassObj = {{1, {&L1_myCar_Driver_Automatic_ClassHeader}, {0}}};



/* public method */
/* Initializes an instance of this L1 component */
struct L1_myCar_Driver_Automatic_Obj* initInstance_L1_myCar_Driver_Automatic(void)
{
	struct L1_myCar_Driver_Automatic_Obj* L1_Instance = NULL;

	/* create L1 object and initialize it */
	CREATE_OBJECT (L1_Instance, L1_myCar_Driver_Automatic);
	L1_Instance->Driver_Tempo_instance = initInstance_L1_myCar_Driver_Tempo_Automatic(&(Driver_Tempo_instance_VAL));
	L1_Instance->c = initInstance_scalarWrapper((uint32)&(c_VAL), sizeof(float32), ASD_PARAMETER);
	L1_Instance->distance_next_Obstacle = initInstance_scalarWrapper((uint32)&(distance_next_Obstacle_VAL), sizeof(float32), ASD_VARIABLE);
	L1_Instance->min_dist_to_obst = initInstance_scalarWrapper((uint32)&(min_dist_to_obst_VAL), sizeof(float32), ASD_PARAMETER);
	L1_Instance->min_dist_to_obstacle = initInstance_scalarWrapper((uint32)&(min_dist_to_obstacle_VAL), sizeof(float32), ASD_VARIABLE);
	L1_Instance->power = initInstance_scalarWrapper((uint32)&(power_VAL), sizeof(float32), ASD_PARAMETER);
	L1_Instance->v_target = initInstance_scalarWrapper((uint32)&(v_target_VAL), sizeof(uint16), ASD_PARAMETER);
	L1_myCar_Driver_AutomaticInstance = L1_Instance;
	return L1_Instance;
}
