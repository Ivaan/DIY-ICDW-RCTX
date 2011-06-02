   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  84                     ; 51 void TSL_SetStructPointer(void)
  84                     ; 52 {
  86                     	switch	.text
  87  0000               _TSL_SetStructPointer:
  91                     ; 53   pKeyStruct = &sSCKeyInfo[KeyIndex];
  93  0000 b600          	ld	a,_KeyIndex
  94  0002 97            	ld	xl,a
  95  0003 a60f          	ld	a,#15
  96  0005 42            	mul	x,a
  97  0006 01            	rrwa	x,a
  98  0007 ab00          	add	a,#_sSCKeyInfo
  99  0009 5f            	clrw	x
 100  000a 97            	ld	xl,a
 101  000b bf00          	ldw	_pKeyStruct,x
 102                     ; 54 }
 105  000d 81            	ret	
 131                     ; 67 void TSL_DeltaCalculation(void)
 131                     ; 68 {
 132                     	switch	.text
 133  000e               _TSL_DeltaCalculation:
 137                     ; 69   Delta = (s16)(pKeyStruct->Channel.LastMeas - pKeyStruct->Channel.Reference);
 139  000e be00          	ldw	x,_pKeyStruct
 140  0010 90be00        	ldw	y,_pKeyStruct
 141  0013 ee05          	ldw	x,(5,x)
 142  0015 90ee08        	ldw	y,(8,y)
 143  0018 90bf00        	ldw	c_x,y
 144  001b 72b00000      	subw	x,c_x
 145  001f bf00          	ldw	_Delta,x
 146                     ; 70 }
 149  0021 81            	ret	
 175                     ; 84 void TSL_SCKey_SetIdleState(void)
 175                     ; 85 {
 176                     	switch	.text
 177  0022               _TSL_SCKey_SetIdleState:
 181                     ; 86   pKeyStruct->Setting.b.CHANGED = 1;
 183  0022 be00          	ldw	x,_pKeyStruct
 184  0024 e602          	ld	a,(2,x)
 185  0026 aa08          	or	a,#8
 186  0028 e702          	ld	(2,x),a
 187                     ; 87   TSL_SCKey_BackToIdleState();
 190                     ; 88 }
 193  002a 2000          	jp	_TSL_SCKey_BackToIdleState
 218                     ; 102 void TSL_SCKey_BackToIdleState(void)
 218                     ; 103 {
 219                     	switch	.text
 220  002c               _TSL_SCKey_BackToIdleState:
 224                     ; 104   pKeyStruct->State.whole = IDLE_STATE;
 226  002c a602          	ld	a,#2
 227  002e 92c700        	ld	[_pKeyStruct.w],a
 228                     ; 105   pKeyStruct->Setting.b.DETECTED = 0;
 230  0031 be00          	ldw	x,_pKeyStruct
 231  0033 e602          	ld	a,(2,x)
 232                     ; 106   pKeyStruct->Setting.b.LOCKED = 0;
 234                     ; 107   pKeyStruct->Setting.b.ERROR = 0;
 236  0035 a45b          	and	a,#91
 237  0037 e702          	ld	(2,x),a
 238                     ; 108 }
 241  0039 81            	ret	
 267                     ; 122 void TSL_SCKey_SetPreDetectState(void)
 267                     ; 123 {
 268                     	switch	.text
 269  003a               _TSL_SCKey_SetPreDetectState:
 273                     ; 124   pKeyStruct->State.whole = PRE_DETECTED_STATE;
 275  003a a614          	ld	a,#20
 276  003c 92c700        	ld	[_pKeyStruct.w],a
 277                     ; 125   pKeyStruct->Channel.IntegratorCounter = DetectionIntegrator;
 279  003f be00          	ldw	x,_pKeyStruct
 280  0041 b600          	ld	a,_DetectionIntegrator
 281  0043 e70a          	ld	(10,x),a
 282                     ; 126 }
 285  0045 81            	ret	
 311                     ; 140 void TSL_SCKey_SetDetectedState(void)
 311                     ; 141 {
 312                     	switch	.text
 313  0046               _TSL_SCKey_SetDetectedState:
 317                     ; 142   pKeyStruct->State.whole = DETECTED_STATE;
 319  0046 a604          	ld	a,#4
 320  0048 92c700        	ld	[_pKeyStruct.w],a
 321                     ; 143   pKeyStruct->Setting.b.DETECTED = 1;
 323  004b be00          	ldw	x,_pKeyStruct
 324  004d e602          	ld	a,(2,x)
 325                     ; 144   pKeyStruct->Setting.b.CHANGED = 1;
 327  004f aa0c          	or	a,#12
 328  0051 e702          	ld	(2,x),a
 329                     ; 145   pKeyStruct->Counter = DetectionTimeout;
 331  0053 b600          	ld	a,_DetectionTimeout
 332  0055 e703          	ld	(3,x),a
 333                     ; 146 }
 336  0057 81            	ret	
 362                     ; 160 void TSL_SCKey_SetPostDetectState(void)
 362                     ; 161 {
 363                     	switch	.text
 364  0058               _TSL_SCKey_SetPostDetectState:
 368                     ; 162   pKeyStruct->State.whole = POST_DETECTED_STATE;
 370  0058 a624          	ld	a,#36
 371  005a 92c700        	ld	[_pKeyStruct.w],a
 372                     ; 163   pKeyStruct->Channel.IntegratorCounter = EndDetectionIntegrator;
 374  005d be00          	ldw	x,_pKeyStruct
 375  005f b600          	ld	a,_EndDetectionIntegrator
 376  0061 e70a          	ld	(10,x),a
 377                     ; 164 }
 380  0063 81            	ret	
 405                     ; 178 void TSL_SCKey_BackToDetectedState(void)
 405                     ; 179 {
 406                     	switch	.text
 407  0064               _TSL_SCKey_BackToDetectedState:
 411                     ; 180   pKeyStruct->State.whole = DETECTED_STATE;
 413  0064 a604          	ld	a,#4
 414  0066 92c700        	ld	[_pKeyStruct.w],a
 415                     ; 181 }
 418  0069 81            	ret	
 444                     ; 195 void TSL_SCKey_SetPreRecalibrationState(void)
 444                     ; 196 {
 445                     	switch	.text
 446  006a               _TSL_SCKey_SetPreRecalibrationState:
 450                     ; 197   pKeyStruct->State.whole = PRE_CALIBRATION_STATE;
 452  006a a611          	ld	a,#17
 453  006c 92c700        	ld	[_pKeyStruct.w],a
 454                     ; 198   pKeyStruct->Channel.IntegratorCounter = RecalibrationIntegrator;
 456  006f be00          	ldw	x,_pKeyStruct
 457  0071 b600          	ld	a,_RecalibrationIntegrator
 458  0073 e70a          	ld	(10,x),a
 459                     ; 199 }
 462  0075 81            	ret	
 487                     ; 213 void TSL_SCKey_SetCalibrationState(void)
 487                     ; 214 {
 488                     	switch	.text
 489  0076               _TSL_SCKey_SetCalibrationState:
 493                     ; 215   pKeyStruct->State.whole = CALIBRATION_STATE;
 495  0076 a601          	ld	a,#1
 496  0078 92c700        	ld	[_pKeyStruct.w],a
 497                     ; 216   pKeyStruct->Setting.b.DETECTED = 0;
 499  007b be00          	ldw	x,_pKeyStruct
 500  007d e602          	ld	a,(2,x)
 501                     ; 217   pKeyStruct->Setting.b.CHANGED = 1;
 503  007f a45b          	and	a,#91
 504  0081 aa08          	or	a,#8
 505                     ; 218   pKeyStruct->Setting.b.LOCKED = 0;
 507                     ; 219   pKeyStruct->Setting.b.ERROR = 0;
 509  0083 e702          	ld	(2,x),a
 510                     ; 220   pKeyStruct->Counter = SCKEY_CALIBRATION_COUNT_DEFAULT;
 512  0085 a608          	ld	a,#8
 513  0087 e703          	ld	(3,x),a
 514                     ; 221   pKeyStruct->Channel.Reference = 0;
 516  0089 905f          	clrw	y
 517  008b ef08          	ldw	(8,x),y
 518                     ; 222 }
 521  008d 81            	ret	
 546                     ; 236 void TSL_SCKey_SetErrorState(void)
 546                     ; 237 {
 547                     	switch	.text
 548  008e               _TSL_SCKey_SetErrorState:
 552                     ; 238   pKeyStruct->State.whole = ERROR_STATE;
 554  008e a608          	ld	a,#8
 555  0090 92c700        	ld	[_pKeyStruct.w],a
 556                     ; 239   pKeyStruct->Setting.b.DETECTED = 0;
 558  0093 be00          	ldw	x,_pKeyStruct
 559  0095 e602          	ld	a,(2,x)
 560                     ; 240   pKeyStruct->Setting.b.CHANGED = 1;
 562  0097 a47b          	and	a,#123
 563                     ; 241   pKeyStruct->Setting.b.LOCKED = 0;
 565                     ; 242   pKeyStruct->Setting.b.ERROR = 1;
 567  0099 aa28          	or	a,#40
 568  009b e702          	ld	(2,x),a
 569                     ; 243 }
 572  009d 81            	ret	
 597                     ; 257 void TSL_SCKey_SetDisabledState(void)
 597                     ; 258 {
 598                     	switch	.text
 599  009e               _TSL_SCKey_SetDisabledState:
 603                     ; 259   pKeyStruct->State.whole = DISABLED_STATE;
 605  009e a680          	ld	a,#128
 606  00a0 92c700        	ld	[_pKeyStruct.w],a
 607                     ; 260   pKeyStruct->Setting.b.DETECTED = 0;
 609  00a3 be00          	ldw	x,_pKeyStruct
 610  00a5 e602          	ld	a,(2,x)
 611                     ; 261   pKeyStruct->Setting.b.CHANGED = 1;
 613  00a7 a45b          	and	a,#91
 614  00a9 aa08          	or	a,#8
 615                     ; 262   pKeyStruct->Setting.b.LOCKED = 0;
 617                     ; 263   pKeyStruct->Setting.b.ERROR = 0;
 619  00ab e702          	ld	(2,x),a
 620                     ; 264 }
 623  00ad 81            	ret	
 710                     ; 280 void TSL_ECS(void)
 710                     ; 281 {
 711                     	switch	.text
 712  00ae               _TSL_ECS:
 714  00ae 520b          	subw	sp,#11
 715       0000000b      OFST:	set	11
 718                     ; 287   disableInterrupts();
 721  00b0 9b            	sim	
 723                     ; 288   Local_TickECS10ms = TSL_TickCount_ECS_10ms;
 726  00b1 450000        	mov	_Local_TickECS10ms,_TSL_TickCount_ECS_10ms
 727                     ; 289   TSL_TickCount_ECS_10ms = 0;
 729  00b4 3f00          	clr	_TSL_TickCount_ECS_10ms
 730                     ; 290   enableInterrupts();
 733  00b6 9a            	rim	
 737  00b7 cc018e        	jra	L522
 738  00ba               L322:
 739                     ; 294     ECSTimeStepCounter--;
 741  00ba 3a00          	dec	_ECSTimeStepCounter
 742                     ; 295     ECSTempoPrescaler--;
 744  00bc 3a00          	dec	_ECSTempoPrescaler
 745                     ; 296     if ( !ECSTempoPrescaler )
 747  00be 260a          	jrne	L132
 748                     ; 298       ECSTempoPrescaler = 10;
 750  00c0 350a0000      	mov	_ECSTempoPrescaler,#10
 751                     ; 299       if ( ECSTempoCounter )
 753  00c4 b600          	ld	a,_ECSTempoCounter
 754  00c6 2702          	jreq	L132
 755                     ; 300         ECSTempoCounter--;
 757  00c8 3a00          	dec	_ECSTempoCounter
 758  00ca               L132:
 759                     ; 303     K_Filter = ECS_K_Slow;   // Default case !
 761  00ca b600          	ld	a,_ECS_K_Slow
 762  00cc 6b05          	ld	(OFST-6,sp),a
 763                     ; 304     ECS_Fast_Enable = 1;
 765  00ce a601          	ld	a,#1
 766  00d0 6b07          	ld	(OFST-4,sp),a
 767                     ; 305     ECS_Fast_Direction = 0;
 769  00d2 0f06          	clr	(OFST-5,sp)
 770                     ; 306     for ( KeyIndex = 0; KeyIndex < NUMBER_OF_SINGLE_CHANNEL_KEYS; KeyIndex++ )
 772  00d4 3f00          	clr	_KeyIndex
 773  00d6               L532:
 774                     ; 308       TSL_SetStructPointer();
 776  00d6 cd0000        	call	_TSL_SetStructPointer
 778                     ; 310       if ( pKeyStruct->State.whole & DETECTED_STATE)
 780  00d9 92c600        	ld	a,[_pKeyStruct.w]
 781  00dc a504          	bcp	a,#4
 782  00de 2705          	jreq	L342
 783                     ; 312         ECSTempoCounter = ECSTemporization;    // Restart temporization counter ...
 785  00e0 450000        	mov	_ECSTempoCounter,_ECSTemporization
 786                     ; 313         break;           // Out from the for loop
 788  00e3 2026          	jra	L142
 789  00e5               L342:
 790                     ; 315       if ( pKeyStruct->State.whole == IDLE_STATE )
 792  00e5 a102          	cp	a,#2
 793  00e7 261e          	jrne	L542
 794                     ; 317         TSL_DeltaCalculation();
 796  00e9 cd000e        	call	_TSL_DeltaCalculation
 798                     ; 318         if ( Delta == 0 )  // No Fast ECS !
 800  00ec be00          	ldw	x,_Delta
 801                     ; 319           ECS_Fast_Enable = 0;
 803  00ee 270f          	jreq	LC002
 804                     ; 322           if ( Delta < 0 )
 806  00f0 2a09          	jrpl	L352
 807                     ; 324             if ( ECS_Fast_Direction > 0 )  // No Fast ECS !
 809  00f2 7b06          	ld	a,(OFST-5,sp)
 810  00f4 9c            	rvf	
 811                     ; 325               ECS_Fast_Enable = 0;
 813  00f5 2c08          	jrsgt	LC002
 814                     ; 327               ECS_Fast_Direction = -1;
 816  00f7 a6ff          	ld	a,#255
 817  00f9 200a          	jp	LC001
 818  00fb               L352:
 819                     ; 331             if ( ECS_Fast_Direction < 0 )  // No Fast ECS !
 821  00fb 7b06          	ld	a,(OFST-5,sp)
 822  00fd 2a04          	jrpl	L362
 823                     ; 332               ECS_Fast_Enable = 0;
 825  00ff               LC002:
 828  00ff 0f07          	clr	(OFST-4,sp)
 830  0101 2004          	jra	L542
 831  0103               L362:
 832                     ; 334               ECS_Fast_Direction = + 1;
 834  0103 a601          	ld	a,#1
 835  0105               LC001:
 836  0105 6b06          	ld	(OFST-5,sp),a
 837  0107               L542:
 838                     ; 306     for ( KeyIndex = 0; KeyIndex < NUMBER_OF_SINGLE_CHANNEL_KEYS; KeyIndex++ )
 840  0107 3c00          	inc	_KeyIndex
 843  0109 27cb          	jreq	L532
 844  010b               L142:
 845                     ; 385     if ( !ECSTimeStepCounter && !ECSTempoCounter )
 847  010b b600          	ld	a,_ECSTimeStepCounter
 848  010d 267f          	jrne	L522
 850  010f b600          	ld	a,_ECSTempoCounter
 851  0111 267b          	jrne	L522
 852                     ; 387       ECSTimeStepCounter = ECSTimeStep;
 854  0113 450000        	mov	_ECSTimeStepCounter,_ECSTimeStep
 855                     ; 389       if (ECS_Fast_Enable)
 857  0116 7b07          	ld	a,(OFST-4,sp)
 858  0118 2704          	jreq	L172
 859                     ; 391         K_Filter = ECS_K_Fast;
 861  011a b600          	ld	a,_ECS_K_Fast
 862  011c 6b05          	ld	(OFST-6,sp),a
 863  011e               L172:
 864                     ; 394       K_Filter_Complement = (u8)((0xFF ^ K_Filter) + 1);
 866  011e 7b05          	ld	a,(OFST-6,sp)
 867  0120 43            	cpl	a
 868  0121 4c            	inc	a
 869  0122 6b07          	ld	(OFST-4,sp),a
 870                     ; 396       if ( K_Filter )
 872  0124 7b05          	ld	a,(OFST-6,sp)
 873  0126 2766          	jreq	L522
 874                     ; 399         for ( KeyIndex = 0; KeyIndex < NUMBER_OF_SINGLE_CHANNEL_KEYS; KeyIndex++ )
 876  0128 3f00          	clr	_KeyIndex
 877  012a               L572:
 878                     ; 401           TSL_SetStructPointer();
 880  012a cd0000        	call	_TSL_SetStructPointer
 882                     ; 402           if ( pKeyStruct->State.whole == IDLE_STATE )
 884  012d 92c600        	ld	a,[_pKeyStruct.w]
 885  0130 a102          	cp	a,#2
 886  0132 2656          	jrne	L303
 887                     ; 404             IIR_Result = ((u32)(pKeyStruct->Channel.Reference) << 8) + pKeyStruct->Channel.ECSRefRest;
 889  0134 be00          	ldw	x,_pKeyStruct
 890  0136 90ae0100      	ldw	y,#256
 891  013a ee08          	ldw	x,(8,x)
 892  013c cd0000        	call	c_umul
 894  013f be00          	ldw	x,_pKeyStruct
 895  0141 e60b          	ld	a,(11,x)
 896  0143 cd0000        	call	c_ladc
 898  0146 96            	ldw	x,sp
 899  0147 1c0008        	addw	x,#OFST-3
 900  014a cd0000        	call	c_rtol
 902                     ; 405             IIR_Result = K_Filter_Complement * IIR_Result;
 904  014d 7b07          	ld	a,(OFST-4,sp)
 905  014f b703          	ld	c_lreg+3,a
 906  0151 3f02          	clr	c_lreg+2
 907  0153 3f01          	clr	c_lreg+1
 908  0155 3f00          	clr	c_lreg
 909  0157 96            	ldw	x,sp
 910  0158 1c0008        	addw	x,#OFST-3
 911  015b cd0000        	call	c_lgmul
 913                     ; 406             IIR_Result += K_Filter * ((u32)(pKeyStruct->Channel.LastMeas) << 8);
 915  015e 7b05          	ld	a,(OFST-6,sp)
 916  0160 b703          	ld	c_lreg+3,a
 917  0162 3f02          	clr	c_lreg+2
 918  0164 3f01          	clr	c_lreg+1
 919  0166 3f00          	clr	c_lreg
 920  0168 96            	ldw	x,sp
 921  0169 5c            	incw	x
 922  016a cd0000        	call	c_rtol
 924  016d be00          	ldw	x,_pKeyStruct
 925  016f ee05          	ldw	x,(5,x)
 926  0171 cd0000        	call	c_umul
 928  0174 96            	ldw	x,sp
 929  0175 5c            	incw	x
 930  0176 cd0000        	call	c_lmul
 932  0179 96            	ldw	x,sp
 933  017a 1c0008        	addw	x,#OFST-3
 934  017d cd0000        	call	c_lgadd
 936                     ; 407             pKeyStruct->Channel.Reference = (u16)(IIR_Result >> 16);
 938  0180 be00          	ldw	x,_pKeyStruct
 939  0182 1608          	ldw	y,(OFST-3,sp)
 940  0184 ef08          	ldw	(8,x),y
 941                     ; 408             pKeyStruct->Channel.ECSRefRest = (u8)(IIR_Result >> 8);
 943  0186 7b0a          	ld	a,(OFST-1,sp)
 944  0188 e70b          	ld	(11,x),a
 945  018a               L303:
 946                     ; 399         for ( KeyIndex = 0; KeyIndex < NUMBER_OF_SINGLE_CHANNEL_KEYS; KeyIndex++ )
 948  018a 3c00          	inc	_KeyIndex
 951  018c 279c          	jreq	L572
 952  018e               L522:
 953                     ; 292   while ( Local_TickECS10ms-- )
 955  018e b600          	ld	a,_Local_TickECS10ms
 956  0190 3a00          	dec	_Local_TickECS10ms
 957  0192 4d            	tnz	a
 958  0193 2703cc00ba    	jrne	L322
 959                     ; 431 }
 962  0198 5b0b          	addw	sp,#11
 963  019a 81            	ret	
1009                     ; 445 void TSL_SCKey_DES(void)
1009                     ; 446 {
1010                     	switch	.text
1011  019b               _TSL_SCKey_DES:
1013  019b 89            	pushw	x
1014       00000002      OFST:	set	2
1017                     ; 450   if ( pKeyStruct->Setting.b.LOCKED )
1019  019c be00          	ldw	x,_pKeyStruct
1020  019e e602          	ld	a,(2,x)
1021  01a0 2b1e          	jrmi	L25
1022                     ; 451     return;
1024                     ; 453   DESGroupMask = pKeyStruct->DESGroup;
1026  01a2 e604          	ld	a,(4,x)
1027  01a4 6b01          	ld	(OFST-1,sp),a
1028                     ; 455   for ( KeyToCheck = 0; KeyToCheck < NUMBER_OF_SINGLE_CHANNEL_KEYS; KeyToCheck++ )
1030  01a6 0f02          	clr	(OFST+0,sp)
1031  01a8               L333:
1032                     ; 457     if ( KeyToCheck != KeyIndex )
1034  01a8 7b02          	ld	a,(OFST+0,sp)
1035  01aa b100          	cp	a,_KeyIndex
1036  01ac 2714          	jreq	L143
1037                     ; 460       if ( sSCKeyInfo[KeyToCheck].DESGroup & DESGroupMask )
1039  01ae 97            	ld	xl,a
1040  01af a60f          	ld	a,#15
1041  01b1 42            	mul	x,a
1042  01b2 e604          	ld	a,(_sSCKeyInfo+4,x)
1043  01b4 1501          	bcp	a,(OFST-1,sp)
1044  01b6 270a          	jreq	L143
1045                     ; 462         if ( sSCKeyInfo[KeyToCheck].Setting.b.LOCKED )
1047  01b8 e602          	ld	a,(_sSCKeyInfo+2,x)
1048  01ba 2a06          	jrpl	L143
1049                     ; 464           goto ExitToIdle;
1050                     ; 487 ExitToIdle:   // The DES is verified at PRE DETECT state only !
1050                     ; 488   pKeyStruct->Channel.IntegratorCounter++;  // Increment integrator to never allow DETECT state
1052  01bc be00          	ldw	x,_pKeyStruct
1053  01be 6c0a          	inc	(10,x)
1054                     ; 489   return;
1055  01c0               L25:
1058  01c0 85            	popw	x
1059  01c1 81            	ret	
1060  01c2               L143:
1061                     ; 455   for ( KeyToCheck = 0; KeyToCheck < NUMBER_OF_SINGLE_CHANNEL_KEYS; KeyToCheck++ )
1063  01c2 0c02          	inc	(OFST+0,sp)
1066  01c4 27e2          	jreq	L333
1067                     ; 484   pKeyStruct->Setting.b.LOCKED = 1;
1069  01c6 be00          	ldw	x,_pKeyStruct
1070  01c8 e602          	ld	a,(2,x)
1071  01ca aa80          	or	a,#128
1072  01cc e702          	ld	(2,x),a
1073                     ; 485   return;
1075  01ce 20f0          	jra	L25
1103                     ; 503 void TSL_SCKey_DetectionTimeout(void)
1103                     ; 504 {
1104                     	switch	.text
1105  01d0               _TSL_SCKey_DetectionTimeout:
1109                     ; 505   if ( Local_TickFlag.b.DTO_1sec )
1111  01d0 720100000d    	btjf	_Local_TickFlag,#0,L753
1112                     ; 507     if ( DetectionTimeout )
1114  01d5 b600          	ld	a,_DetectionTimeout
1115  01d7 2709          	jreq	L753
1116                     ; 509       pKeyStruct->Counter--;
1118  01d9 be00          	ldw	x,_pKeyStruct
1119  01db 6a03          	dec	(3,x)
1120                     ; 510       if ( !pKeyStruct->Counter )
1122  01dd 2603          	jrne	L753
1123                     ; 512         TSL_SCKey_SetCalibrationState( );
1125  01df cd0076        	call	_TSL_SCKey_SetCalibrationState
1127  01e2               L753:
1128                     ; 516 }
1131  01e2 81            	ret	
1144                     	xdef	_TSL_SCKey_DetectionTimeout
1145                     	xdef	_TSL_SCKey_DES
1146                     	xdef	_TSL_ECS
1147                     	xdef	_TSL_SCKey_SetDisabledState
1148                     	xdef	_TSL_SCKey_SetErrorState
1149                     	xdef	_TSL_SCKey_SetPreRecalibrationState
1150                     	xdef	_TSL_SCKey_BackToDetectedState
1151                     	xdef	_TSL_SCKey_SetPostDetectState
1152                     	xdef	_TSL_SCKey_SetDetectedState
1153                     	xdef	_TSL_SCKey_SetPreDetectState
1154                     	xdef	_TSL_SCKey_BackToIdleState
1155                     	xdef	_TSL_SCKey_SetIdleState
1156                     	xdef	_TSL_DeltaCalculation
1157                     	xdef	_TSL_SetStructPointer
1158                     	xref.b	_ECSTempoPrescaler
1159                     	xref.b	_ECSTempoCounter
1160                     	xref.b	_ECSTimeStepCounter
1161                     	xref.b	_Local_TickFlag
1162                     	xref.b	_Local_TickECS10ms
1163                     	xref.b	_Delta
1164                     	xref.b	_KeyIndex
1165                     	xdef	_TSL_SCKey_SetCalibrationState
1166                     	xref.b	_ECS_K_Slow
1167                     	xref.b	_ECS_K_Fast
1168                     	xref.b	_ECSTemporization
1169                     	xref.b	_ECSTimeStep
1170                     	xref.b	_RecalibrationIntegrator
1171                     	xref.b	_EndDetectionIntegrator
1172                     	xref.b	_DetectionIntegrator
1173                     	xref.b	_DetectionTimeout
1174                     	xref.b	_sSCKeyInfo
1175                     	xref.b	_pKeyStruct
1176                     	xref.b	_TSL_TickCount_ECS_10ms
1177                     	xref.b	c_lreg
1178                     	xref.b	c_x
1179                     	xref.b	c_y
1198                     	xref	c_lgadd
1199                     	xref	c_lmul
1200                     	xref	c_lgmul
1201                     	xref	c_rtol
1202                     	xref	c_ladc
1203                     	xref	c_umul
1204                     	end
