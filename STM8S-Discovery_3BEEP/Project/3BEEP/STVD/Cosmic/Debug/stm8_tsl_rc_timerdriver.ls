   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  52                     	bsct
  53  0000               _TSL_Tick_Base:
  54  0000 00            	dc.b	0
  55  0001               _TSL_Tick_10ms:
  56  0001 00            	dc.b	0
  57  0002               _TSL_Tick_100ms:
  58  0002 00            	dc.b	0
  59  0003               _TSL_TickCount_ECS_10ms:
  60  0003 00            	dc.b	0
  61  0004               _TSL_Tick_User:
  62  0004 00            	dc.b	0
  97                     ; 58 void TSL_Timer_Init(void)
  97                     ; 59 {
  99                     	switch	.text
 100  0000               _TSL_Timer_Init:
 104                     ; 61   TSL_Tick_100ms = 0;
 106  0000 3f02          	clr	_TSL_Tick_100ms
 107                     ; 62   TSL_Tick_10ms = 0;
 109  0002 3f01          	clr	_TSL_Tick_10ms
 110                     ; 63   TSL_Tick_Base = 0;
 112  0004 3f00          	clr	_TSL_Tick_Base
 113                     ; 64   TSL_TickCount_ECS_10ms = 0;
 115  0006 3f03          	clr	_TSL_TickCount_ECS_10ms
 116                     ; 65   TSL_Tick_Flags.whole = 0;
 118  0008 3f00          	clr	_TSL_Tick_Flags
 119                     ; 67   TIMTICK->SR1 = 0;       // clear overflow flag
 121  000a 725f5342      	clr	21314
 122                     ; 69   if ( CLK->CKDIVR == 0x00 ) // Max CPU freq = 16 MHz
 124  000e 725d50c6      	tnz	20678
 125  0012 2606          	jrne	L53
 126                     ; 71     TIMTICK->PSCR = 6;     // Prescaler to divide Fcpu by 64: 4 us clock.
 128  0014 35065345      	mov	21317,#6
 130  0018 2004          	jra	L73
 131  001a               L53:
 132                     ; 75     TIMTICK->PSCR = 7;     // Prescaler to divide Fcpu by 128: x.xx us clock.
 134  001a 35075345      	mov	21317,#7
 135  001e               L73:
 136                     ; 78   TIMTICK->ARR = 124;      // 125 * 4 us = 500 us.
 138  001e 357c5346      	mov	21318,#124
 139                     ; 79   TIMTICK->IER = 0x01;     // Enable interrupt
 141  0022 35015341      	mov	21313,#1
 142                     ; 80   TIMTICK->CR1 = 0x01;     // Start timer
 144  0026 35015340      	mov	21312,#1
 145                     ; 82 }
 148  002a 81            	ret	
 174                     ; 95 void TSL_Timer_Check_1sec_Tick(void)
 174                     ; 96 {
 175                     	switch	.text
 176  002b               _TSL_Timer_Check_1sec_Tick:
 180                     ; 97   if ( TSL_Tick_100ms >= 10 )
 182  002b b602          	ld	a,_TSL_Tick_100ms
 183  002d a00a          	sub	a,#10
 184  002f 2506          	jrult	L15
 185                     ; 99     TSL_Tick_100ms -= 10;
 187  0031 b702          	ld	_TSL_Tick_100ms,a
 188                     ; 100     TSL_Tick_Flags.b.DTO_1sec = 1;  // Tick Flag for Max On Duration set every second.
 190  0033 72100000      	bset	_TSL_Tick_Flags,#0
 191  0037               L15:
 192                     ; 102 }
 195  0037 81            	ret	
 222                     ; 115 void TSL_Timer_Check_100ms_Tick(void)
 222                     ; 116 {
 223                     	switch	.text
 224  0038               _TSL_Timer_Check_100ms_Tick:
 228                     ; 117   if ( TSL_Tick_10ms >= 10 )
 230  0038 b601          	ld	a,_TSL_Tick_10ms
 231  003a a00a          	sub	a,#10
 232  003c 2506          	jrult	L36
 233                     ; 119     TSL_Tick_10ms -= 10;
 235  003e b701          	ld	_TSL_Tick_10ms,a
 236                     ; 120     TSL_Tick_100ms++;
 238  0040 3c02          	inc	_TSL_Tick_100ms
 239                     ; 121     TSL_Timer_Check_1sec_Tick();
 241  0042 ade7          	call	_TSL_Timer_Check_1sec_Tick
 243  0044               L36:
 244                     ; 123 }
 247  0044 81            	ret	
 275                     ; 136 void TSL_Timer_Check_10ms_Tick(void)
 275                     ; 137 {
 276                     	switch	.text
 277  0045               _TSL_Timer_Check_10ms_Tick:
 281                     ; 138   if ( TSL_Tick_Base >= TICK_FACTOR_10MS )
 283  0045 b600          	ld	a,_TSL_Tick_Base
 284  0047 a014          	sub	a,#20
 285  0049 2508          	jrult	L57
 286                     ; 140     TSL_Tick_Base -= TICK_FACTOR_10MS;
 288  004b b700          	ld	_TSL_Tick_Base,a
 289                     ; 141     TSL_Tick_10ms++;
 291  004d 3c01          	inc	_TSL_Tick_10ms
 292                     ; 142     TSL_TickCount_ECS_10ms++;   // Tick Flag for Drift increment every 10 ms.
 294  004f 3c03          	inc	_TSL_TickCount_ECS_10ms
 295                     ; 143     TSL_Timer_Check_100ms_Tick();
 297  0051 ade5          	call	_TSL_Timer_Check_100ms_Tick
 299  0053               L57:
 300                     ; 145 }
 303  0053 81            	ret	
 330                     ; 159 @interrupt void TSL_Timer_ISR(void)
 330                     ; 160 {
 331                     	switch	.text
 332  0054               _TSL_Timer_ISR:
 334  0054 3b0002        	push	c_x+2
 335  0057 be00          	ldw	x,c_x
 336  0059 89            	pushw	x
 337  005a 3b0002        	push	c_y+2
 338  005d be00          	ldw	x,c_y
 341                     ; 162   TIMTICK->SR1 = 0;      // clear overflow flag
 343  005f 725f5342      	clr	21314
 344  0063 89            	pushw	x
 345                     ; 164   TSL_Tick_Base++;
 347  0064 3c00          	inc	_TSL_Tick_Base
 348                     ; 165   TSL_Timer_Check_10ms_Tick();
 350  0066 addd          	call	_TSL_Timer_Check_10ms_Tick
 352                     ; 167   if (TSL_Tick_Flags.b.User_Start_100ms) /* Application request */
 354  0068 720300000c    	btjf	_TSL_Tick_Flags,#1,L701
 355                     ; 169     TSL_Tick_Flags.b.User_Start_100ms = 0;
 357  006d 72130000      	bres	_TSL_Tick_Flags,#1
 358                     ; 170     TSL_Tick_Flags.b.User_Flag_100ms = 0;
 360  0071 72150000      	bres	_TSL_Tick_Flags,#2
 361                     ; 171     TSL_Tick_User = (TICK_FACTOR_10MS * 10);
 363  0075 35c80004      	mov	_TSL_Tick_User,#200
 364  0079               L701:
 365                     ; 174   if (TSL_Tick_User > 0)
 367  0079 b604          	ld	a,_TSL_Tick_User
 368  007b 2708          	jreq	L111
 369                     ; 176     TSL_Tick_User--;
 371  007d 3a04          	dec	_TSL_Tick_User
 372                     ; 177     if (TSL_Tick_User == 0)
 374  007f 2604          	jrne	L111
 375                     ; 179       TSL_Tick_Flags.b.User_Flag_100ms = 1; /* Give information to Application */
 377  0081 72140000      	bset	_TSL_Tick_Flags,#2
 378  0085               L111:
 379                     ; 183 }
 382  0085 85            	popw	x
 383  0086 bf00          	ldw	c_y,x
 384  0088 320002        	pop	c_y+2
 385  008b 85            	popw	x
 386  008c bf00          	ldw	c_x,x
 387  008e 320002        	pop	c_x+2
 388  0091 80            	iret	
 426                     ; 196 void TSL_Timer_Adjust(u16 Delay)
 426                     ; 197 {
 427                     	switch	.text
 428  0092               _TSL_Timer_Adjust:
 430  0092 89            	pushw	x
 431       00000000      OFST:	set	0
 434                     ; 199   disableInterrupts();
 437  0093 9b            	sim	
 439  0094 1e01          	ldw	x,(OFST+1,sp)
 440  0096               L331:
 441                     ; 203     if (Delay > TICK_FACTOR_10MS) /* delay > 10ms */
 443  0096 a30015        	cpw	x,#21
 444  0099 250b          	jrult	L141
 445                     ; 205       TSL_Tick_Base += TICK_FACTOR_10MS;
 447  009b b600          	ld	a,_TSL_Tick_Base
 448  009d ab14          	add	a,#20
 449  009f b700          	ld	_TSL_Tick_Base,a
 450                     ; 206       Delay -= TICK_FACTOR_10MS;
 452  00a1 1d0014        	subw	x,#20
 453                     ; 207       TSL_Timer_Check_10ms_Tick();
 456  00a4 2003          	jra	L531
 457  00a6               L141:
 458                     ; 211       TSL_Tick_Base++;
 460  00a6 3c00          	inc	_TSL_Tick_Base
 461                     ; 212       Delay--;
 463  00a8 5a            	decw	x
 464                     ; 213       TSL_Timer_Check_10ms_Tick();
 467  00a9               L531:
 468  00a9 1f01          	ldw	(OFST+1,sp),x
 470  00ab ad98          	call	_TSL_Timer_Check_10ms_Tick
 471                     ; 216   while ( Delay );
 473  00ad 1e01          	ldw	x,(OFST+1,sp)
 474  00af 26e5          	jrne	L331
 475                     ; 218   enableInterrupts();
 478  00b1 9a            	rim	
 480                     ; 220 }
 484  00b2 85            	popw	x
 485  00b3 81            	ret	
 667                     	xdef	_TSL_Tick_User
 668                     	xdef	_TSL_Timer_Check_10ms_Tick
 669                     	xdef	_TSL_Timer_Check_100ms_Tick
 670                     	xdef	_TSL_Timer_Check_1sec_Tick
 671                     	xdef	_TSL_Timer_Adjust
 672                     	xdef	_TSL_Timer_ISR
 673                     	xdef	_TSL_Timer_Init
 674                     	switch	.ubsct
 675  0000               _TSL_Tick_Flags:
 676  0000 00            	ds.b	1
 677                     	xdef	_TSL_Tick_Flags
 678                     	xdef	_TSL_TickCount_ECS_10ms
 679                     	xdef	_TSL_Tick_100ms
 680                     	xdef	_TSL_Tick_10ms
 681                     	xdef	_TSL_Tick_Base
 682                     	xref.b	c_x
 683                     	xref.b	c_y
 703                     	end
