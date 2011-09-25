/**
  ******************************************************************************
  * @file ICDW_BeepDriver.h
  * @brief This file contains functions to run beep sequences semi asyncronously
  * @author Ivaan
  * @version V0.1
  * @date 06/05/2009
  ******************************************************************************
  */


/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __ICDW_BEEPDRIVER_H
#define __ICDW_BEEPDRIVER_H

/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"
#include "ICDW_Tim2Driver.h"

/* Exported types ------------------------------------------------------------*/
typedef enum
{
	BeepDriverState_Waiting = 0, // not running
	BeepDriverState_Sequencing = 1 // Running
} BeepDriverState_TypeDef;

	
typedef enum
{
	BeepDriverPitch_Off = 0,
	BeepDriverPitch_Low = 1,
	BeepDriverPitch_Medium = 2,
	BeepDriverPitch_High = 3,
	BeepDriverPitch_Done = 4,
} BeepDriverPitch_TypeDef = 5;

typedef enum
{
	BeepDriverDuration_BipSpace = 122, // 1/16 sec
	BeepDriverDuration_Bip = 366, // 3/16 sec
	BeepDriverDuration_BeepSpace = 244,// 1/8 sec
	BeepDriverDuration_Beep  = 732,// 3/8 sec
	BeepDriverDuration_BoopSpace  = 488,// 1/4 sec
	BeepDriverDuration_Boop = 1465// 3/4 sec
}BeepDriverDuration_TypeDef;	 

typedef struct
{
	BeepDriverDuration_TypeDef BeepDuration;
	BeepDriverPitch_TypeDef BeepPitch;
}BeepSequenceElement_TypeDef;
	
typedef struct
{
	u16 Tim2ValueForEvent;
	BeepDriverPitch_TypeDef BeepPitch;
}BeepEventElement_TypeDef;

/* Exported constants --------------------------------------------------------*/
#define MAX_SEQUENCE_ELEMENTS ((int)40)

/* Exported macros -----------------------------------------------------------*/
/* Private macros ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
void SubCounterSounds(void);

void CountOut( int nNumber, BeepDriverPitch_TypeDef Pitch, int nPriority );
void SetBeepSequence(BeepSequenceElement_TypeDef *BeepSequenceArray, int nPriority);
void Action(void);

#endif /* __ICDW_BEEPDRIVER_H */

/******************* (C) COPYRIGHT 2009 STMicroelectronics *****END OF FILE****/
