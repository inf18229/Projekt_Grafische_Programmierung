/********************************************************************************
 * DO NOT EDIT!
 * AUTOMATICALLY GENERATED
 * DESCRIPTION:
 *   implementation of ShutdownHook
 ********************************************************************************/

/* BEGIN process declarations */
extern void myCar_myCar_Automatic_reset(void);
/* END process declarations */

/******************************************************************************
 * BEGIN: DEFINITION OF TASK 'ShutdownHook'
 * ----------------------------------------------------------------------------
 * model name:...................................'ShutdownHook'
 * memory class:.................................'CODE'
 * priority:.....................................'-'
 * period(ms):...................................'-'
 * scheduling:...................................'-'
 * ---------------------------------------------------------------------------*/
void ShutdownTask()
{
	/* BEGIN process execution */
	myCar_myCar_Automatic_reset();
	/* END process execution */
}
/* ----------------------------------------------------------------------------
 * END: DEFINITION OF TASK 'ShutdownHook'
 ******************************************************************************/
