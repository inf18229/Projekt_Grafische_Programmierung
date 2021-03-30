/********************************************************************************
 * DO NOT EDIT!
 * AUTOMATICALLY GENERATED
 * DESCRIPTION:
 *   implementation of Task0
 ********************************************************************************/
#include "Task0.h"
#include "etasVpOs.h"

/* BEGIN process declarations */
extern void myCar_Driver_Automatic_calc(void);
extern void myCar_myCar_Automatic_calc(void);
/* END process declarations */

/* support for task monitoring */
TASK_MONITOR_DEF(Task0, threadPrio000);

/******************************************************************************
 * BEGIN: DEFINITION OF TASK 'Task0'
 * ----------------------------------------------------------------------------
 * model name:...................................'Task0'
 * memory class:.................................'CODE'
 * priority:.....................................'0'
 * period(ms):...................................'10'
 * scheduling:...................................'FULL'
 * ---------------------------------------------------------------------------*/
TASK(Task0)
{
	START_TASK_HOOK_MON(Task0);
	SIGNAL_GENERATOR_HOOK_Task0
	/* optional support for XCP hooks */
	XCP_STIM_Task0
	/* BEGIN process execution */
	myCar_Driver_Automatic_calc();
	myCar_myCar_Automatic_calc();
	/* END process execution */
	/* optional support for XCP hooks */
	XCP_DAQ_Task0
	END_TASK_HOOK_MON(Task0);
	TerminateTask();
}
/* ----------------------------------------------------------------------------
 * END: DEFINITION OF TASK 'Task0'
 ******************************************************************************/
