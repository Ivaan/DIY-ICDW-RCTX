   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     	bsct
  16  0000               _brightness_direction:
  17  0000 0001          	dc.w	1
  62                     ; 6 void TIM1_UPD_OVF_TRG_BRK_IRQHandler(void) {
  63                     	switch	.text
  64  0000               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
  66       00000002      OFST:	set	2
  67  0000 3b0002        	push	c_x+2
  68  0003 be00          	ldw	x,c_x
  69  0005 89            	pushw	x
  70  0006 3b0002        	push	c_y+2
  71  0009 be00          	ldw	x,c_y
  72  000b 89            	pushw	x
  73  000c 89            	pushw	x
  76                     ; 8     u16 current_brightness = TIM3_GetCapture2();
  78  000d cd0000        	call	_TIM3_GetCapture2
  80  0010 1f01          	ldw	(OFST-1,sp),x
  81                     ; 11     if (brightness_direction > 0) {
  83  0012 9c            	rvf
  84  0013 be00          	ldw	x,_brightness_direction
  85  0015 2d0e          	jrsle	L72
  86                     ; 13         if (current_brightness == 1000) {
  88  0017 1e01          	ldw	x,(OFST-1,sp)
  89  0019 a303e8        	cpw	x,#1000
  90  001c 2610          	jrne	L33
  91                     ; 15             brightness_direction = -1;
  93  001e aeffff        	ldw	x,#65535
  94  0021 bf00          	ldw	_brightness_direction,x
  95  0023 2009          	jra	L33
  96  0025               L72:
  97                     ; 19         if (current_brightness == 0) {
  99  0025 1e01          	ldw	x,(OFST-1,sp)
 100  0027 2605          	jrne	L33
 101                     ; 21             brightness_direction = +1;
 103  0029 ae0001        	ldw	x,#1
 104  002c bf00          	ldw	_brightness_direction,x
 105  002e               L33:
 106                     ; 26     TIM3_SetCompare2(current_brightness + brightness_direction);
 108  002e be00          	ldw	x,_brightness_direction
 109  0030 72fb01        	addw	x,(OFST-1,sp)
 110  0033 cd0000        	call	_TIM3_SetCompare2
 112                     ; 29     TIM1_ClearITPendingBit(TIM1_IT_UPDATE);
 114  0036 a601          	ld	a,#1
 115  0038 cd0000        	call	_TIM1_ClearITPendingBit
 117                     ; 30 }
 120  003b 5b02          	addw	sp,#2
 121  003d 85            	popw	x
 122  003e bf00          	ldw	c_y,x
 123  0040 320002        	pop	c_y+2
 124  0043 85            	popw	x
 125  0044 bf00          	ldw	c_x,x
 126  0046 320002        	pop	c_x+2
 127  0049 80            	iret
 151                     	xdef	_brightness_direction
 152                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 153                     	xref	_TIM3_GetCapture2
 154                     	xref	_TIM3_SetCompare2
 155                     	xref	_TIM1_ClearITPendingBit
 156                     	xref.b	c_x
 157                     	xref.b	c_y
 176                     	end
