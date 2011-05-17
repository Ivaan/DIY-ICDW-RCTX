/* MAIN.C file
 * 
 * Copyright (c) 2002-2005 STMicroelectronics
 */
#include "stm8s.h"
// Short delay loop.


main(){
// Reset ("de-initialise") TIM3.
    TIM3_DeInit();
    // Set TIM3 to use a prescaler of 1 and have a period of 999.
    TIM3_TimeBaseInit(TIM3_PRESCALER_1, 999);    
    // Initialise output channel 2 of TIM3.
    TIM3_OC2Init(TIM3_OCMODE_PWM1, TIM3_OUTPUTSTATE_ENABLE, 0, TIM3_OCPOLARITY_LOW);    
    // Enable TIM3.
    TIM3_Cmd(ENABLE);
    
    // Reset ("de-initialise") TIM1.
    TIM1_DeInit();
    // Set TIM1 to:
    // - use an exact prescaler of 1000,
    // - to count up,
    // - to have a period of 1, and
    // - to have a repetition counter of 0.
    TIM1_TimeBaseInit(1000, TIM1_COUNTERMODE_UP, 1, 0);
    // Set TIM1 to generate interrupts every time the counter overflows (every ms).
    TIM1_ITConfig(TIM1_IT_UPDATE, ENABLE);
    // Enable TIM1.
    TIM1_Cmd(ENABLE);
    
    // Enable interrupts (no, really).
    enableInterrupts();

    // Infinite loop.
    for(;;);
}