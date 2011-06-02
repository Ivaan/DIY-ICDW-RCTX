   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  18                     .const:	section	.text
  19  0000               _HSIDivFactor:
  20  0000 01            	dc.b	1
  21  0001 02            	dc.b	2
  22  0002 04            	dc.b	4
  23  0003 08            	dc.b	8
  24  0004               _CLKPrescTable:
  25  0004 01            	dc.b	1
  26  0005 02            	dc.b	2
  27  0006 04            	dc.b	4
  28  0007 08            	dc.b	8
  29  0008 0a            	dc.b	10
  30  0009 10            	dc.b	16
  31  000a 14            	dc.b	20
  32  000b 28            	dc.b	40
  61                     ; 64 void CLK_DeInit(void)
  61                     ; 65 {
  63                     	switch	.text
  64  0000               _CLK_DeInit:
  68                     ; 67     CLK->ICKR = CLK_ICKR_RESET_VALUE;
  70  0000 350150c0      	mov	20672,#1
  71                     ; 68     CLK->ECKR = CLK_ECKR_RESET_VALUE;
  73  0004 725f50c1      	clr	20673
  74                     ; 69     CLK->SWR  = CLK_SWR_RESET_VALUE;
  76  0008 35e150c4      	mov	20676,#225
  77                     ; 70     CLK->SWCR = CLK_SWCR_RESET_VALUE;
  79  000c 725f50c5      	clr	20677
  80                     ; 71     CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  82  0010 351850c6      	mov	20678,#24
  83                     ; 72     CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  85  0014 35ff50c7      	mov	20679,#255
  86                     ; 73     CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  88  0018 35ff50ca      	mov	20682,#255
  89                     ; 74     CLK->CSSR = CLK_CSSR_RESET_VALUE;
  91  001c 725f50c8      	clr	20680
  92                     ; 75     CLK->CCOR = CLK_CCOR_RESET_VALUE;
  94  0020 725f50c9      	clr	20681
  96  0024               L52:
  97                     ; 76     while (CLK->CCOR & CLK_CCOR_CCOEN)
  99  0024 720050c9fb    	btjt	20681,#0,L52
 100                     ; 78     CLK->CCOR = CLK_CCOR_RESET_VALUE;
 102  0029 725f50c9      	clr	20681
 103                     ; 79     CLK->CANCCR = CLK_CANCCR_RESET_VALUE;
 105  002d 725f50cb      	clr	20683
 106                     ; 80     CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 108  0031 725f50cc      	clr	20684
 109                     ; 81     CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 111  0035 725f50cd      	clr	20685
 112                     ; 83 }
 115  0039 81            	ret	
 171                     ; 94 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 171                     ; 95 {
 172                     	switch	.text
 173  003a               _CLK_FastHaltWakeUpCmd:
 177                     ; 98     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 179                     ; 100     if (NewState != DISABLE)
 181  003a 4d            	tnz	a
 182  003b 2705          	jreq	L75
 183                     ; 103         CLK->ICKR |= CLK_ICKR_FHWU;
 185  003d 721450c0      	bset	20672,#2
 188  0041 81            	ret	
 189  0042               L75:
 190                     ; 108         CLK->ICKR &= (u8)(~CLK_ICKR_FHWU);
 192  0042 721550c0      	bres	20672,#2
 193                     ; 111 }
 196  0046 81            	ret	
 231                     ; 118 void CLK_HSECmd(FunctionalState NewState)
 231                     ; 119 {
 232                     	switch	.text
 233  0047               _CLK_HSECmd:
 237                     ; 122     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 239                     ; 124     if (NewState != DISABLE)
 241  0047 4d            	tnz	a
 242  0048 2705          	jreq	L101
 243                     ; 127         CLK->ECKR |= CLK_ECKR_HSEEN;
 245  004a 721050c1      	bset	20673,#0
 248  004e 81            	ret	
 249  004f               L101:
 250                     ; 132         CLK->ECKR &= (u8)(~CLK_ECKR_HSEEN);
 252  004f 721150c1      	bres	20673,#0
 253                     ; 135 }
 256  0053 81            	ret	
 291                     ; 142 void CLK_HSICmd(FunctionalState NewState)
 291                     ; 143 {
 292                     	switch	.text
 293  0054               _CLK_HSICmd:
 297                     ; 146     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 299                     ; 148     if (NewState != DISABLE)
 301  0054 4d            	tnz	a
 302  0055 2705          	jreq	L321
 303                     ; 151         CLK->ICKR |= CLK_ICKR_HSIEN;
 305  0057 721050c0      	bset	20672,#0
 308  005b 81            	ret	
 309  005c               L321:
 310                     ; 156         CLK->ICKR &= (u8)(~CLK_ICKR_HSIEN);
 312  005c 721150c0      	bres	20672,#0
 313                     ; 159 }
 316  0060 81            	ret	
 351                     ; 166 void CLK_LSICmd(FunctionalState NewState)
 351                     ; 167 {
 352                     	switch	.text
 353  0061               _CLK_LSICmd:
 357                     ; 170     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 359                     ; 172     if (NewState != DISABLE)
 361  0061 4d            	tnz	a
 362  0062 2705          	jreq	L541
 363                     ; 175         CLK->ICKR |= CLK_ICKR_LSIEN;
 365  0064 721650c0      	bset	20672,#3
 368  0068 81            	ret	
 369  0069               L541:
 370                     ; 180         CLK->ICKR &= (u8)(~CLK_ICKR_LSIEN);
 372  0069 721750c0      	bres	20672,#3
 373                     ; 183 }
 376  006d 81            	ret	
 411                     ; 191 void CLK_CCOCmd(FunctionalState NewState)
 411                     ; 192 {
 412                     	switch	.text
 413  006e               _CLK_CCOCmd:
 417                     ; 195     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 419                     ; 197     if (NewState != DISABLE)
 421  006e 4d            	tnz	a
 422  006f 2705          	jreq	L761
 423                     ; 200         CLK->CCOR |= CLK_CCOR_CCOEN;
 425  0071 721050c9      	bset	20681,#0
 428  0075 81            	ret	
 429  0076               L761:
 430                     ; 205         CLK->CCOR &= (u8)(~CLK_CCOR_CCOEN);
 432  0076 721150c9      	bres	20681,#0
 433                     ; 208 }
 436  007a 81            	ret	
 471                     ; 217 void CLK_ClockSwitchCmd(FunctionalState NewState)
 471                     ; 218 {
 472                     	switch	.text
 473  007b               _CLK_ClockSwitchCmd:
 477                     ; 221     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 479                     ; 223     if (NewState != DISABLE )
 481  007b 4d            	tnz	a
 482  007c 2705          	jreq	L112
 483                     ; 226         CLK->SWCR |= CLK_SWCR_SWEN;
 485  007e 721250c5      	bset	20677,#1
 488  0082 81            	ret	
 489  0083               L112:
 490                     ; 231         CLK->SWCR &= (u8)(~CLK_SWCR_SWEN);
 492  0083 721350c5      	bres	20677,#1
 493                     ; 234 }
 496  0087 81            	ret	
 532                     ; 244 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 532                     ; 245 {
 533                     	switch	.text
 534  0088               _CLK_SlowActiveHaltWakeUpCmd:
 538                     ; 248     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 540                     ; 250     if (NewState != DISABLE)
 542  0088 4d            	tnz	a
 543  0089 2705          	jreq	L332
 544                     ; 253         CLK->ICKR |= CLK_ICKR_SWUAH;
 546  008b 721a50c0      	bset	20672,#5
 549  008f 81            	ret	
 550  0090               L332:
 551                     ; 258         CLK->ICKR &= (u8)(~CLK_ICKR_SWUAH);
 553  0090 721b50c0      	bres	20672,#5
 554                     ; 261 }
 557  0094 81            	ret	
 716                     ; 271 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 716                     ; 272 {
 717                     	switch	.text
 718  0095               _CLK_PeripheralClockConfig:
 720  0095 89            	pushw	x
 721       00000000      OFST:	set	0
 724                     ; 275     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 726                     ; 276     assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 728                     ; 278     if (((u8)CLK_Peripheral & (u8)0x10) == 0x00)
 730  0096 9e            	ld	a,xh
 731  0097 a510          	bcp	a,#16
 732  0099 2630          	jrne	L123
 733                     ; 280         if (NewState != DISABLE)
 735  009b 7b02          	ld	a,(OFST+2,sp)
 736  009d 2714          	jreq	L323
 737                     ; 283             CLK->PCKENR1 |= (u8)((u8)1 << ((u8)CLK_Peripheral & (u8)0x0F));
 739  009f 7b01          	ld	a,(OFST+1,sp)
 740  00a1 a40f          	and	a,#15
 741  00a3 5f            	clrw	x
 742  00a4 97            	ld	xl,a
 743  00a5 a601          	ld	a,#1
 744  00a7 5d            	tnzw	x
 745  00a8 2704          	jreq	L62
 746  00aa               L03:
 747  00aa 48            	sll	a
 748  00ab 5a            	decw	x
 749  00ac 26fc          	jrne	L03
 750  00ae               L62:
 751  00ae ca50c7        	or	a,20679
 753  00b1 2013          	jp	LC002
 754  00b3               L323:
 755                     ; 288             CLK->PCKENR1 &= (u8)(~(u8)(((u8)1 << ((u8)CLK_Peripheral & (u8)0x0F))));
 757  00b3 7b01          	ld	a,(OFST+1,sp)
 758  00b5 a40f          	and	a,#15
 759  00b7 5f            	clrw	x
 760  00b8 97            	ld	xl,a
 761  00b9 a601          	ld	a,#1
 762  00bb 5d            	tnzw	x
 763  00bc 2704          	jreq	L23
 764  00be               L43:
 765  00be 48            	sll	a
 766  00bf 5a            	decw	x
 767  00c0 26fc          	jrne	L43
 768  00c2               L23:
 769  00c2 43            	cpl	a
 770  00c3 c450c7        	and	a,20679
 771  00c6               LC002:
 772  00c6 c750c7        	ld	20679,a
 773  00c9 202e          	jra	L723
 774  00cb               L123:
 775                     ; 293         if (NewState != DISABLE)
 777  00cb 7b02          	ld	a,(OFST+2,sp)
 778  00cd 2714          	jreq	L133
 779                     ; 296             CLK->PCKENR2 |= (u8)((u8)1 << ((u8)CLK_Peripheral & (u8)0x0F));
 781  00cf 7b01          	ld	a,(OFST+1,sp)
 782  00d1 a40f          	and	a,#15
 783  00d3 5f            	clrw	x
 784  00d4 97            	ld	xl,a
 785  00d5 a601          	ld	a,#1
 786  00d7 5d            	tnzw	x
 787  00d8 2704          	jreq	L63
 788  00da               L04:
 789  00da 48            	sll	a
 790  00db 5a            	decw	x
 791  00dc 26fc          	jrne	L04
 792  00de               L63:
 793  00de ca50ca        	or	a,20682
 795  00e1 2013          	jp	LC001
 796  00e3               L133:
 797                     ; 301             CLK->PCKENR2 &= (u8)(~(u8)(((u8)1 << ((u8)CLK_Peripheral & (u8)0x0F))));
 799  00e3 7b01          	ld	a,(OFST+1,sp)
 800  00e5 a40f          	and	a,#15
 801  00e7 5f            	clrw	x
 802  00e8 97            	ld	xl,a
 803  00e9 a601          	ld	a,#1
 804  00eb 5d            	tnzw	x
 805  00ec 2704          	jreq	L24
 806  00ee               L44:
 807  00ee 48            	sll	a
 808  00ef 5a            	decw	x
 809  00f0 26fc          	jrne	L44
 810  00f2               L24:
 811  00f2 43            	cpl	a
 812  00f3 c450ca        	and	a,20682
 813  00f6               LC001:
 814  00f6 c750ca        	ld	20682,a
 815  00f9               L723:
 816                     ; 305 }
 819  00f9 85            	popw	x
 820  00fa 81            	ret	
1008                     ; 318 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1008                     ; 319 {
1009                     	switch	.text
1010  00fb               _CLK_ClockSwitchConfig:
1012  00fb 89            	pushw	x
1013  00fc 5204          	subw	sp,#4
1014       00000004      OFST:	set	4
1017                     ; 322     u16 DownCounter = CLK_TIMEOUT;
1019  00fe ae0491        	ldw	x,#1169
1020  0101 1f03          	ldw	(OFST-1,sp),x
1021                     ; 323     ErrorStatus Swif = ERROR;
1023                     ; 326     assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1025                     ; 327     assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1027                     ; 328     assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1029                     ; 329     assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1031                     ; 332     clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1033  0103 c650c3        	ld	a,20675
1034  0106 6b01          	ld	(OFST-3,sp),a
1035                     ; 335     if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1037  0108 7b05          	ld	a,(OFST+1,sp)
1038  010a 4a            	dec	a
1039  010b 262d          	jrne	L544
1040                     ; 339         CLK->SWCR |= CLK_SWCR_SWEN;
1042  010d 721250c5      	bset	20677,#1
1043                     ; 342         if (ITState != DISABLE)
1045  0111 7b09          	ld	a,(OFST+5,sp)
1046  0113 2706          	jreq	L744
1047                     ; 344             CLK->SWCR |= CLK_SWCR_SWIEN;
1049  0115 721450c5      	bset	20677,#2
1051  0119 2004          	jra	L154
1052  011b               L744:
1053                     ; 348             CLK->SWCR &= (u8)(~CLK_SWCR_SWIEN);
1055  011b 721550c5      	bres	20677,#2
1056  011f               L154:
1057                     ; 352         CLK->SWR = (u8)CLK_NewClock;
1059  011f 7b06          	ld	a,(OFST+2,sp)
1060  0121 c750c4        	ld	20676,a
1062  0124 2003          	jra	L754
1063  0126               L354:
1064                     ; 356             DownCounter--;
1066  0126 5a            	decw	x
1067  0127 1f03          	ldw	(OFST-1,sp),x
1068  0129               L754:
1069                     ; 354         while (((CLK->SWCR & CLK_SWCR_SWBSY) && (DownCounter != 0)))
1071  0129 720150c504    	btjf	20677,#0,L364
1073  012e 1e03          	ldw	x,(OFST-1,sp)
1074  0130 26f4          	jrne	L354
1075  0132               L364:
1076                     ; 359         if (DownCounter != 0)
1078  0132 1e03          	ldw	x,(OFST-1,sp)
1079                     ; 361             Swif = SUCCESS;
1081  0134 2617          	jrne	LC003
1082                     ; 365             Swif = ERROR;
1084  0136 0f02          	clr	(OFST-2,sp)
1085  0138 2017          	jra	L174
1086  013a               L544:
1087                     ; 373         if (ITState != DISABLE)
1089  013a 7b09          	ld	a,(OFST+5,sp)
1090  013c 2706          	jreq	L374
1091                     ; 375             CLK->SWCR |= CLK_SWCR_SWIEN;
1093  013e 721450c5      	bset	20677,#2
1095  0142 2004          	jra	L574
1096  0144               L374:
1097                     ; 379             CLK->SWCR &= (u8)(~CLK_SWCR_SWIEN);
1099  0144 721550c5      	bres	20677,#2
1100  0148               L574:
1101                     ; 383         CLK->SWR = (u8)CLK_NewClock;
1103  0148 7b06          	ld	a,(OFST+2,sp)
1104  014a c750c4        	ld	20676,a
1105                     ; 387         Swif = SUCCESS;
1107  014d               LC003:
1109  014d a601          	ld	a,#1
1110  014f 6b02          	ld	(OFST-2,sp),a
1111  0151               L174:
1112                     ; 392     if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1114  0151 7b0a          	ld	a,(OFST+6,sp)
1115  0153 260c          	jrne	L774
1117  0155 7b01          	ld	a,(OFST-3,sp)
1118  0157 a1e1          	cp	a,#225
1119  0159 2606          	jrne	L774
1120                     ; 394         CLK->ICKR &= (u8)(~CLK_ICKR_HSIEN);
1122  015b 721150c0      	bres	20672,#0
1124  015f 201e          	jra	L105
1125  0161               L774:
1126                     ; 396     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1128  0161 7b0a          	ld	a,(OFST+6,sp)
1129  0163 260c          	jrne	L305
1131  0165 7b01          	ld	a,(OFST-3,sp)
1132  0167 a1d2          	cp	a,#210
1133  0169 2606          	jrne	L305
1134                     ; 398         CLK->ICKR &= (u8)(~CLK_ICKR_LSIEN);
1136  016b 721750c0      	bres	20672,#3
1138  016f 200e          	jra	L105
1139  0171               L305:
1140                     ; 400     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1142  0171 7b0a          	ld	a,(OFST+6,sp)
1143  0173 260a          	jrne	L105
1145  0175 7b01          	ld	a,(OFST-3,sp)
1146  0177 a1b4          	cp	a,#180
1147  0179 2604          	jrne	L105
1148                     ; 402         CLK->ECKR &= (u8)(~CLK_ECKR_HSEEN);
1150  017b 721150c1      	bres	20673,#0
1151  017f               L105:
1152                     ; 405     return(Swif);
1154  017f 7b02          	ld	a,(OFST-2,sp)
1157  0181 5b06          	addw	sp,#6
1158  0183 81            	ret	
1296                     ; 415 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1296                     ; 416 {
1297                     	switch	.text
1298  0184               _CLK_HSIPrescalerConfig:
1300  0184 88            	push	a
1301       00000000      OFST:	set	0
1304                     ; 419     assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1306                     ; 422     CLK->CKDIVR &= (u8)(~CLK_CKDIVR_HSIDIV);
1308  0185 c650c6        	ld	a,20678
1309  0188 a4e7          	and	a,#231
1310  018a c750c6        	ld	20678,a
1311                     ; 425     CLK->CKDIVR |= (u8)HSIPrescaler;
1313  018d c650c6        	ld	a,20678
1314  0190 1a01          	or	a,(OFST+1,sp)
1315  0192 c750c6        	ld	20678,a
1316                     ; 427 }
1319  0195 84            	pop	a
1320  0196 81            	ret	
1455                     ; 438 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1455                     ; 439 {
1456                     	switch	.text
1457  0197               _CLK_CCOConfig:
1459  0197 88            	push	a
1460       00000000      OFST:	set	0
1463                     ; 442     assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1465                     ; 445     CLK->CCOR &= (u8)(~CLK_CCOR_CCOSEL);
1467  0198 c650c9        	ld	a,20681
1468  019b a4e1          	and	a,#225
1469  019d c750c9        	ld	20681,a
1470                     ; 448     CLK->CCOR |= (u8)CLK_CCO;
1472  01a0 c650c9        	ld	a,20681
1473  01a3 1a01          	or	a,(OFST+1,sp)
1474  01a5 c750c9        	ld	20681,a
1475                     ; 451     CLK->CCOR |= CLK_CCOR_CCOEN;
1477                     ; 453 }
1480  01a8 84            	pop	a
1481  01a9 721050c9      	bset	20681,#0
1482  01ad 81            	ret	
1547                     ; 463 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1547                     ; 464 {
1548                     	switch	.text
1549  01ae               _CLK_ITConfig:
1551  01ae 89            	pushw	x
1552       00000000      OFST:	set	0
1555                     ; 467     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1557                     ; 468     assert_param(IS_CLK_IT_OK(CLK_IT));
1559                     ; 470     if (NewState != DISABLE)
1561  01af 9f            	ld	a,xl
1562  01b0 4d            	tnz	a
1563  01b1 2715          	jreq	L507
1564                     ; 472         switch (CLK_IT)
1566  01b3 9e            	ld	a,xh
1568                     ; 480         default:
1568                     ; 481             break;
1569  01b4 a00c          	sub	a,#12
1570  01b6 270a          	jreq	L146
1571  01b8 a010          	sub	a,#16
1572  01ba 2620          	jrne	L317
1573                     ; 474         case CLK_IT_SWIF: /* Enable the clock switch interrupt */
1573                     ; 475             CLK->SWCR |= CLK_SWCR_SWIEN;
1575  01bc 721450c5      	bset	20677,#2
1576                     ; 476             break;
1578  01c0 201a          	jra	L317
1579  01c2               L146:
1580                     ; 477         case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
1580                     ; 478             CLK->CSSR |= CLK_CSSR_CSSDIE;
1582  01c2 721450c8      	bset	20680,#2
1583                     ; 479             break;
1585  01c6 2014          	jra	L317
1586                     ; 480         default:
1586                     ; 481             break;
1589  01c8               L507:
1590                     ; 486         switch (CLK_IT)
1592  01c8 7b01          	ld	a,(OFST+1,sp)
1594                     ; 494         default:
1594                     ; 495             break;
1595  01ca a00c          	sub	a,#12
1596  01cc 270a          	jreq	L746
1597  01ce a010          	sub	a,#16
1598  01d0 260a          	jrne	L317
1599                     ; 488         case CLK_IT_SWIF: /* Disable the clock switch interrupt */
1599                     ; 489             CLK->SWCR  &= (u8)(~CLK_SWCR_SWIEN);
1601  01d2 721550c5      	bres	20677,#2
1602                     ; 490             break;
1604  01d6 2004          	jra	L317
1605  01d8               L746:
1606                     ; 491         case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
1606                     ; 492             CLK->CSSR &= (u8)(~CLK_CSSR_CSSDIE);
1608  01d8 721550c8      	bres	20680,#2
1609                     ; 493             break;
1610  01dc               L317:
1611                     ; 499 }
1614  01dc 85            	popw	x
1615  01dd 81            	ret	
1616                     ; 494         default:
1616                     ; 495             break;
1652                     ; 506 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef ClockPrescaler)
1652                     ; 507 {
1653                     	switch	.text
1654  01de               _CLK_SYSCLKConfig:
1656  01de 88            	push	a
1657       00000000      OFST:	set	0
1660                     ; 510     assert_param(IS_CLK_PRESCALER_OK(ClockPrescaler));
1662                     ; 512     if (((u8)ClockPrescaler & (u8)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
1664  01df a580          	bcp	a,#128
1665  01e1 260e          	jrne	L737
1666                     ; 514         CLK->CKDIVR &= (u8)(~CLK_CKDIVR_HSIDIV);
1668  01e3 c650c6        	ld	a,20678
1669  01e6 a4e7          	and	a,#231
1670  01e8 c750c6        	ld	20678,a
1671                     ; 515         CLK->CKDIVR |= (u8)((u8)ClockPrescaler & (u8)CLK_CKDIVR_HSIDIV);
1673  01eb 7b01          	ld	a,(OFST+1,sp)
1674  01ed a418          	and	a,#24
1676  01ef 200c          	jra	L147
1677  01f1               L737:
1678                     ; 519         CLK->CKDIVR &= (u8)(~CLK_CKDIVR_CPUDIV);
1680  01f1 c650c6        	ld	a,20678
1681  01f4 a4f8          	and	a,#248
1682  01f6 c750c6        	ld	20678,a
1683                     ; 520         CLK->CKDIVR |= (u8)((u8)ClockPrescaler & (u8)CLK_CKDIVR_CPUDIV);
1685  01f9 7b01          	ld	a,(OFST+1,sp)
1686  01fb a407          	and	a,#7
1687  01fd               L147:
1688  01fd ca50c6        	or	a,20678
1689  0200 c750c6        	ld	20678,a
1690                     ; 523 }
1693  0203 84            	pop	a
1694  0204 81            	ret	
1750                     ; 530 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
1750                     ; 531 {
1751                     	switch	.text
1752  0205               _CLK_SWIMConfig:
1756                     ; 534     assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
1758                     ; 536     if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
1760  0205 4d            	tnz	a
1761  0206 2705          	jreq	L177
1762                     ; 539         CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
1764  0208 721050cd      	bset	20685,#0
1767  020c 81            	ret	
1768  020d               L177:
1769                     ; 544         CLK->SWIMCCR &= (u8)(~CLK_SWIMCCR_SWIMDIV);
1771  020d 721150cd      	bres	20685,#0
1772                     ; 547 }
1775  0211 81            	ret	
1872                     ; 555 void CLK_CANConfig(CLK_CANDivider_TypeDef CLK_CANDivider)
1872                     ; 556 {
1873                     	switch	.text
1874  0212               _CLK_CANConfig:
1876  0212 88            	push	a
1877       00000000      OFST:	set	0
1880                     ; 559     assert_param(IS_CLK_CANDIVIDER_OK(CLK_CANDivider));
1882                     ; 562     CLK->CANCCR &= (u8)(~CLK_CANCCR_CANDIV);
1884  0213 c650cb        	ld	a,20683
1885  0216 a4f8          	and	a,#248
1886  0218 c750cb        	ld	20683,a
1887                     ; 565     CLK->CANCCR |= (u8)CLK_CANDivider;
1889  021b c650cb        	ld	a,20683
1890  021e 1a01          	or	a,(OFST+1,sp)
1891  0220 c750cb        	ld	20683,a
1892                     ; 567 }
1895  0223 84            	pop	a
1896  0224 81            	ret	
1920                     ; 577 void CLK_ClockSecuritySystemEnable(void)
1920                     ; 578 {
1921                     	switch	.text
1922  0225               _CLK_ClockSecuritySystemEnable:
1926                     ; 580     CLK->CSSR |= CLK_CSSR_CSSEN;
1928  0225 721050c8      	bset	20680,#0
1929                     ; 581 }
1932  0229 81            	ret	
1957                     ; 590 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
1957                     ; 591 {
1958                     	switch	.text
1959  022a               _CLK_GetSYSCLKSource:
1963                     ; 592     return((CLK_Source_TypeDef)CLK->CMSR);
1965  022a c650c3        	ld	a,20675
1968  022d 81            	ret	
2031                     ; 602 u32 CLK_GetClockFreq(void)
2031                     ; 603 {
2032                     	switch	.text
2033  022e               _CLK_GetClockFreq:
2035  022e 5209          	subw	sp,#9
2036       00000009      OFST:	set	9
2039                     ; 605     u32 clockfrequency = 0;
2041                     ; 606     CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
2043                     ; 607     u8 tmp = 0, presc = 0;
2047                     ; 610     clocksource = (CLK_Source_TypeDef)CLK->CMSR;
2049  0230 c650c3        	ld	a,20675
2050  0233 6b09          	ld	(OFST+0,sp),a
2051                     ; 612     if (clocksource == CLK_SOURCE_HSI)
2053  0235 a1e1          	cp	a,#225
2054  0237 2634          	jrne	L1111
2055                     ; 614         tmp = (u8)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
2057  0239 c650c6        	ld	a,20678
2058  023c a418          	and	a,#24
2059  023e 44            	srl	a
2060  023f 44            	srl	a
2061  0240 44            	srl	a
2062                     ; 615         tmp = (u8)(tmp >> 3);
2064                     ; 616         presc = HSIDivFactor[tmp];
2066  0241 5f            	clrw	x
2067  0242 97            	ld	xl,a
2068  0243 d60000        	ld	a,(_HSIDivFactor,x)
2069  0246 6b09          	ld	(OFST+0,sp),a
2070                     ; 617         clockfrequency = HSI_VALUE / presc;
2072  0248 b703          	ld	c_lreg+3,a
2073  024a 3f02          	clr	c_lreg+2
2074  024c 3f01          	clr	c_lreg+1
2075  024e 3f00          	clr	c_lreg
2076  0250 96            	ldw	x,sp
2077  0251 5c            	incw	x
2078  0252 cd0000        	call	c_rtol
2080  0255 ae2400        	ldw	x,#9216
2081  0258 bf02          	ldw	c_lreg+2,x
2082  025a ae00f4        	ldw	x,#244
2083  025d bf00          	ldw	c_lreg,x
2084  025f 96            	ldw	x,sp
2085  0260 5c            	incw	x
2086  0261 cd0000        	call	c_ludv
2088  0264 96            	ldw	x,sp
2089  0265 1c0005        	addw	x,#OFST-4
2090  0268 cd0000        	call	c_rtol
2093  026b 2018          	jra	L3111
2094  026d               L1111:
2095                     ; 619     else if ( clocksource == CLK_SOURCE_LSI)
2097  026d a1d2          	cp	a,#210
2098  026f 260a          	jrne	L5111
2099                     ; 621         clockfrequency = LSI_VALUE;
2101  0271 aef400        	ldw	x,#62464
2102  0274 1f07          	ldw	(OFST-2,sp),x
2103  0276 ae0001        	ldw	x,#1
2105  0279 2008          	jp	LC004
2106  027b               L5111:
2107                     ; 625         clockfrequency = HSE_VALUE;
2109  027b ae3600        	ldw	x,#13824
2110  027e 1f07          	ldw	(OFST-2,sp),x
2111  0280 ae016e        	ldw	x,#366
2112  0283               LC004:
2113  0283 1f05          	ldw	(OFST-4,sp),x
2114  0285               L3111:
2115                     ; 628     return((u32)clockfrequency);
2117  0285 96            	ldw	x,sp
2118  0286 1c0005        	addw	x,#OFST-4
2119  0289 cd0000        	call	c_ltor
2123  028c 5b09          	addw	sp,#9
2124  028e 81            	ret	
2223                     ; 639 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2223                     ; 640 {
2224                     	switch	.text
2225  028f               _CLK_AdjustHSICalibrationValue:
2227  028f 88            	push	a
2228       00000000      OFST:	set	0
2231                     ; 643     assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2233                     ; 646     CLK->HSITRIMR = (u8)((CLK->HSITRIMR & (u8)(~CLK_HSITRIMR_HSITRIM))|((u8)CLK_HSICalibrationValue));
2235  0290 c650cc        	ld	a,20684
2236  0293 a4f8          	and	a,#248
2237  0295 1a01          	or	a,(OFST+1,sp)
2238  0297 c750cc        	ld	20684,a
2239                     ; 648 }
2242  029a 84            	pop	a
2243  029b 81            	ret	
2267                     ; 660 void CLK_SYSCLKEmergencyClear(void)
2267                     ; 661 {
2268                     	switch	.text
2269  029c               _CLK_SYSCLKEmergencyClear:
2273                     ; 662     CLK->SWCR &= (u8)(~CLK_SWCR_SWBSY);
2275  029c 721150c5      	bres	20677,#0
2276                     ; 663 }
2279  02a0 81            	ret	
2432                     ; 672 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2432                     ; 673 {
2433                     	switch	.text
2434  02a1               _CLK_GetFlagStatus:
2436  02a1 89            	pushw	x
2437  02a2 5203          	subw	sp,#3
2438       00000003      OFST:	set	3
2441                     ; 675     u16 statusreg = 0;
2443                     ; 676     u8 tmpreg = 0;
2445                     ; 677     FlagStatus bitstatus = RESET;
2447                     ; 680     assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2449                     ; 683     statusreg = (u16)((u16)CLK_FLAG & (u16)0xFF00);
2451  02a4 01            	rrwa	x,a
2452  02a5 4f            	clr	a
2453  02a6 02            	rlwa	x,a
2454  02a7 1f01          	ldw	(OFST-2,sp),x
2455                     ; 686     if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2457  02a9 a30100        	cpw	x,#256
2458  02ac 2605          	jrne	L3621
2459                     ; 688         tmpreg = CLK->ICKR;
2461  02ae c650c0        	ld	a,20672
2463  02b1 2021          	jra	L5621
2464  02b3               L3621:
2465                     ; 690     else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2467  02b3 a30200        	cpw	x,#512
2468  02b6 2605          	jrne	L7621
2469                     ; 692         tmpreg = CLK->ECKR;
2471  02b8 c650c1        	ld	a,20673
2473  02bb 2017          	jra	L5621
2474  02bd               L7621:
2475                     ; 694     else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2477  02bd a30300        	cpw	x,#768
2478  02c0 2605          	jrne	L3721
2479                     ; 696         tmpreg = CLK->SWCR;
2481  02c2 c650c5        	ld	a,20677
2483  02c5 200d          	jra	L5621
2484  02c7               L3721:
2485                     ; 698     else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2487  02c7 a30400        	cpw	x,#1024
2488  02ca 2605          	jrne	L7721
2489                     ; 700         tmpreg = CLK->CSSR;
2491  02cc c650c8        	ld	a,20680
2493  02cf 2003          	jra	L5621
2494  02d1               L7721:
2495                     ; 704         tmpreg = CLK->CCOR;
2497  02d1 c650c9        	ld	a,20681
2498  02d4               L5621:
2499  02d4 6b03          	ld	(OFST+0,sp),a
2500                     ; 707     if ((tmpreg & (u8)CLK_FLAG) != (u8)RESET)
2502  02d6 7b05          	ld	a,(OFST+2,sp)
2503  02d8 1503          	bcp	a,(OFST+0,sp)
2504  02da 2704          	jreq	L3031
2505                     ; 709         bitstatus = SET;
2507  02dc a601          	ld	a,#1
2509  02de 2001          	jra	L5031
2510  02e0               L3031:
2511                     ; 713         bitstatus = RESET;
2513  02e0 4f            	clr	a
2514  02e1               L5031:
2515                     ; 717     return((FlagStatus)bitstatus);
2519  02e1 5b05          	addw	sp,#5
2520  02e3 81            	ret	
2566                     ; 727 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
2566                     ; 728 {
2567                     	switch	.text
2568  02e4               _CLK_GetITStatus:
2570  02e4 88            	push	a
2571  02e5 88            	push	a
2572       00000001      OFST:	set	1
2575                     ; 730     ITStatus bitstatus = RESET;
2577                     ; 733     assert_param(IS_CLK_IT_OK(CLK_IT));
2579                     ; 735     if (CLK_IT == CLK_IT_SWIF)
2581  02e6 a11c          	cp	a,#28
2582  02e8 2609          	jrne	L1331
2583                     ; 738         if ((CLK->SWCR & (u8)CLK_IT) == (u8)0x0C)
2585  02ea c450c5        	and	a,20677
2586  02ed a10c          	cp	a,#12
2587  02ef 260f          	jrne	L1431
2588                     ; 740             bitstatus = SET;
2590  02f1 2009          	jp	LC006
2591                     ; 744             bitstatus = RESET;
2592  02f3               L1331:
2593                     ; 750         if ((CLK->CSSR & (u8)CLK_IT) == (u8)0x0C)
2595  02f3 c650c8        	ld	a,20680
2596  02f6 1402          	and	a,(OFST+1,sp)
2597  02f8 a10c          	cp	a,#12
2598  02fa 2604          	jrne	L1431
2599                     ; 752             bitstatus = SET;
2601  02fc               LC006:
2603  02fc a601          	ld	a,#1
2605  02fe 2001          	jra	L7331
2606  0300               L1431:
2607                     ; 756             bitstatus = RESET;
2610  0300 4f            	clr	a
2611  0301               L7331:
2612                     ; 761     return bitstatus;
2616  0301 85            	popw	x
2617  0302 81            	ret	
2653                     ; 771 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
2653                     ; 772 {
2654                     	switch	.text
2655  0303               _CLK_ClearITPendingBit:
2659                     ; 775     assert_param(IS_CLK_IT_OK(CLK_IT));
2661                     ; 777     if (CLK_IT == (u8)CLK_IT_CSSD)
2663  0303 a10c          	cp	a,#12
2664  0305 2605          	jrne	L3631
2665                     ; 780         CLK->CSSR &= (u8)(~CLK_CSSR_CSSD);
2667  0307 721750c8      	bres	20680,#3
2670  030b 81            	ret	
2671  030c               L3631:
2672                     ; 785         CLK->SWCR &= (u8)(~CLK_SWCR_SWIF);
2674  030c 721750c5      	bres	20677,#3
2675                     ; 788 }
2678  0310 81            	ret	
2713                     	xdef	_CLKPrescTable
2714                     	xdef	_HSIDivFactor
2715                     	xdef	_CLK_ClearITPendingBit
2716                     	xdef	_CLK_GetITStatus
2717                     	xdef	_CLK_GetFlagStatus
2718                     	xdef	_CLK_GetSYSCLKSource
2719                     	xdef	_CLK_GetClockFreq
2720                     	xdef	_CLK_AdjustHSICalibrationValue
2721                     	xdef	_CLK_SYSCLKEmergencyClear
2722                     	xdef	_CLK_ClockSecuritySystemEnable
2723                     	xdef	_CLK_CANConfig
2724                     	xdef	_CLK_SWIMConfig
2725                     	xdef	_CLK_SYSCLKConfig
2726                     	xdef	_CLK_ITConfig
2727                     	xdef	_CLK_CCOConfig
2728                     	xdef	_CLK_HSIPrescalerConfig
2729                     	xdef	_CLK_ClockSwitchConfig
2730                     	xdef	_CLK_PeripheralClockConfig
2731                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
2732                     	xdef	_CLK_FastHaltWakeUpCmd
2733                     	xdef	_CLK_ClockSwitchCmd
2734                     	xdef	_CLK_CCOCmd
2735                     	xdef	_CLK_LSICmd
2736                     	xdef	_CLK_HSICmd
2737                     	xdef	_CLK_HSECmd
2738                     	xdef	_CLK_DeInit
2739                     	xref.b	c_lreg
2740                     	xref.b	c_x
2759                     	xref	c_ltor
2760                     	xref	c_ludv
2761                     	xref	c_rtol
2762                     	end
