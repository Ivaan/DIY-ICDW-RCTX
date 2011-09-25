/**
  ******************************************************************************
  * @file ICDW_Tim2Driver.h
  * @brief This file contains functions to use the Tim2 timer as an event driver
  * @author Ivaan
  * @version V0.1
  * @date 06/05/2009
  ******************************************************************************
  */


/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __ICDW_TIM2DRIVER_H
#define __ICDW_TIM2DRIVER_H

/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"

/* Exported types ------------------------------------------------------------*/

/* Exported constants --------------------------------------------------------*/
#define MAX_TIM2_VALUE ((u16)0xFFFF) //Max value
#define HALF_MAX_TIM2_VALUE ((u16)0x8000) //half of max value, used to know if event has transpired or not

/* Exported macros -----------------------------------------------------------*/
/* Private macros ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
void InitializeTim2(void);
u16 GetCountForEventIn(u16 nCounts);
bool Tim2_HasCountPassed( u16 nEventCounts );

#endif /* __ICDW_TIM2DRIVER_H */

/******************* (C) COPYRIGHT 2009 STMicroelectronics *****END OF FILE****/
