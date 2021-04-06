#ifndef _ASD_CHARTAB_H_
#define _ASD_CHARTAB_H_


/* definition of characteristic table type: 'CharTable1_real32_12_real32_TYPE' */
struct CharTable1_real32_12_real32_TYPE {
   uint16 xSize;
   float32 xDist [12];
   float32 values [12];
};


/*-----------------------------------------------------------------------------
 *    Service Classes Type Definitions
 *----------------------------------------------------------------------------*/

/* definition of Service Class type: "assertLib_Assert::Impl" */
typedef struct assertLib_Assert_Impl assertLib_Assert_Impl_Type;

/* definition of Service Class type: "coverageLib_CoverageInstrumentation::Automatic" */
typedef struct coverageLib_CoverageInstrumentation_Automatic coverageLib_CoverageInstrumentation_Automatic_Type;


#endif /* _ASD_CHARTAB_H_ */
