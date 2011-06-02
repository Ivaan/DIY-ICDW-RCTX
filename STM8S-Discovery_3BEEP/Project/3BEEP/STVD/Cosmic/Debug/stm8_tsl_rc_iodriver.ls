   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  52                     .const:	section	.text
  53  0000               _Table_SCKEY_BITS:
  54  0000 02            	dc.b	2
  85                     ; 221 void TSL_IO_SW_Burst_TestSyncShift(void)
  85                     ; 222 {
  87                     .TSL_IO_ALCODE:	section	.text
  88  0000               _TSL_IO_SW_Burst_TestSyncShift:
  92                     ; 225   ld a, _SamplingShifter
  95  0000 b602          	ld	a,_SamplingShifter
  97                     ; 227 ShiftLoopVih:
 100  0002               ShiftLoopVih:
 102                     ; 228   dec a        // 1 cycle
 105  0002 4a            	dec	a//1cycle
 107                     ; 229   jrne ShiftLoopVih
 110  0003 26fd          	jrne	ShiftLoopVih
 112                     ; 232 }
 115  0005 81            	ret	
 139                     ; 248 void TSL_IO_SW_Burst_Wait_Vil(void)
 139                     ; 249 {
 140                     	switch	.TSL_IO_ALCODE
 141  0006               _TSL_IO_SW_Burst_Wait_Vil:
 145                     ; 252   nop
 148  0006 9d            	nop	
 150                     ; 253   ld a, _AcquisitionBitMask
 153  0007 b601          	ld	a,_AcquisitionBitMask
 155                     ; 254   ldw x, _sTouchIO   // Input data register ...
 158  0009 be09          	ldw	x,_sTouchIO//Inputdataregister...
 160                     ; 255   incw x
 163  000b 5c            	incw	x
 165                     ; 257 WaitForVil:
 168  000c               WaitForVil:
 170                     ; 258   bcp a, (x)  // 1 cycles
 173  000c f5            	bcp	a,(x)//1cycles
 175                     ; 259   jreq EndWaitForVil
 178  000d 270a          	jreq	EndWaitForVil
 180                     ; 260   ldw y, _TIMACQ_CNTR // 2 cycles; hw counter also used for timeout ...
 183  000f 90ce5328      	ldw	y,_TIMACQ_CNTR//2cycles
 185                     ; 261   cpw y, #0x0E00    // 2 cycles; Timeout compare
 188  0013 90a30e00      	cpw	y,#0x0E00//2cycles
 190                     ; 262   jrult WaitForVil
 193  0017 25f3          	jrult	WaitForVil
 195                     ; 263 EndWaitForVil:
 198  0019               EndWaitForVil:
 200                     ; 266 }
 203  0019 81            	ret	
 227                     ; 282 void TSL_IO_SW_Burst_Wait_Vih(void)
 227                     ; 283 {
 228                     	switch	.TSL_IO_ALCODE
 229  001a               _TSL_IO_SW_Burst_Wait_Vih:
 233                     ; 286   nop
 236  001a 9d            	nop	
 238                     ; 287   ld a, _AcquisitionBitMask
 241  001b b601          	ld	a,_AcquisitionBitMask
 243                     ; 288   ldw x, _sTouchIO   // Input data register ...
 246  001d be09          	ldw	x,_sTouchIO//Inputdataregister...
 248                     ; 289   incw x
 251  001f 5c            	incw	x
 253                     ; 291 WaitForVih:
 256  0020               WaitForVih:
 258                     ; 292   bcp a, (x)  // 1 cycles
 261  0020 f5            	bcp	a,(x)//1cycles
 263                     ; 293   jrne EndWaitForVih
 266  0021 260a          	jrne	EndWaitForVih
 268                     ; 294   ldw y, _TIMACQ_CNTR // 2 cycles; hw counter also used for timeout ...
 271  0023 90ce5328      	ldw	y,_TIMACQ_CNTR//2cycles
 273                     ; 295   cpw y, #0x0E00    // 2 cycles; Timeout compare
 276  0027 90a30e00      	cpw	y,#0x0E00//2cycles
 278                     ; 296   jrult WaitForVih
 281  002b 25f3          	jrult	WaitForVih
 283                     ; 297 EndWaitForVih:
 286  002d               EndWaitForVih:
 288                     ; 299 }
 291  002d 81            	ret	
 294                     	switch	.ubsct
 295  0000               L55_SpreadCounter:
 296  0000 00            	ds.b	1
 338                     ; 324 void TSL_IO_SW_Spread_Spectrum(void)
 338                     ; 325 {
 339                     	switch	.text
 340  0000               _TSL_IO_SW_Spread_Spectrum:
 342       00000001      OFST:	set	1
 345                     ; 329   SpreadCounter++;
 347  0000 3c00          	inc	L55_SpreadCounter
 348  0002 88            	push	a
 349                     ; 331   if (SpreadCounter == SPREAD_COUNTER_MAX)
 351  0003 b600          	ld	a,L55_SpreadCounter
 352  0005 a114          	cp	a,#20
 353  0007 2603          	jrne	L101
 354                     ; 333     SpreadCounter = SPREAD_COUNTER_MIN;
 356  0009 4f            	clr	a
 357  000a b700          	ld	L55_SpreadCounter,a
 358  000c               L101:
 359                     ; 336   for (i = SpreadCounter; i; i--);
 361  000c 6b01          	ld	(OFST+0,sp),a
 363  000e 2002          	jra	L701
 364  0010               L301:
 368  0010 0a01          	dec	(OFST+0,sp)
 369  0012               L701:
 372  0012 26fc          	jrne	L301
 373                     ; 338 }
 376  0014 84            	pop	a
 377  0015 81            	ret	
 401                     ; 354 void TSL_IO_Init(void)
 401                     ; 355 {
 402                     	switch	.text
 403  0016               _TSL_IO_Init:
 407                     ; 358   ((GPIO_TypeDef *)(LOADREF_PORT_ADDR))->CR1 |= LOADREF_BIT;
 409  0016 7214500d      	bset	20493,#2
 410                     ; 359   ((GPIO_TypeDef *)(LOADREF_PORT_ADDR))->DDR |= LOADREF_BIT;
 412  001a 7214500c      	bset	20492,#2
 413                     ; 360   ((GPIO_TypeDef *)(LOADREF_PORT_ADDR))->ODR &= (u8)(~LOADREF_BIT);
 415  001e 7215500a      	bres	20490,#2
 416                     ; 370   ((GPIO_TypeDef *)(GPIOC_BaseAddress))->CR1 |= GPIOC_ELECTRODES_MASK;
 418  0022 c6500d        	ld	a,20493
 419  0025 aa0a          	or	a,#10
 420  0027 c7500d        	ld	20493,a
 421                     ; 391   TSL_IO_Clamp();
 423  002a ad09          	call	_TSL_IO_Clamp
 425                     ; 394   TIMACQ->PSCR = 0;
 427  002c 725f532a      	clr	21290
 428                     ; 395   TIMACQ->CR1 = 0x01;
 430  0030 35015320      	mov	21280,#1
 431                     ; 397 }
 434  0034 81            	ret	
 457                     ; 410 void TSL_IO_Clamp(void)
 457                     ; 411 {
 458                     	switch	.text
 459  0035               _TSL_IO_Clamp:
 463                     ; 414   ((GPIO_TypeDef *)(LOADREF_PORT_ADDR))->ODR &= (u8)(~LOADREF_BIT);
 465  0035 7215500a      	bres	20490,#2
 466                     ; 426   ((GPIO_TypeDef *)(GPIOC_BaseAddress))->ODR &= (u8)(~GPIOC_ELECTRODES_MASK);
 468  0039 c6500a        	ld	a,20490
 469  003c a4f5          	and	a,#245
 470  003e c7500a        	ld	20490,a
 471                     ; 427   ((GPIO_TypeDef *)(GPIOC_BaseAddress))->DDR |= GPIOC_ELECTRODES_MASK;
 473  0041 c6500c        	ld	a,20492
 474  0044 aa0a          	or	a,#10
 475  0046 c7500c        	ld	20492,a
 476                     ; 454 }
 479  0049 81            	ret	
 503                     ; 467 void TSL_IO_SW_Burst_Start_Timer(void)
 503                     ; 468 {
 504                     	switch	.text
 505  004a               _TSL_IO_SW_Burst_Start_Timer:
 509                     ; 470   TIMACQ->EGR |= 0x01;
 511  004a 72105324      	bset	21284,#0
 512                     ; 472 }
 515  004e 81            	ret	
 539                     ; 485 void TSL_IO_SW_Burst_Stop_Timer(void)
 539                     ; 486 {
 540                     	switch	.text
 541  004f               _TSL_IO_SW_Burst_Stop_Timer:
 545                     ; 489   ld a, _TIMACQ_CNTR
 548  004f c65328        	ld	a,_TIMACQ_CNTR
 550                     ; 490   ld _CounterStop, a
 553  0052 b703          	ld	_CounterStop,a
 555                     ; 491   ld a, _TIMACQ_CNTR + 1
 558  0054 c65329        	ld	a,_TIMACQ_CNTR+1
 560                     ; 492   ld _CounterStop + 1, a
 563  0057 b704          	ld	_CounterStop+1,a
 565                     ; 495 }
 568  0059 81            	ret	
 704                     ; 508 void TSL_IO_Acquisition(u8 AcqNumber, u8 AdjustmentLevel)
 704                     ; 509 {
 705                     	switch	.text
 706  005a               _TSL_IO_Acquisition:
 708  005a 89            	pushw	x
 709  005b 520f          	subw	sp,#15
 710       0000000f      OFST:	set	15
 713                     ; 516   AcquisitionBitMask = sTouchIO.AcqMask;
 715  005d 450b01        	mov	_AcquisitionBitMask,_sTouchIO+2
 716                     ; 518   MinMeasurement = 0;
 718  0060 5f            	clrw	x
 719  0061 1f04          	ldw	(OFST-11,sp),x
 720                     ; 519   MaxMeasurement = 0;
 722  0063 1f02          	ldw	(OFST-13,sp),x
 723                     ; 520   FinalMeasurementValue = 0;
 725  0065 bf07          	ldw	_FinalMeasurementValue+2,x
 726  0067 bf05          	ldw	_FinalMeasurementValue,x
 727                     ; 521   RejectionCounter = 0;
 729  0069 0f08          	clr	(OFST-7,sp)
 730                     ; 526   if (IT_Sync_Flags.one_acquisition_sync_enable)
 732  006b 7201000009    	btjf	_IT_Sync_Flags,#0,L532
 733                     ; 528     IT_Sync_Flags.start = 0;
 735  0070 72170000      	bres	_IT_Sync_Flags,#3
 737  0074               L342:
 738                     ; 529 		while (IT_Sync_Flags.start == 0);
 740  0074 72070000fb    	btjf	_IT_Sync_Flags,#3,L342
 741  0079               L532:
 742                     ; 534   for ( AcqLoopIndex = 0; AcqLoopIndex < AcqNumber; AcqLoopIndex++ )
 744  0079 0f01          	clr	(OFST-14,sp)
 746  007b cc01a3        	jra	L352
 747  007e               L742:
 748                     ; 539 		if (IT_Sync_Flags.one_measure_sync_enable)
 750  007e 7203000009    	btjf	_IT_Sync_Flags,#1,L172
 751                     ; 541       IT_Sync_Flags.start = 0;
 753  0083 72170000      	bres	_IT_Sync_Flags,#3
 755  0087               L562:
 756                     ; 542 			while (IT_Sync_Flags.start == 0);
 758  0087 72070000fb    	btjf	_IT_Sync_Flags,#3,L562
 759  008c               L172:
 760                     ; 549       MeasRejected = 0;
 762  008c 0f09          	clr	(OFST-6,sp)
 763                     ; 550       CumulatedMeasurement = 0;
 765  008e 5f            	clrw	x
 766  008f 1f06          	ldw	(OFST-9,sp),x
 767                     ; 552       for ( SamplingShifter = SAMPLING_SHIFTER_LOOP_START;
 769  0091 35010002      	mov	_SamplingShifter,#1
 770  0095               L772:
 771                     ; 557         disableInterrupts();       
 774  0095 9b            	sim	
 776                     ; 558         sTouchIO.PORT_ADDR->ODR &= (u8)(~sTouchIO.DriveMask);
 779  0096 b60c          	ld	a,_sTouchIO+3
 780  0098 43            	cpl	a
 781  0099 92c409        	and	a,[_sTouchIO.w]
 782  009c 92c709        	ld	[_sTouchIO.w],a
 783                     ; 559         sTouchIO.PORT_ADDR->DDR |= sTouchIO.DriveMask;
 785  009f be09          	ldw	x,_sTouchIO
 786  00a1 e602          	ld	a,(2,x)
 787  00a3 ba0c          	or	a,_sTouchIO+3
 788  00a5 e702          	ld	(2,x),a
 789                     ; 560         sTouchIO.PORT_ADDR->CR1 &= (u8)(~sTouchIO.DriveMask);
 791  00a7 b60c          	ld	a,_sTouchIO+3
 792  00a9 43            	cpl	a
 793  00aa e403          	and	a,(3,x)
 794  00ac e703          	ld	(3,x),a
 795                     ; 561         ((GPIO_TypeDef *) (LOADREF_PORT_ADDR))->ODR |= LOADREF_BIT;				
 797  00ae 7214500a      	bset	20490,#2
 798                     ; 562 				enableInterrupts();
 801  00b2 9a            	rim	
 803                     ; 567         if (IT_Sync_Flags.one_charge_sync_enable)
 806  00b3 7205000009    	btjf	_IT_Sync_Flags,#2,L503
 807                     ; 569           IT_Sync_Flags.start = 0;
 809  00b8 72170000      	bres	_IT_Sync_Flags,#3
 811  00bc               L313:
 812                     ; 570 					while (IT_Sync_Flags.start == 0);
 814  00bc 72070000fb    	btjf	_IT_Sync_Flags,#3,L313
 815  00c1               L503:
 816                     ; 575         TSL_IO_SW_Spread_Spectrum();
 818  00c1 cd0000        	call	_TSL_IO_SW_Spread_Spectrum
 820                     ; 578         disableInterrupts();
 823  00c4 9b            	sim	
 825                     ; 579         TSL_IO_SW_Burst_Start_Timer();
 828  00c5 ad83          	call	_TSL_IO_SW_Burst_Start_Timer
 830                     ; 580         sTouchIO.PORT_ADDR->DDR &= (u8)(~sTouchIO.DriveMask);
 832  00c7 be09          	ldw	x,_sTouchIO
 833  00c9 b60c          	ld	a,_sTouchIO+3
 834  00cb 43            	cpl	a
 835  00cc e402          	and	a,(2,x)
 836  00ce e702          	ld	(2,x),a
 837                     ; 581         TSL_IO_SW_Burst_TestSyncShift();
 839  00d0 cd0000        	call	_TSL_IO_SW_Burst_TestSyncShift
 841                     ; 582         TSL_IO_SW_Burst_Wait_Vih();
 843  00d3 cd001a        	call	_TSL_IO_SW_Burst_Wait_Vih
 845                     ; 583         TSL_IO_SW_Burst_Stop_Timer();
 847  00d6 cd004f        	call	_TSL_IO_SW_Burst_Stop_Timer
 849                     ; 585         Measurement = CounterStop;
 851  00d9 be03          	ldw	x,_CounterStop
 852  00db 1f0e          	ldw	(OFST-1,sp),x
 853                     ; 588         sTouchIO.PORT_ADDR->ODR |= sTouchIO.DriveMask;
 855  00dd 92c609        	ld	a,[_sTouchIO.w]
 856  00e0 ba0c          	or	a,_sTouchIO+3
 857  00e2 92c709        	ld	[_sTouchIO.w],a
 858                     ; 589         sTouchIO.PORT_ADDR->DDR |= sTouchIO.DriveMask;
 860  00e5 be09          	ldw	x,_sTouchIO
 861  00e7 e602          	ld	a,(2,x)
 862  00e9 ba0c          	or	a,_sTouchIO+3
 863  00eb e702          	ld	(2,x),a
 864                     ; 590         sTouchIO.PORT_ADDR->CR1 |= sTouchIO.DriveMask;
 866  00ed e603          	ld	a,(3,x)
 867  00ef ba0c          	or	a,_sTouchIO+3
 868  00f1 e703          	ld	(3,x),a
 869                     ; 591         ((GPIO_TypeDef *) (LOADREF_PORT_ADDR))->ODR &= (u8)(~LOADREF_BIT);
 871  00f3 7215500a      	bres	20490,#2
 872                     ; 592 				enableInterrupts();
 875  00f7 9a            	rim	
 877                     ; 597 				if (IT_Sync_Flags.one_charge_sync_enable)
 880  00f8 7205000009    	btjf	_IT_Sync_Flags,#2,L713
 881                     ; 599           IT_Sync_Flags.start = 0;
 883  00fd 72170000      	bres	_IT_Sync_Flags,#3
 885  0101               L523:
 886                     ; 600 				  while (IT_Sync_Flags.start == 0);
 888  0101 72070000fb    	btjf	_IT_Sync_Flags,#3,L523
 889  0106               L713:
 890                     ; 605         TSL_IO_SW_Spread_Spectrum();
 892  0106 cd0000        	call	_TSL_IO_SW_Spread_Spectrum
 894                     ; 608         disableInterrupts();
 897  0109 9b            	sim	
 899                     ; 609         TSL_IO_SW_Burst_Start_Timer();
 902  010a cd004a        	call	_TSL_IO_SW_Burst_Start_Timer
 904                     ; 610         sTouchIO.PORT_ADDR->CR1 &= (u8)(~sTouchIO.DriveMask);
 906  010d be09          	ldw	x,_sTouchIO
 907  010f b60c          	ld	a,_sTouchIO+3
 908  0111 43            	cpl	a
 909  0112 e403          	and	a,(3,x)
 910  0114 e703          	ld	(3,x),a
 911                     ; 611         sTouchIO.PORT_ADDR->DDR &= (u8)(~sTouchIO.DriveMask);
 913  0116 b60c          	ld	a,_sTouchIO+3
 914  0118 43            	cpl	a
 915  0119 e402          	and	a,(2,x)
 916  011b e702          	ld	(2,x),a
 917                     ; 612         TSL_IO_SW_Burst_TestSyncShift();
 919  011d cd0000        	call	_TSL_IO_SW_Burst_TestSyncShift
 921                     ; 613         TSL_IO_SW_Burst_Wait_Vil();
 923  0120 cd0006        	call	_TSL_IO_SW_Burst_Wait_Vil
 925                     ; 614         TSL_IO_SW_Burst_Stop_Timer();
 927  0123 cd004f        	call	_TSL_IO_SW_Burst_Stop_Timer
 929                     ; 616         Measurement += CounterStop;
 931  0126 1e0e          	ldw	x,(OFST-1,sp)
 932  0128 72bb0003      	addw	x,_CounterStop
 933  012c 1f0e          	ldw	(OFST-1,sp),x
 934                     ; 618         CumulatedMeasurement += Measurement;
 936  012e 1e06          	ldw	x,(OFST-9,sp)
 937  0130 72fb0e        	addw	x,(OFST-1,sp)
 938  0133 1f06          	ldw	(OFST-9,sp),x
 939                     ; 621         if (SamplingShifter == SAMPLING_SHIFTER_LOOP_START)
 941  0135 b602          	ld	a,_SamplingShifter
 942  0137 4a            	dec	a
 943  0138 262e          	jrne	L133
 944                     ; 623           tmpval = (u32)((u32)Measurement * MAX_MEAS_COEFF);
 946  013a 1e0e          	ldw	x,(OFST-1,sp)
 947  013c 90ae011a      	ldw	y,#282
 948  0140 cd0000        	call	c_umul
 950  0143 96            	ldw	x,sp
 951  0144 1c000a        	addw	x,#OFST-5
 952  0147 cd0000        	call	c_rtol
 954                     ; 624           MaxMeasurement = (u16)((u16)(tmpval >> 8) + NB_CYCLES_VIHVIL_LOOP);
 956  014a 1e0b          	ldw	x,(OFST-4,sp)
 957  014c 1c0008        	addw	x,#8
 958  014f 1f02          	ldw	(OFST-13,sp),x
 959                     ; 625           tmpval = (u32)((u32)Measurement * MIN_MEAS_COEFF);
 961  0151 a6e6          	ld	a,#230
 962  0153 1e0e          	ldw	x,(OFST-1,sp)
 963  0155 cd0000        	call	c_cmulx
 965  0158 96            	ldw	x,sp
 966  0159 1c000a        	addw	x,#OFST-5
 967  015c cd0000        	call	c_rtol
 969                     ; 626           MinMeasurement = (u16)((u16)(tmpval >> 8) - NB_CYCLES_VIHVIL_LOOP);
 971  015f 1e0b          	ldw	x,(OFST-4,sp)
 972  0161 1d0008        	subw	x,#8
 973  0164 1f04          	ldw	(OFST-11,sp),x
 975  0166 201d          	jra	L333
 976  0168               L133:
 977                     ; 630           if ((Measurement < MinMeasurement) || (Measurement > MaxMeasurement))
 979  0168 1e0e          	ldw	x,(OFST-1,sp)
 980  016a 1304          	cpw	x,(OFST-11,sp)
 981  016c 2504          	jrult	L733
 983  016e 1302          	cpw	x,(OFST-13,sp)
 984  0170 2313          	jrule	L333
 985  0172               L733:
 986                     ; 632             MeasRejected++;
 988  0172 0c09          	inc	(OFST-6,sp)
 989                     ; 633             RejectionCounter++;
 991  0174 0c08          	inc	(OFST-7,sp)
 992                     ; 634             break; // Out from 'for SamplingShifter' loop !!!
 993  0176               L372:
 994                     ; 641     while (MeasRejected && (RejectionCounter <= MAX_REJECTED_MEASUREMENTS));
 996  0176 7b09          	ld	a,(OFST-6,sp)
 997  0178 2718          	jreq	L143
 999  017a 7b08          	ld	a,(OFST-7,sp)
1000  017c a115          	cp	a,#21
1001  017e 2403cc008c    	jrult	L172
1002  0183 200d          	jra	L143
1003  0185               L333:
1004                     ; 553             SamplingShifter < (SAMPLING_SHIFTER_NB_LOOPS + SAMPLING_SHIFTER_LOOP_START);
1004                     ; 554             SamplingShifter++ )
1006  0185 3c02          	inc	_SamplingShifter
1007                     ; 552       for ( SamplingShifter = SAMPLING_SHIFTER_LOOP_START;
1007                     ; 553             SamplingShifter < (SAMPLING_SHIFTER_NB_LOOPS + SAMPLING_SHIFTER_LOOP_START);
1009  0187 b602          	ld	a,_SamplingShifter
1010  0189 a109          	cp	a,#9
1011  018b 2403cc0095    	jrult	L772
1012  0190 20e4          	jra	L372
1013  0192               L143:
1014                     ; 643     if (MeasRejected == 0)
1016  0192 7b09          	ld	a,(OFST-6,sp)
1017  0194 2616          	jrne	L552
1018                     ; 645       FinalMeasurementValue += CumulatedMeasurement;
1020  0196 1e06          	ldw	x,(OFST-9,sp)
1021  0198 cd0000        	call	c_uitolx
1023  019b ae0005        	ldw	x,#_FinalMeasurementValue
1024  019e cd0000        	call	c_lgadd
1027                     ; 534   for ( AcqLoopIndex = 0; AcqLoopIndex < AcqNumber; AcqLoopIndex++ )
1029  01a1 0c01          	inc	(OFST-14,sp)
1030  01a3               L352:
1033  01a3 7b01          	ld	a,(OFST-14,sp)
1034  01a5 1110          	cp	a,(OFST+1,sp)
1035  01a7 2403cc007e    	jrult	L742
1036  01ac               L552:
1037                     ; 654   TSL_IO_Clamp(); // To avoid consumption
1039  01ac cd0035        	call	_TSL_IO_Clamp
1041                     ; 655   enableInterrupts();
1044  01af 9a            	rim	
1046                     ; 657   *sTouchIO.RejectedNb = RejectionCounter;
1049  01b0 7b08          	ld	a,(OFST-7,sp)
1050  01b2 92c70f        	ld	[_sTouchIO+6.w],a
1051                     ; 659   if (RejectionCounter <= MAX_REJECTED_MEASUREMENTS)
1053  01b5 a115          	cp	a,#21
1054  01b7 2420          	jruge	L743
1055                     ; 661     FinalMeasurementValue = (u32)(FinalMeasurementValue >> 3); /* Division by SAMPLING_SHIFTER_NB_LOOPS */
1057  01b9 ae0005        	ldw	x,#_FinalMeasurementValue
1058  01bc a603          	ld	a,#3
1059  01be cd0000        	call	c_lgursh
1062  01c1 2008          	jra	L353
1063  01c3               L153:
1064                     ; 664       FinalMeasurementValue = (u32)(FinalMeasurementValue >> 1);
1066  01c3 3405          	srl	_FinalMeasurementValue
1067  01c5 3606          	rrc	_FinalMeasurementValue+1
1068  01c7 3607          	rrc	_FinalMeasurementValue+2
1069  01c9 3608          	rrc	_FinalMeasurementValue+3
1070  01cb               L353:
1071                     ; 662     while ( AdjustmentLevel-- )
1073  01cb 7b11          	ld	a,(OFST+2,sp)
1074  01cd 0a11          	dec	(OFST+2,sp)
1075  01cf 4d            	tnz	a
1076  01d0 26f1          	jrne	L153
1077                     ; 666     *sTouchIO.Measurement = (u16)FinalMeasurementValue;
1079  01d2 be07          	ldw	x,_FinalMeasurementValue+2
1080  01d4 92cf0d        	ldw	[_sTouchIO+4.w],x
1082  01d7 2008          	jra	L753
1083  01d9               L743:
1084                     ; 674       pKeyStruct->Setting.b.NOISE = 1; /* Warning: Application layer must reset this flag */
1086  01d9 be00          	ldw	x,_pKeyStruct
1087  01db e602          	ld	a,(2,x)
1088  01dd aa40          	or	a,#64
1089  01df e702          	ld	(2,x),a
1090  01e1               L753:
1091                     ; 684 }
1094  01e1 5b11          	addw	sp,#17
1095  01e3 81            	ret	
1302                     	xdef	_TSL_IO_SW_Spread_Spectrum
1303                     	switch	.ubsct
1304  0001               _AcquisitionBitMask:
1305  0001 00            	ds.b	1
1306                     	xdef	_AcquisitionBitMask
1307  0002               _SamplingShifter:
1308  0002 00            	ds.b	1
1309                     	xdef	_SamplingShifter
1310  0003               _CounterStop:
1311  0003 0000          	ds.b	2
1312                     	xdef	_CounterStop
1313  0005               _FinalMeasurementValue:
1314  0005 00000000      	ds.b	4
1315                     	xdef	_FinalMeasurementValue
1316                     	xref.b	_IT_Sync_Flags
1317                     	xref.b	_pKeyStruct
1318                     	xdef	_TSL_IO_SW_Burst_Stop_Timer
1319                     	xdef	_TSL_IO_SW_Burst_Start_Timer
1320                     	xdef	_TSL_IO_SW_Burst_Wait_Vih
1321                     	xdef	_TSL_IO_SW_Burst_Wait_Vil
1322                     	xdef	_TSL_IO_SW_Burst_TestSyncShift
1323                     	xdef	_TSL_IO_Acquisition
1324                     	xdef	_TSL_IO_Clamp
1325                     	xdef	_TSL_IO_Init
1326                     	xdef	_Table_SCKEY_BITS
1327  0009               _sTouchIO:
1328  0009 000000000000  	ds.b	9
1329                     	xdef	_sTouchIO
1330                     	xref.b	c_x
1331                     	xref.b	c_y
1351                     	xref	c_lgursh
1352                     	xref	c_lgadd
1353                     	xref	c_uitolx
1354                     	xref	c_cmulx
1355                     	xref	c_rtol
1356                     	xref	c_umul
1357                     	end
