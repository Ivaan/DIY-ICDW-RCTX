#include "stm8s.h"
#include "stm8s_it.h"

s16 brightness_direction = +1; // Start by getting brighter.

void TIM1_UPD_OVF_TRG_BRK_IRQHandler(void) {
  // Get the current brightness.
    u16 current_brightness = TIM3_GetCapture2();
    
    // Check whether we've hit the maximum/minimum brightness yet.
    if (brightness_direction > 0) {
        // We're currently getting brighter.
        if (current_brightness == 1000) {
            // We're already at the maximum brightness; start getting darker.
            brightness_direction = -1;
        }
    } else {
        // We're currently getting dimmer.
        if (current_brightness == 0) {
            // We're already at the minimum brightness; start getting brighter.
            brightness_direction = +2;
        }
    }
    
    // Update the brightness of the LED according to the brightness "direction".
    TIM3_SetCompare2(current_brightness + brightness_direction);
    
    // Clear the interrupt pending bit for TIM1.
    TIM1_ClearITPendingBit(TIM1_IT_UPDATE);
}
