#ifndef _ASD_CHARTAB_H_
#define _ASD_CHARTAB_H_


/* definition of characteristic table type: 'CharTable1_real32_128_real32_TYPE' */
struct CharTable1_real32_128_real32_TYPE {
   uint16 xSize;
   float32 xDist [128];
   float32 values [128];
};

/* definition of characteristic table type: 'CharTable1_real32_6_real32_TYPE' */
struct CharTable1_real32_6_real32_TYPE {
   uint16 xSize;
   float32 xDist [6];
   float32 values [6];
};

/* definition of characteristic table type: 'CharTable2_real32_6_real32_6_real32_TYPE' */
struct CharTable2_real32_6_real32_6_real32_TYPE {
   uint16 xSize;
   uint16 ySize;
   float32 xDist [6];
   float32 yDist [6];
   float32 values [6 * 6];
};


/*-----------------------------------------------------------------------------
 *    Service Classes Type Definitions
 *----------------------------------------------------------------------------*/

/* definition of Service Class type: "SystemLib_Math_MathLib::Automatic" */
typedef struct SystemLib_Math_MathLib_Automatic SystemLib_Math_MathLib_Automatic_Type;


#endif /* _ASD_CHARTAB_H_ */
