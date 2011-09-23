#include "ICDW_Tim2Driver.h"

void InitializeTim2(void)
{
	TIM2_DeInit();
	TIM2_TimeBaseInit(TIM2_PRESCALER_8192, (u16)0xFFFF); //1.953125 khz
	//TIM2_ITConfig(TIM2_IT_UPDATE, ENABLE);
	TIM2_Cmd(ENABLE);
}

u16 GetCountForEventIn( u16 nCounts ) // returns the u16 value Tim2 will be in nCounts ticks
{
	return TIM2_GetCounter() + nCounts;//works if Max Tim2 is 0xFFFF
}
bool Tim2_HasCountPassed( u16 nEventCounts )// returns true if Event Timer has expired
{
	return (TIM2_GetCounter() - nEventCounts) < HALF_MAX_TIM2_VALUE;
}