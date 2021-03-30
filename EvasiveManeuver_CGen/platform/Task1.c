/********************************************************************************
 * DO NOT EDIT!
 * AUTOMATICALLY GENERATED
 * DESCRIPTION:
 *   implementation of Task1
 ********************************************************************************/
#include "Task1.h"
#include "etasVpOs.h"


/* support for task monitoring */
TASK_MONITOR_DEF(Task1, threadPrio000);

/******************************************************************************
 * BEGIN: DEFINITION OF TASK 'Task1'
 * ----------------------------------------------------------------------------
 * model name:...................................'Task1'
 * memory class:.................................'CODE'
 * priority:.....................................'0'
 * period(ms):...................................'20000'
 * scheduling:...................................'FULL'
 * ---------------------------------------------------------------------------*/
TASK(Task1)
{
	START_TASK_HOOK_MON(Task1);
	SIGNAL_GENERATOR_HOOK_Task1
	/* optional support for XCP hooks */
	XCP_STIM_Task1
	/* no method calls defined */
	/* optional support for XCP hooks */
	XCP_DAQ_Task1
	END_TASK_HOOK_MON(Task1);
	TerminateTask();
}
/* ----------------------------------------------------------------------------
 * END: DEFINITION OF TASK 'Task1'
 ******************************************************************************/
