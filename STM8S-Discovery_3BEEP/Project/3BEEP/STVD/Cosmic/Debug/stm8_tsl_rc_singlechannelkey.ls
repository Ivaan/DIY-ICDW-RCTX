   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  83                     ; 46 void TSL_SCKey_Init(void)
  83                     ; 47 {
  85                     	switch	.text
  86  0000               _TSL_SCKey_Init:
  90                     ; 49   for ( KeyIndex = 0; KeyIndex < NUMBER_OF_SINGLE_CHANNEL_KEYS; KeyIndex++ )
  92  0000 3f00          	clr	_KeyIndex
  93  0002               L53:
  94                     ; 51     TSL_SetStructPointer();
  96  0002 cd0000        	call	_TSL_SetStructPointer
  98                     ; 52     pKeyStruct->State.whole = DISABLED_STATE;
 100  0005 a680          	ld	a,#128
 101  0007 92c700        	ld	[_pKeyStruct.w],a
 102                     ; 53     pKeyStruct->DetectThreshold = SCKEY_DETECTTHRESHOLD_DEFAULT;
 104  000a be00          	ldw	x,_pKeyStruct
 105  000c a60f          	ld	a,#15
 106  000e e70c          	ld	(12,x),a
 107                     ; 54     pKeyStruct->EndDetectThreshold = SCKEY_ENDDETECTTHRESHOLD_DEFAULT;
 109  0010 a606          	ld	a,#6
 110  0012 e70d          	ld	(13,x),a
 111                     ; 55     pKeyStruct->RecalibrationThreshold = SCKEY_RECALIBRATIONTHRESHOLD_DEFAULT;
 113  0014 a6fa          	ld	a,#250
 114  0016 e70e          	ld	(14,x),a
 115                     ; 49   for ( KeyIndex = 0; KeyIndex < NUMBER_OF_SINGLE_CHANNEL_KEYS; KeyIndex++ )
 117  0018 3c00          	inc	_KeyIndex
 120  001a 27e6          	jreq	L53
 121                     ; 57 }
 124  001c 81            	ret	
 155                     ; 70 void TSL_SCKEY_P1_Acquisition(void)
 155                     ; 71 {
 156                     	switch	.text
 157  001d               _TSL_SCKEY_P1_Acquisition:
 161                     ; 73   sTouchIO.PORT_ADDR = (GPIO_TypeDef *) (SCKEY_P1_PORT_ADDR);
 163  001d ae500a        	ldw	x,#20490
 164  0020 bf00          	ldw	_sTouchIO,x
 165                     ; 74   for ( KeyIndex = 0; KeyIndex < SCKEY_P1_KEY_COUNT; KeyIndex++ )
 167  0022 3f00          	clr	_KeyIndex
 168  0024               L35:
 169                     ; 76     TSL_SetStructPointer();
 171  0024 cd0000        	call	_TSL_SetStructPointer
 173                     ; 77     if ( (pKeyStruct->State.whole != ERROR_STATE) && (pKeyStruct->State.whole != DISABLED_STATE) )
 175  0027 92c600        	ld	a,[_pKeyStruct.w]
 176  002a a108          	cp	a,#8
 177  002c 2736          	jreq	L16
 179  002e a180          	cp	a,#128
 180  0030 2732          	jreq	L16
 181                     ; 79       sTouchIO.AcqMask = Table_SCKEY_BITS[KeyIndex];
 183  0032 b600          	ld	a,_KeyIndex
 184  0034 5f            	clrw	x
 185  0035 97            	ld	xl,a
 186  0036 d60000        	ld	a,(_Table_SCKEY_BITS,x)
 187  0039 b702          	ld	_sTouchIO+2,a
 188                     ; 80       sTouchIO.DriveMask = (u8)(sTouchIO.AcqMask | SCKEY_P1_DRIVEN_SHIELD_MASK);
 190  003b aa08          	or	a,#8
 191  003d b703          	ld	_sTouchIO+3,a
 192                     ; 81       sTouchIO.Measurement = &sSCKeyInfo[KeyIndex].Channel.LastMeas;
 194  003f b600          	ld	a,_KeyIndex
 195  0041 97            	ld	xl,a
 196  0042 a60f          	ld	a,#15
 197  0044 42            	mul	x,a
 198  0045 01            	rrwa	x,a
 199  0046 ab05          	add	a,#_sSCKeyInfo+5
 200  0048 5f            	clrw	x
 201  0049 97            	ld	xl,a
 202  004a bf04          	ldw	_sTouchIO+4,x
 203                     ; 82       sTouchIO.RejectedNb = &sSCKeyInfo[KeyIndex].Channel.LastMeasRejectNb;
 205  004c b600          	ld	a,_KeyIndex
 206  004e 97            	ld	xl,a
 207  004f a60f          	ld	a,#15
 208  0051 42            	mul	x,a
 209  0052 01            	rrwa	x,a
 210  0053 ab07          	add	a,#_sSCKeyInfo+7
 211  0055 5f            	clrw	x
 212  0056 97            	ld	xl,a
 213  0057 bf06          	ldw	_sTouchIO+6,x
 214                     ; 83       sTouchIO.Type = SCKEY_TYPE;
 216  0059 3f08          	clr	_sTouchIO+8
 217                     ; 84       TSL_IO_Acquisition(SCKEY_ACQ_NUM, SCKEY_ADJUST_LEVEL);
 219  005b ae0001        	ldw	x,#1
 220  005e a603          	ld	a,#3
 221  0060 95            	ld	xh,a
 222  0061 cd0000        	call	_TSL_IO_Acquisition
 224  0064               L16:
 225                     ; 74   for ( KeyIndex = 0; KeyIndex < SCKEY_P1_KEY_COUNT; KeyIndex++ )
 227  0064 3c00          	inc	_KeyIndex
 230  0066 27bc          	jreq	L35
 231                     ; 87 }
 234  0068 81            	ret	
 272                     ; 164 void TSL_SCKey_Process(void)
 272                     ; 165 {
 273                     	switch	.text
 274  0069               _TSL_SCKey_Process:
 278                     ; 167   TSL_SetStructPointer();
 280  0069 cd0000        	call	_TSL_SetStructPointer
 282                     ; 169   TSL_DeltaCalculation();
 284  006c cd0000        	call	_TSL_DeltaCalculation
 286                     ; 171   switch ( pKeyStruct->State.whole )
 288  006f 92c600        	ld	a,[_pKeyStruct.w]
 290                     ; 222       break;
 291  0072 4a            	dec	a
 292  0073 274b          	jreq	L57
 293  0075 4a            	dec	a
 294  0076 271a          	jreq	L36
 295  0078 a002          	sub	a,#2
 296  007a 272a          	jreq	L76
 297  007c a004          	sub	a,#4
 298  007e 274e          	jreq	L77
 299  0080 a009          	sub	a,#9
 300  0082 2737          	jreq	L37
 301  0084 a003          	sub	a,#3
 302  0086 2719          	jreq	L56
 303  0088 a010          	sub	a,#16
 304  008a 272a          	jreq	L17
 305  008c a05c          	sub	a,#92
 306  008e 2743          	jreq	L101
 307  0090               L721:
 309  0090 20fe          	jra	L721
 310  0092               L36:
 311                     ; 174     case IDLE_STATE:
 311                     ; 175       if ( TSL_SCKey_CheckErrorCondition() )
 313  0092 cd0233        	call	_TSL_SCKey_CheckErrorCondition
 315  0095 4d            	tnz	a
 316  0096 2705          	jreq	L121
 317                     ; 177         TSL_SCKey_SetErrorState();
 319  0098 cd0000        	call	_TSL_SCKey_SetErrorState
 321                     ; 178         break;
 323  009b 2039          	jra	L711
 324  009d               L121:
 325                     ; 180       TSL_SCKey_IdleTreatment( );
 327  009d ad54          	call	_TSL_SCKey_IdleTreatment
 329                     ; 181       TSL_SCKey_CheckDisabled( );
 331                     ; 182       break;
 333  009f 202d          	jp	L77
 334  00a1               L56:
 335                     ; 184     case PRE_DETECTED_STATE:
 335                     ; 185       TSL_SCKey_PreDetectTreatment( );
 337  00a1 cd0124        	call	_TSL_SCKey_PreDetectTreatment
 339                     ; 186       break;
 341  00a4 2030          	jra	L711
 342  00a6               L76:
 343                     ; 188     case DETECTED_STATE:
 343                     ; 189       if ( TSL_SCKey_CheckErrorCondition() )
 345  00a6 cd0233        	call	_TSL_SCKey_CheckErrorCondition
 347  00a9 4d            	tnz	a
 348  00aa 2705          	jreq	L321
 349                     ; 191         TSL_SCKey_SetErrorState();
 351  00ac cd0000        	call	_TSL_SCKey_SetErrorState
 353                     ; 192         break;
 355  00af 2025          	jra	L711
 356  00b1               L321:
 357                     ; 194       TSL_SCKey_DetectedTreatment( );
 359  00b1 cd0156        	call	_TSL_SCKey_DetectedTreatment
 361                     ; 195       TSL_SCKey_CheckDisabled( );
 363                     ; 196       break;
 365  00b4 2018          	jp	L77
 366  00b6               L17:
 367                     ; 198     case POST_DETECTED_STATE:
 367                     ; 199       TSL_SCKey_PostDetectTreatment( );
 369  00b6 cd0192        	call	_TSL_SCKey_PostDetectTreatment
 371                     ; 200       break;
 373  00b9 201b          	jra	L711
 374  00bb               L37:
 375                     ; 202     case PRE_CALIBRATION_STATE:
 375                     ; 203       TSL_SCKey_PreRecalibrationTreatment( );
 377  00bb cd01ca        	call	_TSL_SCKey_PreRecalibrationTreatment
 379                     ; 204       break;
 381  00be 2016          	jra	L711
 382  00c0               L57:
 383                     ; 206     case CALIBRATION_STATE:
 383                     ; 207       if ( TSL_SCKey_CheckErrorCondition() )
 385  00c0 cd0233        	call	_TSL_SCKey_CheckErrorCondition
 387  00c3 4d            	tnz	a
 388  00c4 2705          	jreq	L521
 389                     ; 209         TSL_SCKey_SetErrorState();
 391  00c6 cd0000        	call	_TSL_SCKey_SetErrorState
 393                     ; 210         break;
 395  00c9 200b          	jra	L711
 396  00cb               L521:
 397                     ; 212       TSL_SCKey_CalibrationTreatment( );
 399  00cb cd01eb        	call	_TSL_SCKey_CalibrationTreatment
 401                     ; 213       TSL_SCKey_CheckDisabled( );
 403                     ; 214       break;
 405  00ce               L77:
 406                     ; 216     case ERROR_STATE:
 406                     ; 217       TSL_SCKey_CheckDisabled( );
 411  00ce cd0217        	call	_TSL_SCKey_CheckDisabled
 413                     ; 218       break;
 415  00d1 2003          	jra	L711
 416  00d3               L101:
 417                     ; 220     case DISABLED_STATE:
 417                     ; 221       TSL_SCKey_CheckEnabled( );
 419  00d3 cd0223        	call	_TSL_SCKey_CheckEnabled
 421                     ; 222       break;
 423  00d6               L711:
 424                     ; 232   TSL_TempGlobalSetting.whole |= pKeyStruct->Setting.whole;
 426  00d6 be00          	ldw	x,_pKeyStruct
 427  00d8 ee01          	ldw	x,(1,x)
 428  00da 01            	rrwa	x,a
 429  00db ba01          	or	a,_TSL_TempGlobalSetting+1
 430  00dd 01            	rrwa	x,a
 431  00de ba00          	or	a,_TSL_TempGlobalSetting
 432  00e0 01            	rrwa	x,a
 433  00e1 bf00          	ldw	_TSL_TempGlobalSetting,x
 434                     ; 233   TSL_TempGlobalState.whole |= pKeyStruct->State.whole;
 436  00e3 b600          	ld	a,_TSL_TempGlobalState
 437  00e5 92ca00        	or	a,[_pKeyStruct.w]
 438  00e8 b700          	ld	_TSL_TempGlobalState,a
 439                     ; 234   pKeyStruct->Setting.b.CHANGED = 0;
 441  00ea be00          	ldw	x,_pKeyStruct
 442  00ec e602          	ld	a,(2,x)
 443  00ee a4f7          	and	a,#247
 444  00f0 e702          	ld	(2,x),a
 445                     ; 236 }
 448  00f2 81            	ret	
 477                     ; 249 void TSL_SCKey_IdleTreatment(void)
 477                     ; 250 {
 478                     	switch	.text
 479  00f3               _TSL_SCKey_IdleTreatment:
 483                     ; 252   if (pKeyStruct->Channel.LastMeasRejectNb > MAX_REJECTED_MEASUREMENTS)
 485  00f3 be00          	ldw	x,_pKeyStruct
 486  00f5 e607          	ld	a,(7,x)
 487  00f7 a115          	cp	a,#21
 488  00f9 2501          	jrult	L341
 489                     ; 254     return;
 492  00fb 81            	ret	
 493  00fc               L341:
 494                     ; 268 	if (( Delta >= pKeyStruct->DetectThreshold ) || ( Delta <= pKeyStruct->RecalibrationThreshold ))
 496  00fc e60c          	ld	a,(12,x)
 497  00fe 5f            	clrw	x
 498  00ff 4d            	tnz	a
 499  0100 2a01          	jrpl	L47
 500  0102 53            	cplw	x
 501  0103               L47:
 502  0103 97            	ld	xl,a
 503  0104 b300          	cpw	x,_Delta
 504  0106 2d0e          	jrsle	L741
 506  0108 be00          	ldw	x,_pKeyStruct
 507  010a e60e          	ld	a,(14,x)
 508  010c 5f            	clrw	x
 509  010d 4d            	tnz	a
 510  010e 2a01          	jrpl	L67
 511  0110 53            	cplw	x
 512  0111               L67:
 513  0111 97            	ld	xl,a
 514  0112 b300          	cpw	x,_Delta
 515  0114 2f0d          	jrslt	L541
 516  0116               L741:
 517                     ; 271     TSL_SCKey_SetPreDetectState( );
 519  0116 cd0000        	call	_TSL_SCKey_SetPreDetectState
 521                     ; 272     if ( !DetectionIntegrator )
 523  0119 b600          	ld	a,_DetectionIntegrator
 524  011b 2606          	jrne	L541
 525                     ; 274       pKeyStruct->Channel.IntegratorCounter++;
 527  011d be00          	ldw	x,_pKeyStruct
 528  011f 6c0a          	inc	(10,x)
 529                     ; 275       TSL_SCKey_PreDetectTreatment( );
 531  0121 ad01          	call	_TSL_SCKey_PreDetectTreatment
 533  0123               L541:
 534                     ; 279 }
 537  0123 81            	ret	
 566                     ; 292 void TSL_SCKey_PreDetectTreatment(void)
 566                     ; 293 {
 567                     	switch	.text
 568  0124               _TSL_SCKey_PreDetectTreatment:
 572                     ; 299 	if ((pKeyStruct->Channel.LastMeasRejectNb <= MAX_REJECTED_MEASUREMENTS) &&
 572                     ; 300       (( Delta >= pKeyStruct->DetectThreshold ) || ( Delta <= pKeyStruct->RecalibrationThreshold )))
 574  0124 be00          	ldw	x,_pKeyStruct
 575  0126 e607          	ld	a,(7,x)
 576  0128 a115          	cp	a,#21
 577  012a 2426          	jruge	L361
 579  012c e60c          	ld	a,(12,x)
 580  012e 5f            	clrw	x
 581  012f 4d            	tnz	a
 582  0130 2a01          	jrpl	L601
 583  0132 53            	cplw	x
 584  0133               L601:
 585  0133 97            	ld	xl,a
 586  0134 b300          	cpw	x,_Delta
 587  0136 2d0e          	jrsle	L561
 589  0138 be00          	ldw	x,_pKeyStruct
 590  013a e60e          	ld	a,(14,x)
 591  013c 5f            	clrw	x
 592  013d 4d            	tnz	a
 593  013e 2a01          	jrpl	L011
 594  0140 53            	cplw	x
 595  0141               L011:
 596  0141 97            	ld	xl,a
 597  0142 b300          	cpw	x,_Delta
 598  0144 2f0c          	jrslt	L361
 599  0146               L561:
 600                     ; 303     TSL_SCKey_DES( );
 602  0146 cd0000        	call	_TSL_SCKey_DES
 604                     ; 304     pKeyStruct->Channel.IntegratorCounter--;
 606  0149 be00          	ldw	x,_pKeyStruct
 607  014b 6a0a          	dec	(10,x)
 608                     ; 305     if ( !pKeyStruct->Channel.IntegratorCounter )
 610  014d 2606          	jrne	L171
 611                     ; 307       TSL_SCKey_SetDetectedState( );
 615  014f cc0000        	jp	_TSL_SCKey_SetDetectedState
 616  0152               L361:
 617                     ; 312     TSL_SCKey_BackToIdleState( );
 619  0152 cd0000        	call	_TSL_SCKey_BackToIdleState
 621                     ; 313     return;
 624  0155               L171:
 625                     ; 316 }
 628  0155 81            	ret	
 658                     ; 329 void TSL_SCKey_DetectedTreatment(void)
 658                     ; 330 {
 659                     	switch	.text
 660  0156               _TSL_SCKey_DetectedTreatment:
 664                     ; 336 	if ((pKeyStruct->Channel.LastMeasRejectNb <= MAX_REJECTED_MEASUREMENTS) &&
 664                     ; 337       ((( Delta <= pKeyStruct->EndDetectThreshold )&&(Delta > 0)) || (( Delta >= pKeyStruct->RecalibrationThreshold)&&(Delta < 0))))		
 666  0156 be00          	ldw	x,_pKeyStruct
 667  0158 e607          	ld	a,(7,x)
 668  015a a115          	cp	a,#21
 669  015c 2431          	jruge	L302
 671  015e e60d          	ld	a,(13,x)
 672  0160 5f            	clrw	x
 673  0161 4d            	tnz	a
 674  0162 2a01          	jrpl	L221
 675  0164 53            	cplw	x
 676  0165               L221:
 677  0165 97            	ld	xl,a
 678  0166 b300          	cpw	x,_Delta
 679  0168 2f05          	jrslt	L702
 681  016a 9c            	rvf	
 682  016b be00          	ldw	x,_Delta
 683  016d 2c12          	jrsgt	L502
 684  016f               L702:
 686  016f be00          	ldw	x,_pKeyStruct
 687  0171 e60e          	ld	a,(14,x)
 688  0173 5f            	clrw	x
 689  0174 4d            	tnz	a
 690  0175 2a01          	jrpl	L421
 691  0177 53            	cplw	x
 692  0178               L421:
 693  0178 97            	ld	xl,a
 694  0179 b300          	cpw	x,_Delta
 695  017b 2c12          	jrsgt	L302
 697  017d be00          	ldw	x,_Delta
 698  017f 2a0e          	jrpl	L302
 699  0181               L502:
 700                     ; 340     TSL_SCKey_SetPostDetectState( );
 702  0181 cd0000        	call	_TSL_SCKey_SetPostDetectState
 704                     ; 341     if ( !EndDetectionIntegrator )
 706  0184 b600          	ld	a,_EndDetectionIntegrator
 707  0186 2606          	jrne	L112
 708                     ; 343       pKeyStruct->Channel.IntegratorCounter++;
 710  0188 be00          	ldw	x,_pKeyStruct
 711  018a 6c0a          	inc	(10,x)
 712                     ; 344       TSL_SCKey_PostDetectTreatment( );
 714  018c ad04          	call	_TSL_SCKey_PostDetectTreatment
 716  018e               L112:
 717                     ; 346     return;
 720  018e 81            	ret	
 721  018f               L302:
 722                     ; 349   TSL_SCKey_DetectionTimeout( );
 725                     ; 351 }
 728  018f cc0000        	jp	_TSL_SCKey_DetectionTimeout
 756                     ; 364 void TSL_SCKey_PostDetectTreatment(void)
 756                     ; 365 {
 757                     	switch	.text
 758  0192               _TSL_SCKey_PostDetectTreatment:
 762                     ; 371 	if ((pKeyStruct->Channel.LastMeasRejectNb <= MAX_REJECTED_MEASUREMENTS) &&
 762                     ; 372       ((( Delta <= pKeyStruct->EndDetectThreshold )&&(Delta > 0)) || (( Delta >= pKeyStruct->RecalibrationThreshold)&&(Delta < 0))))
 764  0192 be00          	ldw	x,_pKeyStruct
 765  0194 e607          	ld	a,(7,x)
 766  0196 a115          	cp	a,#21
 767  0198 242c          	jruge	L322
 769  019a e60d          	ld	a,(13,x)
 770  019c 5f            	clrw	x
 771  019d 4d            	tnz	a
 772  019e 2a01          	jrpl	L631
 773  01a0 53            	cplw	x
 774  01a1               L631:
 775  01a1 97            	ld	xl,a
 776  01a2 b300          	cpw	x,_Delta
 777  01a4 2f05          	jrslt	L722
 779  01a6 9c            	rvf	
 780  01a7 be00          	ldw	x,_Delta
 781  01a9 2c12          	jrsgt	L522
 782  01ab               L722:
 784  01ab be00          	ldw	x,_pKeyStruct
 785  01ad e60e          	ld	a,(14,x)
 786  01af 5f            	clrw	x
 787  01b0 4d            	tnz	a
 788  01b1 2a01          	jrpl	L041
 789  01b3 53            	cplw	x
 790  01b4               L041:
 791  01b4 97            	ld	xl,a
 792  01b5 b300          	cpw	x,_Delta
 793  01b7 2c0d          	jrsgt	L322
 795  01b9 be00          	ldw	x,_Delta
 796  01bb 2a09          	jrpl	L322
 797  01bd               L522:
 798                     ; 375     pKeyStruct->Channel.IntegratorCounter--;
 800  01bd be00          	ldw	x,_pKeyStruct
 801  01bf 6a0a          	dec	(10,x)
 802                     ; 376     if ( !pKeyStruct->Channel.IntegratorCounter )
 804  01c1 2606          	jrne	L332
 805                     ; 378       TSL_SCKey_SetIdleState( );
 809  01c3 cc0000        	jp	_TSL_SCKey_SetIdleState
 810  01c6               L322:
 811                     ; 384     TSL_SCKey_BackToDetectedState( );
 813  01c6 cd0000        	call	_TSL_SCKey_BackToDetectedState
 815  01c9               L332:
 816                     ; 386 }
 819  01c9 81            	ret	
 847                     ; 399 void TSL_SCKey_PreRecalibrationTreatment(void)
 847                     ; 400 {
 848                     	switch	.text
 849  01ca               _TSL_SCKey_PreRecalibrationTreatment:
 853                     ; 402   if ((pKeyStruct->Channel.LastMeasRejectNb <= MAX_REJECTED_MEASUREMENTS) &&
 853                     ; 403      (Delta <= pKeyStruct->RecalibrationThreshold))
 855  01ca be00          	ldw	x,_pKeyStruct
 856  01cc e607          	ld	a,(7,x)
 857  01ce a115          	cp	a,#21
 858  01d0 2415          	jruge	L542
 860  01d2 e60e          	ld	a,(14,x)
 861  01d4 5f            	clrw	x
 862  01d5 4d            	tnz	a
 863  01d6 2a01          	jrpl	L051
 864  01d8 53            	cplw	x
 865  01d9               L051:
 866  01d9 97            	ld	xl,a
 867  01da b300          	cpw	x,_Delta
 868  01dc 2f09          	jrslt	L542
 869                     ; 405     pKeyStruct->Channel.IntegratorCounter--;
 871  01de be00          	ldw	x,_pKeyStruct
 872  01e0 6a0a          	dec	(10,x)
 873                     ; 406     if ( !pKeyStruct->Channel.IntegratorCounter )
 875  01e2 2606          	jrne	L152
 876                     ; 408       TSL_SCKey_SetCalibrationState( );
 880  01e4 cc0000        	jp	_TSL_SCKey_SetCalibrationState
 881  01e7               L542:
 882                     ; 413     TSL_SCKey_BackToIdleState( );
 884  01e7 cd0000        	call	_TSL_SCKey_BackToIdleState
 886  01ea               L152:
 887                     ; 416 }
 890  01ea 81            	ret	
 916                     ; 429 void TSL_SCKey_CalibrationTreatment(void)
 916                     ; 430 {
 917                     	switch	.text
 918  01eb               _TSL_SCKey_CalibrationTreatment:
 922                     ; 432   if (pKeyStruct->Channel.LastMeasRejectNb <= MAX_REJECTED_MEASUREMENTS)
 924  01eb be00          	ldw	x,_pKeyStruct
 925  01ed e607          	ld	a,(7,x)
 926  01ef a115          	cp	a,#21
 927  01f1 2423          	jruge	L362
 928                     ; 434     pKeyStruct->Channel.Reference += pKeyStruct->Channel.LastMeas;
 930  01f3 9093          	ldw	y,x
 931  01f5 90ee05        	ldw	y,(5,y)
 932  01f8 90bf00        	ldw	c_y,y
 933  01fb 9093          	ldw	y,x
 934  01fd 90ee08        	ldw	y,(8,y)
 935  0200 72b90000      	addw	y,c_y
 936  0204 ef08          	ldw	(8,x),y
 937                     ; 435     pKeyStruct->Counter--;
 939  0206 6a03          	dec	(3,x)
 940                     ; 436     if ( !pKeyStruct->Counter )
 942  0208 260c          	jrne	L362
 943                     ; 439       pKeyStruct->Channel.Reference = (pKeyStruct->Channel.Reference >> 3);
 945  020a a603          	ld	a,#3
 946  020c               L061:
 947  020c 6408          	srl	(8,x)
 948  020e 6609          	rrc	(9,x)
 949  0210 4a            	dec	a
 950  0211 26f9          	jrne	L061
 951                     ; 440       TSL_SCKey_SetIdleState( );
 953  0213 cd0000        	call	_TSL_SCKey_SetIdleState
 955  0216               L362:
 956                     ; 444 }
 959  0216 81            	ret	
 985                     ; 457 void TSL_SCKey_CheckDisabled(void)
 985                     ; 458 {
 986                     	switch	.text
 987  0217               _TSL_SCKey_CheckDisabled:
 991                     ; 460   if ( !pKeyStruct->Setting.b.ENABLED )
 993  0217 be00          	ldw	x,_pKeyStruct
 994  0219 e602          	ld	a,(2,x)
 995  021b a502          	bcp	a,#2
 996  021d 2603          	jrne	L772
 997                     ; 462     TSL_SCKey_SetDisabledState( );
 999  021f cd0000        	call	_TSL_SCKey_SetDisabledState
1001  0222               L772:
1002                     ; 465 }
1005  0222 81            	ret	
1031                     ; 478 void TSL_SCKey_CheckEnabled(void)
1031                     ; 479 {
1032                     	switch	.text
1033  0223               _TSL_SCKey_CheckEnabled:
1037                     ; 481   if ( pKeyStruct->Setting.b.ENABLED && pKeyStruct->Setting.b.IMPLEMENTED )
1039  0223 be00          	ldw	x,_pKeyStruct
1040  0225 e602          	ld	a,(2,x)
1041  0227 a502          	bcp	a,#2
1042  0229 2707          	jreq	L113
1044  022b a501          	bcp	a,#1
1045  022d 2703          	jreq	L113
1046                     ; 483     TSL_SCKey_SetCalibrationState( );
1048  022f cd0000        	call	_TSL_SCKey_SetCalibrationState
1050  0232               L113:
1051                     ; 486 }
1054  0232 81            	ret	
1079                     ; 499 u8 TSL_SCKey_CheckErrorCondition(void)
1079                     ; 500 {
1080                     	switch	.text
1081  0233               _TSL_SCKey_CheckErrorCondition:
1085                     ; 502   if ( (pKeyStruct->Channel.LastMeas < SCKEY_MIN_ACQUISITION)
1085                     ; 503        || (pKeyStruct->Channel.LastMeas > SCKEY_MAX_ACQUISITION) )
1087  0233 be00          	ldw	x,_pKeyStruct
1088  0235 9093          	ldw	y,x
1089  0237 90ee05        	ldw	y,(5,y)
1090  023a 90a30096      	cpw	y,#150
1091  023e 250b          	jrult	L523
1093  0240 9093          	ldw	y,x
1094  0242 90ee05        	ldw	y,(5,y)
1095  0245 90a30bb9      	cpw	y,#3001
1096  0249 2503          	jrult	L323
1097  024b               L523:
1098                     ; 505     return 0xFF;  // Error case !
1100  024b a6ff          	ld	a,#255
1103  024d 81            	ret	
1104  024e               L323:
1105                     ; 508   return 0;
1107  024e 4f            	clr	a
1110  024f 81            	ret	
1123                     	xref	_TSL_SCKey_DetectionTimeout
1124                     	xref	_TSL_SCKey_DES
1125                     	xref	_TSL_SCKey_SetDisabledState
1126                     	xref	_TSL_SCKey_SetErrorState
1127                     	xref	_TSL_SCKey_BackToDetectedState
1128                     	xref	_TSL_SCKey_SetPostDetectState
1129                     	xref	_TSL_SCKey_SetDetectedState
1130                     	xref	_TSL_SCKey_SetPreDetectState
1131                     	xref	_TSL_SCKey_BackToIdleState
1132                     	xref	_TSL_SCKey_SetIdleState
1133                     	xref	_TSL_DeltaCalculation
1134                     	xref	_TSL_SetStructPointer
1135                     	xref.b	_TSL_TempGlobalState
1136                     	xref.b	_TSL_TempGlobalSetting
1137                     	xref.b	_Delta
1138                     	xref.b	_KeyIndex
1139                     	xref	_TSL_IO_Acquisition
1140                     	xref	_Table_SCKEY_BITS
1141                     	xref.b	_sTouchIO
1142                     	xref	_TSL_SCKey_SetCalibrationState
1143                     	xref.b	_EndDetectionIntegrator
1144                     	xref.b	_DetectionIntegrator
1145                     	xref.b	_sSCKeyInfo
1146                     	xref.b	_pKeyStruct
1147                     	xdef	_TSL_SCKey_CheckErrorCondition
1148                     	xdef	_TSL_SCKey_CheckEnabled
1149                     	xdef	_TSL_SCKey_CheckDisabled
1150                     	xdef	_TSL_SCKey_CalibrationTreatment
1151                     	xdef	_TSL_SCKey_PreRecalibrationTreatment
1152                     	xdef	_TSL_SCKey_PostDetectTreatment
1153                     	xdef	_TSL_SCKey_DetectedTreatment
1154                     	xdef	_TSL_SCKey_PreDetectTreatment
1155                     	xdef	_TSL_SCKey_IdleTreatment
1156                     	xdef	_TSL_SCKey_Process
1157                     	xdef	_TSL_SCKEY_P1_Acquisition
1158                     	xdef	_TSL_SCKey_Init
1159                     	xref.b	c_y
1178                     	end
