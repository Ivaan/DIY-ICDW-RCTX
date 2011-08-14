#include "ICDW_BeepDriver.h"

void SubCounterSounds(void)
{
	static u8 isubcount = 0;
	u16 Timer2Count = TIM2_GetCounter();
	if(Timer2Count > 0x100 && Timer2Count < 0x200 && isubcount == 0)
	{
		isubcount = 1;
		// BEEPER 4kHz
		//BEEP_Cmd(DISABLE);
		//Delay(100);
		BEEP_Init(BEEP_FREQUENCY_4KHZ);
		BEEP_Cmd(ENABLE);
	}
	else if(Timer2Count > 0x200 && isubcount == 1)
	{
		isubcount = 2;
		//BEEP_Cmd(DISABLE);
		//Delay(100);
		BEEP_Init(BEEP_FREQUENCY_2KHZ);
		//BEEP_Cmd(ENABLE);
	}
	else if(Timer2Count > 0x300 && isubcount == 2)
	{
		isubcount = 0;
		BEEP_Cmd(DISABLE);
	}
}
