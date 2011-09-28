#include "ICDW_BeepDriver.h"

void AddNextBatchOfBeepsFromCount(void);
void PlaySequenceElement( BeepEventElement_TypeDef Element );

int m_nCurrentPriority = 0; //priority of beep sequence currently in progress
BeepDriverState_TypeDef m_State = BeepDriverState_Waiting; //state of BeepDriver enum
u16 m_nNextTimerEvent = 0; //value Tim2 must reach before next thing happens
int m_nCountNumberRemaining = 0; //value left to count out
BeepDriverPitch_TypeDef m_CountPitch = BeepDriverPitch_Done; //current pitch to count out at
int m_nNextSequencePoz = 0; //current position in beep sequence
BeepEventElement_TypeDef m_BeepEventsArray[MAX_SEQUENCE_ELEMENTS]; //array of BeepSequenceElements structs containing Tim2 times and events

void CountOut( int nNumber, BeepDriverPitch_TypeDef Pitch, int nPriority )
{
	int nSeqIndex;
	u16 nNextEventAt;
	if( nPriority > m_nCurrentPriority )
	{
		m_nCurrentPriority = nPriority;
		m_CountPitch = Pitch;
		if(nNumber == 5)// special case for 5 - we want to count out all five bips, not just one boop
		{
			m_nCountNumberRemaining = 0;
			m_nNextTimerEvent = TIM2_GetCounter();
			nNextEventAt = m_nNextTimerEvent;
			for(nSeqIndex = 0; nSeqIndex < 10; nSeqIndex += 2)
			{ // add 10 elements (bip and space pairs)
				m_BeepEventsArray[nSeqIndex].BeepPitch = m_CountPitch;
				m_BeepEventsArray[nSeqIndex].Tim2ValueForEvent = nNextEventAt;
				nNextEventAt += BeepDriverDuration_Bip;
				m_BeepEventsArray[nSeqIndex + 1].BeepPitch = BeepDriverPitch_Off;
				m_BeepEventsArray[nSeqIndex + 1].Tim2ValueForEvent = nNextEventAt;
				nNextEventAt += BeepDriverDuration_BipSpace;
			}
			//then add a done
			m_BeepEventsArray[nSeqIndex].BeepPitch = BeepDriverPitch_Done;
			m_BeepEventsArray[nSeqIndex].Tim2ValueForEvent = nNextEventAt;
		}
		else // not a 5
		{
			m_nCountNumberRemaining = nNumber;
			AddNextBatchOfBeepsFromCount();
		}
	}
}

void SetBeepSequence(BeepSequenceElement_TypeDef *NewBeepSequenceArray, int nPriority)
{
	int nSeqIndex;
	u16 nNextEventAt;

	if( nPriority > m_nCurrentPriority )
	{
		m_nCurrentPriority = nPriority;
		m_nCountNumberRemaining = 0;
		m_nNextSequencePoz = 0;
		m_nNextTimerEvent = TIM2_GetCounter();
		
		nNextEventAt = m_nNextTimerEvent;
		for(nSeqIndex = 0; nSeqIndex < MAX_SEQUENCE_ELEMENTS - 1 && NewBeepSequenceArray[nSeqIndex].BeepPitch != BeepDriverPitch_Done; nSeqIndex++)
		{
				m_BeepEventsArray[nSeqIndex].BeepPitch = NewBeepSequenceArray[nSeqIndex].BeepPitch;
				m_BeepEventsArray[nSeqIndex].Tim2ValueForEvent = nNextEventAt;
				nNextEventAt += NewBeepSequenceArray[nSeqIndex].BeepDuration;
		}
		//Add a done element to played from array
		m_BeepEventsArray[nSeqIndex].BeepPitch = BeepDriverPitch_Done;
		m_BeepEventsArray[nSeqIndex].Tim2ValueForEvent = nNextEventAt;

	}
}

void Action(void)
{
	if( m_State != BeepDriverState_Waiting && Tim2_HasCountPassed( m_nNextTimerEvent ))
	{
		PlaySequenceElement( m_BeepEventsArray[m_nNextSequencePoz]);
		
		if(m_BeepEventsArray[m_nNextSequencePoz].BeepPitch == BeepDriverPitch_Done)
		{
			 m_State = BeepDriverState_Waiting;
		}
		else
		{
			 m_nNextSequencePoz++;
			 m_nNextTimerEvent = m_BeepEventsArray[m_nNextSequencePoz].Tim2ValueForEvent;
		}
	}
}

void AddNextBatchOfBeepsFromCount(void)
{
	//TODO implement AddNextBatchOFBeepsFromCount
}

void PlaySequenceElement( BeepEventElement_TypeDef Element )
{
	switch(Element.BeepPitch)
	{
		case BeepDriverPitch_Low:
			BEEP_Init(BEEP_FREQUENCY_1KHZ);
			BEEP_Cmd(ENABLE);
			break;

		case BeepDriverPitch_Medium:
			BEEP_Init(BEEP_FREQUENCY_2KHZ);
			BEEP_Cmd(ENABLE);
			break;

		case BeepDriverPitch_High:
			BEEP_Init(BEEP_FREQUENCY_4KHZ);
			BEEP_Cmd(ENABLE);
			break;

		case BeepDriverPitch_Off:
		case BeepDriverPitch_Done:
		default:
			BEEP_Cmd(DISABLE);			
	}
}

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
