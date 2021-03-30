#ifndef ESDL_L1_MYCAR_DRIVER_AUTOMATIC
#define ESDL_L1_MYCAR_DRIVER_AUTOMATIC
/********************************************************************************
 * DO NOT EDIT!
 * AUTOMATICALLY GENERATED
 * DESCRIPTION:
 *   Defines API to initialize L1 instance tree
 ********************************************************************************/
#include "a_basdef.h"
#include "myCar_Driver_Automatic.h"
#include "myCar_Driver_Tempo_Automatic.l1.h"

/* local variables object structure */
struct L1_myCar_Driver_Automatic_Obj {
	ASDObjectHeader objectHeader;
	struct L1_myCar_Driver_Tempo_Automatic_Obj* Driver_Tempo_instance;
	scalarWrapper_Obj* distance_next_Obstacle;
	scalarWrapper_Obj* min_dist_to_obst;
	scalarWrapper_Obj* power;
	scalarWrapper_Obj* v_target;
};

/* static variables object structure */
typedef struct {
	ASDObjectHeader objectHeader;
} L1_myCar_Driver_Automatic_Class;

extern L1_myCar_Driver_Automatic_Class L1_myCar_Driver_Automatic_ClassObj;

/* public L1 init function of this component */
extern struct L1_myCar_Driver_Automatic_Obj* initInstance_L1_myCar_Driver_Automatic(void);

#endif /* ESDL_L1_MYCAR_DRIVER_AUTOMATIC */
