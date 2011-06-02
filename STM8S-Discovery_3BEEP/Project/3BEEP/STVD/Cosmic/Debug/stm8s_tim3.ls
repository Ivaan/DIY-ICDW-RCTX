   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  46                     ; 43 void TIM3_DeInit(void)
  46                     ; 44 {
  48                     	switch	.text
  49  0000               _TIM3_DeInit:
  53                     ; 46     TIM3->CR1 = (u8)TIM3_CR1_RESET_VALUE;
  55  0000 725f5320      	clr	21280
  56                     ; 47     TIM3->IER = (u8)TIM3_IER_RESET_VALUE;
  58  0004 725f5321      	clr	21281
  59                     ; 48     TIM3->SR2 = (u8)TIM3_SR2_RESET_VALUE;
  61  0008 725f5323      	clr	21283
  62                     ; 51     TIM3->CCER1 = (u8)TIM3_CCER1_RESET_VALUE;
  64  000c 725f5327      	clr	21287
  65                     ; 54     TIM3->CCER1 = (u8)TIM3_CCER1_RESET_VALUE;
  67  0010 725f5327      	clr	21287
  68                     ; 55     TIM3->CCMR1 = (u8)TIM3_CCMR1_RESET_VALUE;
  70  0014 725f5325      	clr	21285
  71                     ; 56     TIM3->CCMR2 = (u8)TIM3_CCMR2_RESET_VALUE;
  73  0018 725f5326      	clr	21286
  74                     ; 57     TIM3->CNTRH = (u8)TIM3_CNTRH_RESET_VALUE;
  76  001c 725f5328      	clr	21288
  77                     ; 58     TIM3->CNTRL = (u8)TIM3_CNTRL_RESET_VALUE;
  79  0020 725f5329      	clr	21289
  80                     ; 59     TIM3->PSCR = (u8)TIM3_PSCR_RESET_VALUE;
  82  0024 725f532a      	clr	21290
  83                     ; 60     TIM3->ARRH  = (u8)TIM3_ARRH_RESET_VALUE;
  85  0028 35ff532b      	mov	21291,#255
  86                     ; 61     TIM3->ARRL  = (u8)TIM3_ARRL_RESET_VALUE;
  88  002c 35ff532c      	mov	21292,#255
  89                     ; 62     TIM3->CCR1H = (u8)TIM3_CCR1H_RESET_VALUE;
  91  0030 725f532d      	clr	21293
  92                     ; 63     TIM3->CCR1L = (u8)TIM3_CCR1L_RESET_VALUE;
  94  0034 725f532e      	clr	21294
  95                     ; 64     TIM3->CCR2H = (u8)TIM3_CCR2H_RESET_VALUE;
  97  0038 725f532f      	clr	21295
  98                     ; 65     TIM3->CCR2L = (u8)TIM3_CCR2L_RESET_VALUE;
 100  003c 725f5330      	clr	21296
 101                     ; 66     TIM3->SR1 = (u8)TIM3_SR1_RESET_VALUE;
 103  0040 725f5322      	clr	21282
 104                     ; 67 }
 107  0044 81            	ret	
 275                     ; 76 void TIM3_TimeBaseInit( TIM3_Prescaler_TypeDef TIM3_Prescaler,
 275                     ; 77                         u16 TIM3_Period)
 275                     ; 78 {
 276                     	switch	.text
 277  0045               _TIM3_TimeBaseInit:
 279       00000000      OFST:	set	0
 282                     ; 80     TIM3->PSCR = (u8)(TIM3_Prescaler);
 284  0045 c7532a        	ld	21290,a
 285  0048 88            	push	a
 286                     ; 82     TIM3->ARRH = (u8)(TIM3_Period >> 8);
 288  0049 7b04          	ld	a,(OFST+4,sp)
 289  004b c7532b        	ld	21291,a
 290                     ; 83     TIM3->ARRL = (u8)(TIM3_Period);
 292  004e 7b05          	ld	a,(OFST+5,sp)
 293  0050 c7532c        	ld	21292,a
 294                     ; 84 }
 297  0053 84            	pop	a
 298  0054 81            	ret	
 455                     ; 94 void TIM3_OC1Init(TIM3_OCMode_TypeDef TIM3_OCMode,
 455                     ; 95                   TIM3_OutputState_TypeDef TIM3_OutputState,
 455                     ; 96                   u16 TIM3_Pulse,
 455                     ; 97                   TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
 455                     ; 98 {
 456                     	switch	.text
 457  0055               _TIM3_OC1Init:
 459  0055 89            	pushw	x
 460  0056 88            	push	a
 461       00000001      OFST:	set	1
 464                     ; 100     assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
 466                     ; 101     assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
 468                     ; 102     assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
 470                     ; 105     TIM3->CCER1 &= (u8)(~( TIM3_CCER1_CC1E | TIM3_CCER1_CC1P));
 472  0057 c65327        	ld	a,21287
 473  005a a4fc          	and	a,#252
 474  005c c75327        	ld	21287,a
 475                     ; 107     TIM3->CCER1 |= (u8)((TIM3_OutputState  & TIM3_CCER1_CC1E   ) | (TIM3_OCPolarity   & TIM3_CCER1_CC1P   ));
 477  005f 7b08          	ld	a,(OFST+7,sp)
 478  0061 a402          	and	a,#2
 479  0063 6b01          	ld	(OFST+0,sp),a
 480  0065 9f            	ld	a,xl
 481  0066 a401          	and	a,#1
 482  0068 1a01          	or	a,(OFST+0,sp)
 483  006a ca5327        	or	a,21287
 484  006d c75327        	ld	21287,a
 485                     ; 110     TIM3->CCMR1 = (u8)((TIM3->CCMR1 & (u8)(~TIM3_CCMR_OCM)) | (u8)TIM3_OCMode);
 487  0070 c65325        	ld	a,21285
 488  0073 a48f          	and	a,#143
 489  0075 1a02          	or	a,(OFST+1,sp)
 490  0077 c75325        	ld	21285,a
 491                     ; 113     TIM3->CCR1H = (u8)(TIM3_Pulse >> 8);
 493  007a 7b06          	ld	a,(OFST+5,sp)
 494  007c c7532d        	ld	21293,a
 495                     ; 114     TIM3->CCR1L = (u8)(TIM3_Pulse);
 497  007f 7b07          	ld	a,(OFST+6,sp)
 498  0081 c7532e        	ld	21294,a
 499                     ; 115 }
 502  0084 5b03          	addw	sp,#3
 503  0086 81            	ret	
 567                     ; 126 void TIM3_OC2Init(TIM3_OCMode_TypeDef TIM3_OCMode,
 567                     ; 127                   TIM3_OutputState_TypeDef TIM3_OutputState,
 567                     ; 128                   u16 TIM3_Pulse,
 567                     ; 129                   TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
 567                     ; 130 {
 568                     	switch	.text
 569  0087               _TIM3_OC2Init:
 571  0087 89            	pushw	x
 572  0088 88            	push	a
 573       00000001      OFST:	set	1
 576                     ; 132     assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
 578                     ; 133     assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
 580                     ; 134     assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
 582                     ; 138     TIM3->CCER1 &= (u8)(~( TIM3_CCER1_CC2E |  TIM3_CCER1_CC2P ));
 584  0089 c65327        	ld	a,21287
 585  008c a4cf          	and	a,#207
 586  008e c75327        	ld	21287,a
 587                     ; 140     TIM3->CCER1 |= (u8)((TIM3_OutputState  & TIM3_CCER1_CC2E   ) | (TIM3_OCPolarity   & TIM3_CCER1_CC2P ));
 589  0091 7b08          	ld	a,(OFST+7,sp)
 590  0093 a420          	and	a,#32
 591  0095 6b01          	ld	(OFST+0,sp),a
 592  0097 9f            	ld	a,xl
 593  0098 a410          	and	a,#16
 594  009a 1a01          	or	a,(OFST+0,sp)
 595  009c ca5327        	or	a,21287
 596  009f c75327        	ld	21287,a
 597                     ; 144     TIM3->CCMR2 = (u8)((TIM3->CCMR2 & (u8)(~TIM3_CCMR_OCM)) | (u8)TIM3_OCMode);
 599  00a2 c65326        	ld	a,21286
 600  00a5 a48f          	and	a,#143
 601  00a7 1a02          	or	a,(OFST+1,sp)
 602  00a9 c75326        	ld	21286,a
 603                     ; 148     TIM3->CCR2H = (u8)(TIM3_Pulse >> 8);
 605  00ac 7b06          	ld	a,(OFST+5,sp)
 606  00ae c7532f        	ld	21295,a
 607                     ; 149     TIM3->CCR2L = (u8)(TIM3_Pulse);
 609  00b1 7b07          	ld	a,(OFST+6,sp)
 610  00b3 c75330        	ld	21296,a
 611                     ; 150 }
 614  00b6 5b03          	addw	sp,#3
 615  00b8 81            	ret	
 799                     ; 161 void TIM3_ICInit(TIM3_Channel_TypeDef TIM3_Channel,
 799                     ; 162                  TIM3_ICPolarity_TypeDef TIM3_ICPolarity,
 799                     ; 163                  TIM3_ICSelection_TypeDef TIM3_ICSelection,
 799                     ; 164                  TIM3_ICPSC_TypeDef TIM3_ICPrescaler,
 799                     ; 165                  u8 TIM3_ICFilter)
 799                     ; 166 {
 800                     	switch	.text
 801  00b9               _TIM3_ICInit:
 803  00b9 89            	pushw	x
 804       00000000      OFST:	set	0
 807                     ; 168     assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
 809                     ; 169     assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
 811                     ; 170     assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
 813                     ; 171     assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
 815                     ; 172     assert_param(IS_TIM3_IC_FILTER_OK(TIM3_ICFilter));
 817                     ; 174     if (TIM3_Channel != TIM3_CHANNEL_2)
 819  00ba 9e            	ld	a,xh
 820  00bb 4a            	dec	a
 821  00bc 2714          	jreq	L343
 822                     ; 177         TI1_Config((u8)TIM3_ICPolarity,
 822                     ; 178                    (u8)TIM3_ICSelection,
 822                     ; 179                    (u8)TIM3_ICFilter);
 824  00be 7b07          	ld	a,(OFST+7,sp)
 825  00c0 88            	push	a
 826  00c1 7b06          	ld	a,(OFST+6,sp)
 827  00c3 97            	ld	xl,a
 828  00c4 7b03          	ld	a,(OFST+3,sp)
 829  00c6 95            	ld	xh,a
 830  00c7 cd0346        	call	L3_TI1_Config
 832  00ca 84            	pop	a
 833                     ; 182         TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
 835  00cb 7b06          	ld	a,(OFST+6,sp)
 836  00cd cd0274        	call	_TIM3_SetIC1Prescaler
 839  00d0 2012          	jra	L543
 840  00d2               L343:
 841                     ; 187         TI2_Config((u8)TIM3_ICPolarity,
 841                     ; 188                    (u8)TIM3_ICSelection,
 841                     ; 189                    (u8)TIM3_ICFilter);
 843  00d2 7b07          	ld	a,(OFST+7,sp)
 844  00d4 88            	push	a
 845  00d5 7b06          	ld	a,(OFST+6,sp)
 846  00d7 97            	ld	xl,a
 847  00d8 7b03          	ld	a,(OFST+3,sp)
 848  00da 95            	ld	xh,a
 849  00db cd0376        	call	L5_TI2_Config
 851  00de 84            	pop	a
 852                     ; 192         TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
 854  00df 7b06          	ld	a,(OFST+6,sp)
 855  00e1 cd0281        	call	_TIM3_SetIC2Prescaler
 857  00e4               L543:
 858                     ; 194 }
 861  00e4 85            	popw	x
 862  00e5 81            	ret	
 958                     ; 204 void TIM3_PWMIConfig(TIM3_Channel_TypeDef TIM3_Channel,
 958                     ; 205                      TIM3_ICPolarity_TypeDef TIM3_ICPolarity,
 958                     ; 206                      TIM3_ICSelection_TypeDef TIM3_ICSelection,
 958                     ; 207                      TIM3_ICPSC_TypeDef TIM3_ICPrescaler,
 958                     ; 208                      u8 TIM3_ICFilter)
 958                     ; 209 {
 959                     	switch	.text
 960  00e6               _TIM3_PWMIConfig:
 962  00e6 89            	pushw	x
 963  00e7 89            	pushw	x
 964       00000002      OFST:	set	2
 967                     ; 210     u8 icpolarity = (u8)TIM3_ICPOLARITY_RISING;
 969                     ; 211     u8 icselection = (u8)TIM3_ICSELECTION_DIRECTTI;
 971                     ; 214     assert_param(IS_TIM3_PWMI_CHANNEL_OK(TIM3_Channel));
 973                     ; 215     assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
 975                     ; 216     assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
 977                     ; 217     assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
 979                     ; 220     if (TIM3_ICPolarity != TIM3_ICPOLARITY_FALLING)
 981  00e8 9f            	ld	a,xl
 982  00e9 a144          	cp	a,#68
 983  00eb 2706          	jreq	L514
 984                     ; 222         icpolarity = (u8)TIM3_ICPOLARITY_FALLING;
 986  00ed a644          	ld	a,#68
 987  00ef 6b01          	ld	(OFST-1,sp),a
 989  00f1 2002          	jra	L714
 990  00f3               L514:
 991                     ; 226         icpolarity = (u8)TIM3_ICPOLARITY_RISING;
 993  00f3 0f01          	clr	(OFST-1,sp)
 994  00f5               L714:
 995                     ; 230     if (TIM3_ICSelection == TIM3_ICSELECTION_DIRECTTI)
 997  00f5 7b07          	ld	a,(OFST+5,sp)
 998  00f7 4a            	dec	a
 999  00f8 2604          	jrne	L124
1000                     ; 232         icselection = (u8)TIM3_ICSELECTION_INDIRECTTI;
1002  00fa a602          	ld	a,#2
1004  00fc 2002          	jra	L324
1005  00fe               L124:
1006                     ; 236         icselection = (u8)TIM3_ICSELECTION_DIRECTTI;
1008  00fe a601          	ld	a,#1
1009  0100               L324:
1010  0100 6b02          	ld	(OFST+0,sp),a
1011                     ; 239     if (TIM3_Channel != TIM3_CHANNEL_2)
1013  0102 7b03          	ld	a,(OFST+1,sp)
1014  0104 4a            	dec	a
1015  0105 2726          	jreq	L524
1016                     ; 242         TI1_Config((u8)TIM3_ICPolarity, (u8)TIM3_ICSelection,
1016                     ; 243                    (u8)TIM3_ICFilter);
1018  0107 7b09          	ld	a,(OFST+7,sp)
1019  0109 88            	push	a
1020  010a 7b08          	ld	a,(OFST+6,sp)
1021  010c 97            	ld	xl,a
1022  010d 7b05          	ld	a,(OFST+3,sp)
1023  010f 95            	ld	xh,a
1024  0110 cd0346        	call	L3_TI1_Config
1026  0113 84            	pop	a
1027                     ; 246         TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
1029  0114 7b08          	ld	a,(OFST+6,sp)
1030  0116 cd0274        	call	_TIM3_SetIC1Prescaler
1032                     ; 249         TI2_Config(icpolarity, icselection, TIM3_ICFilter);
1034  0119 7b09          	ld	a,(OFST+7,sp)
1035  011b 88            	push	a
1036  011c 7b03          	ld	a,(OFST+1,sp)
1037  011e 97            	ld	xl,a
1038  011f 7b02          	ld	a,(OFST+0,sp)
1039  0121 95            	ld	xh,a
1040  0122 cd0376        	call	L5_TI2_Config
1042  0125 84            	pop	a
1043                     ; 252         TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
1045  0126 7b08          	ld	a,(OFST+6,sp)
1046  0128 cd0281        	call	_TIM3_SetIC2Prescaler
1049  012b 2024          	jra	L724
1050  012d               L524:
1051                     ; 257         TI2_Config((u8)TIM3_ICPolarity, (u8)TIM3_ICSelection,
1051                     ; 258                    (u8)TIM3_ICFilter);
1053  012d 7b09          	ld	a,(OFST+7,sp)
1054  012f 88            	push	a
1055  0130 7b08          	ld	a,(OFST+6,sp)
1056  0132 97            	ld	xl,a
1057  0133 7b05          	ld	a,(OFST+3,sp)
1058  0135 95            	ld	xh,a
1059  0136 cd0376        	call	L5_TI2_Config
1061  0139 84            	pop	a
1062                     ; 261         TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
1064  013a 7b08          	ld	a,(OFST+6,sp)
1065  013c cd0281        	call	_TIM3_SetIC2Prescaler
1067                     ; 264         TI1_Config(icpolarity, icselection, TIM3_ICFilter);
1069  013f 7b09          	ld	a,(OFST+7,sp)
1070  0141 88            	push	a
1071  0142 7b03          	ld	a,(OFST+1,sp)
1072  0144 97            	ld	xl,a
1073  0145 7b02          	ld	a,(OFST+0,sp)
1074  0147 95            	ld	xh,a
1075  0148 cd0346        	call	L3_TI1_Config
1077  014b 84            	pop	a
1078                     ; 267         TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
1080  014c 7b08          	ld	a,(OFST+6,sp)
1081  014e cd0274        	call	_TIM3_SetIC1Prescaler
1083  0151               L724:
1084                     ; 269 }
1087  0151 5b04          	addw	sp,#4
1088  0153 81            	ret	
1143                     ; 278 void TIM3_Cmd(FunctionalState NewState)
1143                     ; 279 {
1144                     	switch	.text
1145  0154               _TIM3_Cmd:
1149                     ; 281     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1151                     ; 284     if (NewState != DISABLE)
1153  0154 4d            	tnz	a
1154  0155 2705          	jreq	L754
1155                     ; 286         TIM3->CR1 |= (u8)TIM3_CR1_CEN;
1157  0157 72105320      	bset	21280,#0
1160  015b 81            	ret	
1161  015c               L754:
1162                     ; 290         TIM3->CR1 &= (u8)(~TIM3_CR1_CEN);
1164  015c 72115320      	bres	21280,#0
1165                     ; 292 }
1168  0160 81            	ret	
1240                     ; 307 void TIM3_ITConfig(TIM3_IT_TypeDef TIM3_IT, FunctionalState NewState)
1240                     ; 308 {
1241                     	switch	.text
1242  0161               _TIM3_ITConfig:
1244  0161 89            	pushw	x
1245       00000000      OFST:	set	0
1248                     ; 310     assert_param(IS_TIM3_IT_OK(TIM3_IT));
1250                     ; 311     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1252                     ; 313     if (NewState != DISABLE)
1254  0162 9f            	ld	a,xl
1255  0163 4d            	tnz	a
1256  0164 2706          	jreq	L715
1257                     ; 316         TIM3->IER |= (u8)TIM3_IT;
1259  0166 9e            	ld	a,xh
1260  0167 ca5321        	or	a,21281
1262  016a 2006          	jra	L125
1263  016c               L715:
1264                     ; 321         TIM3->IER &= (u8)(~TIM3_IT);
1266  016c 7b01          	ld	a,(OFST+1,sp)
1267  016e 43            	cpl	a
1268  016f c45321        	and	a,21281
1269  0172               L125:
1270  0172 c75321        	ld	21281,a
1271                     ; 323 }
1274  0175 85            	popw	x
1275  0176 81            	ret	
1311                     ; 332 void TIM3_UpdateDisableConfig(FunctionalState NewState)
1311                     ; 333 {
1312                     	switch	.text
1313  0177               _TIM3_UpdateDisableConfig:
1317                     ; 335     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1319                     ; 338     if (NewState != DISABLE)
1321  0177 4d            	tnz	a
1322  0178 2705          	jreq	L145
1323                     ; 340         TIM3->CR1 |= TIM3_CR1_UDIS;
1325  017a 72125320      	bset	21280,#1
1328  017e 81            	ret	
1329  017f               L145:
1330                     ; 344         TIM3->CR1 &= (u8)(~TIM3_CR1_UDIS);
1332  017f 72135320      	bres	21280,#1
1333                     ; 346 }
1336  0183 81            	ret	
1394                     ; 356 void TIM3_UpdateRequestConfig(TIM3_UpdateSource_TypeDef TIM3_UpdateSource)
1394                     ; 357 {
1395                     	switch	.text
1396  0184               _TIM3_UpdateRequestConfig:
1400                     ; 359     assert_param(IS_TIM3_UPDATE_SOURCE_OK(TIM3_UpdateSource));
1402                     ; 362     if (TIM3_UpdateSource != TIM3_UPDATESOURCE_GLOBAL)
1404  0184 4d            	tnz	a
1405  0185 2705          	jreq	L375
1406                     ; 364         TIM3->CR1 |= TIM3_CR1_URS;
1408  0187 72145320      	bset	21280,#2
1411  018b 81            	ret	
1412  018c               L375:
1413                     ; 368         TIM3->CR1 &= (u8)(~TIM3_CR1_URS);
1415  018c 72155320      	bres	21280,#2
1416                     ; 370 }
1419  0190 81            	ret	
1476                     ; 381 void TIM3_SelectOnePulseMode(TIM3_OPMode_TypeDef TIM3_OPMode)
1476                     ; 382 {
1477                     	switch	.text
1478  0191               _TIM3_SelectOnePulseMode:
1482                     ; 384     assert_param(IS_TIM3_OPM_MODE_OK(TIM3_OPMode));
1484                     ; 387     if (TIM3_OPMode != TIM3_OPMODE_REPETITIVE)
1486  0191 4d            	tnz	a
1487  0192 2705          	jreq	L526
1488                     ; 389         TIM3->CR1 |= TIM3_CR1_OPM;
1490  0194 72165320      	bset	21280,#3
1493  0198 81            	ret	
1494  0199               L526:
1495                     ; 393         TIM3->CR1 &= (u8)(~TIM3_CR1_OPM);
1497  0199 72175320      	bres	21280,#3
1498                     ; 396 }
1501  019d 81            	ret	
1569                     ; 427 void TIM3_PrescalerConfig(TIM3_Prescaler_TypeDef Prescaler,
1569                     ; 428                           TIM3_PSCReloadMode_TypeDef TIM3_PSCReloadMode)
1569                     ; 429 {
1570                     	switch	.text
1571  019e               _TIM3_PrescalerConfig:
1575                     ; 431     assert_param(IS_TIM3_PRESCALER_RELOAD_OK(TIM3_PSCReloadMode));
1577                     ; 432     assert_param(IS_TIM3_PRESCALER_OK(Prescaler));
1579                     ; 435     TIM3->PSCR = (u8)Prescaler;
1581  019e 9e            	ld	a,xh
1582  019f c7532a        	ld	21290,a
1583                     ; 438     TIM3->EGR = (u8)TIM3_PSCReloadMode;
1585  01a2 9f            	ld	a,xl
1586  01a3 c75324        	ld	21284,a
1587                     ; 439 }
1590  01a6 81            	ret	
1648                     ; 450 void TIM3_ForcedOC1Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
1648                     ; 451 {
1649                     	switch	.text
1650  01a7               _TIM3_ForcedOC1Config:
1652  01a7 88            	push	a
1653       00000000      OFST:	set	0
1656                     ; 453     assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
1658                     ; 456     TIM3->CCMR1 =  (u8)((TIM3->CCMR1 & (u8)(~TIM3_CCMR_OCM))  | (u8)TIM3_ForcedAction);
1660  01a8 c65325        	ld	a,21285
1661  01ab a48f          	and	a,#143
1662  01ad 1a01          	or	a,(OFST+1,sp)
1663  01af c75325        	ld	21285,a
1664                     ; 457 }
1667  01b2 84            	pop	a
1668  01b3 81            	ret	
1704                     ; 468 void TIM3_ForcedOC2Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
1704                     ; 469 {
1705                     	switch	.text
1706  01b4               _TIM3_ForcedOC2Config:
1708  01b4 88            	push	a
1709       00000000      OFST:	set	0
1712                     ; 471     assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
1714                     ; 474     TIM3->CCMR2 =  (u8)((TIM3->CCMR2 & (u8)(~TIM3_CCMR_OCM)) | (u8)TIM3_ForcedAction);
1716  01b5 c65326        	ld	a,21286
1717  01b8 a48f          	and	a,#143
1718  01ba 1a01          	or	a,(OFST+1,sp)
1719  01bc c75326        	ld	21286,a
1720                     ; 475 }
1723  01bf 84            	pop	a
1724  01c0 81            	ret	
1760                     ; 484 void TIM3_ARRPreloadConfig(FunctionalState NewState)
1760                     ; 485 {
1761                     	switch	.text
1762  01c1               _TIM3_ARRPreloadConfig:
1766                     ; 487     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1768                     ; 490     if (NewState != DISABLE)
1770  01c1 4d            	tnz	a
1771  01c2 2705          	jreq	L547
1772                     ; 492         TIM3->CR1 |= TIM3_CR1_ARPE;
1774  01c4 721e5320      	bset	21280,#7
1777  01c8 81            	ret	
1778  01c9               L547:
1779                     ; 496         TIM3->CR1 &= (u8)(~TIM3_CR1_ARPE);
1781  01c9 721f5320      	bres	21280,#7
1782                     ; 498 }
1785  01cd 81            	ret	
1821                     ; 507 void TIM3_OC1PreloadConfig(FunctionalState NewState)
1821                     ; 508 {
1822                     	switch	.text
1823  01ce               _TIM3_OC1PreloadConfig:
1827                     ; 510     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1829                     ; 513     if (NewState != DISABLE)
1831  01ce 4d            	tnz	a
1832  01cf 2705          	jreq	L767
1833                     ; 515         TIM3->CCMR1 |= TIM3_CCMR_OCxPE;
1835  01d1 72165325      	bset	21285,#3
1838  01d5 81            	ret	
1839  01d6               L767:
1840                     ; 519         TIM3->CCMR1 &= (u8)(~TIM3_CCMR_OCxPE);
1842  01d6 72175325      	bres	21285,#3
1843                     ; 521 }
1846  01da 81            	ret	
1882                     ; 530 void TIM3_OC2PreloadConfig(FunctionalState NewState)
1882                     ; 531 {
1883                     	switch	.text
1884  01db               _TIM3_OC2PreloadConfig:
1888                     ; 533     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1890                     ; 536     if (NewState != DISABLE)
1892  01db 4d            	tnz	a
1893  01dc 2705          	jreq	L1101
1894                     ; 538         TIM3->CCMR2 |= TIM3_CCMR_OCxPE;
1896  01de 72165326      	bset	21286,#3
1899  01e2 81            	ret	
1900  01e3               L1101:
1901                     ; 542         TIM3->CCMR2 &= (u8)(~TIM3_CCMR_OCxPE);
1903  01e3 72175326      	bres	21286,#3
1904                     ; 544 }
1907  01e7 81            	ret	
1972                     ; 555 void TIM3_GenerateEvent(TIM3_EventSource_TypeDef TIM3_EventSource)
1972                     ; 556 {
1973                     	switch	.text
1974  01e8               _TIM3_GenerateEvent:
1978                     ; 558     assert_param(IS_TIM3_EVENT_SOURCE_OK(TIM3_EventSource));
1980                     ; 561     TIM3->EGR = (u8)TIM3_EventSource;
1982  01e8 c75324        	ld	21284,a
1983                     ; 562 }
1986  01eb 81            	ret	
2022                     ; 573 void TIM3_OC1PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
2022                     ; 574 {
2023                     	switch	.text
2024  01ec               _TIM3_OC1PolarityConfig:
2028                     ; 576     assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
2030                     ; 579     if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
2032  01ec 4d            	tnz	a
2033  01ed 2705          	jreq	L3601
2034                     ; 581         TIM3->CCER1 |= TIM3_CCER1_CC1P;
2036  01ef 72125327      	bset	21287,#1
2039  01f3 81            	ret	
2040  01f4               L3601:
2041                     ; 585         TIM3->CCER1 &= (u8)(~TIM3_CCER1_CC1P);
2043  01f4 72135327      	bres	21287,#1
2044                     ; 587 }
2047  01f8 81            	ret	
2083                     ; 598 void TIM3_OC2PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
2083                     ; 599 {
2084                     	switch	.text
2085  01f9               _TIM3_OC2PolarityConfig:
2089                     ; 601     assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
2091                     ; 604     if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
2093  01f9 4d            	tnz	a
2094  01fa 2705          	jreq	L5011
2095                     ; 606         TIM3->CCER1 |= TIM3_CCER1_CC2P;
2097  01fc 721a5327      	bset	21287,#5
2100  0200 81            	ret	
2101  0201               L5011:
2102                     ; 610         TIM3->CCER1 &= (u8)(~TIM3_CCER1_CC2P);
2104  0201 721b5327      	bres	21287,#5
2105                     ; 612 }
2108  0205 81            	ret	
2153                     ; 625 void TIM3_CCxCmd(TIM3_Channel_TypeDef TIM3_Channel, FunctionalState NewState)
2153                     ; 626 {
2154                     	switch	.text
2155  0206               _TIM3_CCxCmd:
2157  0206 89            	pushw	x
2158       00000000      OFST:	set	0
2161                     ; 628     assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
2163                     ; 629     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2165                     ; 631     if (TIM3_Channel == TIM3_CHANNEL_1)
2167  0207 9e            	ld	a,xh
2168  0208 4d            	tnz	a
2169  0209 2610          	jrne	L3311
2170                     ; 634         if (NewState != DISABLE)
2172  020b 9f            	ld	a,xl
2173  020c 4d            	tnz	a
2174  020d 2706          	jreq	L5311
2175                     ; 636             TIM3->CCER1 |= TIM3_CCER1_CC1E;
2177  020f 72105327      	bset	21287,#0
2179  0213 2014          	jra	L1411
2180  0215               L5311:
2181                     ; 640             TIM3->CCER1 &= (u8)(~TIM3_CCER1_CC1E);
2183  0215 72115327      	bres	21287,#0
2184  0219 200e          	jra	L1411
2185  021b               L3311:
2186                     ; 647         if (NewState != DISABLE)
2188  021b 7b02          	ld	a,(OFST+2,sp)
2189  021d 2706          	jreq	L3411
2190                     ; 649             TIM3->CCER1 |= TIM3_CCER1_CC2E;
2192  021f 72185327      	bset	21287,#4
2194  0223 2004          	jra	L1411
2195  0225               L3411:
2196                     ; 653             TIM3->CCER1 &= (u8)(~TIM3_CCER1_CC2E);
2198  0225 72195327      	bres	21287,#4
2199  0229               L1411:
2200                     ; 657 }
2203  0229 85            	popw	x
2204  022a 81            	ret	
2249                     ; 678 void TIM3_SelectOCxM(TIM3_Channel_TypeDef TIM3_Channel, TIM3_OCMode_TypeDef TIM3_OCMode)
2249                     ; 679 {
2250                     	switch	.text
2251  022b               _TIM3_SelectOCxM:
2253  022b 89            	pushw	x
2254       00000000      OFST:	set	0
2257                     ; 681     assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
2259                     ; 682     assert_param(IS_TIM3_OCM_OK(TIM3_OCMode));
2261                     ; 684     if (TIM3_Channel == TIM3_CHANNEL_1)
2263  022c 9e            	ld	a,xh
2264  022d 4d            	tnz	a
2265  022e 2610          	jrne	L1711
2266                     ; 687         TIM3->CCER1 &= (u8)(~TIM3_CCER1_CC1E);
2268  0230 72115327      	bres	21287,#0
2269                     ; 690         TIM3->CCMR1 = (u8)((TIM3->CCMR1 & (u8)(~TIM3_CCMR_OCM)) | (u8)TIM3_OCMode);
2271  0234 c65325        	ld	a,21285
2272  0237 a48f          	and	a,#143
2273  0239 1a02          	or	a,(OFST+2,sp)
2274  023b c75325        	ld	21285,a
2276  023e 200e          	jra	L3711
2277  0240               L1711:
2278                     ; 695         TIM3->CCER1 &= (u8)(~TIM3_CCER1_CC2E);
2280  0240 72195327      	bres	21287,#4
2281                     ; 698         TIM3->CCMR2 = (u8)((TIM3->CCMR2 & (u8)(~TIM3_CCMR_OCM)) | (u8)TIM3_OCMode);
2283  0244 c65326        	ld	a,21286
2284  0247 a48f          	and	a,#143
2285  0249 1a02          	or	a,(OFST+2,sp)
2286  024b c75326        	ld	21286,a
2287  024e               L3711:
2288                     ; 700 }
2291  024e 85            	popw	x
2292  024f 81            	ret	
2326                     ; 709 void TIM3_SetCounter(u16 Counter)
2326                     ; 710 {
2327                     	switch	.text
2328  0250               _TIM3_SetCounter:
2332                     ; 712     TIM3->CNTRH = (u8)(Counter >> 8);
2334  0250 9e            	ld	a,xh
2335  0251 c75328        	ld	21288,a
2336                     ; 713     TIM3->CNTRL = (u8)(Counter);
2338  0254 9f            	ld	a,xl
2339  0255 c75329        	ld	21289,a
2340                     ; 715 }
2343  0258 81            	ret	
2377                     ; 724 void TIM3_SetAutoreload(u16 Autoreload)
2377                     ; 725 {
2378                     	switch	.text
2379  0259               _TIM3_SetAutoreload:
2383                     ; 727     TIM3->ARRH = (u8)(Autoreload >> 8);
2385  0259 9e            	ld	a,xh
2386  025a c7532b        	ld	21291,a
2387                     ; 728     TIM3->ARRL = (u8)(Autoreload);
2389  025d 9f            	ld	a,xl
2390  025e c7532c        	ld	21292,a
2391                     ; 729 }
2394  0261 81            	ret	
2428                     ; 738 void TIM3_SetCompare1(u16 Compare1)
2428                     ; 739 {
2429                     	switch	.text
2430  0262               _TIM3_SetCompare1:
2434                     ; 741     TIM3->CCR1H = (u8)(Compare1 >> 8);
2436  0262 9e            	ld	a,xh
2437  0263 c7532d        	ld	21293,a
2438                     ; 742     TIM3->CCR1L = (u8)(Compare1);
2440  0266 9f            	ld	a,xl
2441  0267 c7532e        	ld	21294,a
2442                     ; 743 }
2445  026a 81            	ret	
2479                     ; 752 void TIM3_SetCompare2(u16 Compare2)
2479                     ; 753 {
2480                     	switch	.text
2481  026b               _TIM3_SetCompare2:
2485                     ; 755     TIM3->CCR2H = (u8)(Compare2 >> 8);
2487  026b 9e            	ld	a,xh
2488  026c c7532f        	ld	21295,a
2489                     ; 756     TIM3->CCR2L = (u8)(Compare2);
2491  026f 9f            	ld	a,xl
2492  0270 c75330        	ld	21296,a
2493                     ; 757 }
2496  0273 81            	ret	
2532                     ; 770 void TIM3_SetIC1Prescaler(TIM3_ICPSC_TypeDef TIM3_IC1Prescaler)
2532                     ; 771 {
2533                     	switch	.text
2534  0274               _TIM3_SetIC1Prescaler:
2536  0274 88            	push	a
2537       00000000      OFST:	set	0
2540                     ; 773     assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC1Prescaler));
2542                     ; 776     TIM3->CCMR1 = (u8)((TIM3->CCMR1 & (u8)(~TIM3_CCMR_ICxPSC)) | (u8)TIM3_IC1Prescaler);
2544  0275 c65325        	ld	a,21285
2545  0278 a4f3          	and	a,#243
2546  027a 1a01          	or	a,(OFST+1,sp)
2547  027c c75325        	ld	21285,a
2548                     ; 777 }
2551  027f 84            	pop	a
2552  0280 81            	ret	
2588                     ; 789 void TIM3_SetIC2Prescaler(TIM3_ICPSC_TypeDef TIM3_IC2Prescaler)
2588                     ; 790 {
2589                     	switch	.text
2590  0281               _TIM3_SetIC2Prescaler:
2592  0281 88            	push	a
2593       00000000      OFST:	set	0
2596                     ; 792     assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC2Prescaler));
2598                     ; 795     TIM3->CCMR2 = (u8)((TIM3->CCMR2 & (u8)(~TIM3_CCMR_ICxPSC)) | (u8)TIM3_IC2Prescaler);
2600  0282 c65326        	ld	a,21286
2601  0285 a4f3          	and	a,#243
2602  0287 1a01          	or	a,(OFST+1,sp)
2603  0289 c75326        	ld	21286,a
2604                     ; 796 }
2607  028c 84            	pop	a
2608  028d 81            	ret	
2660                     ; 803 u16 TIM3_GetCapture1(void)
2660                     ; 804 {
2661                     	switch	.text
2662  028e               _TIM3_GetCapture1:
2664  028e 5204          	subw	sp,#4
2665       00000004      OFST:	set	4
2668                     ; 806     u16 tmpccr1 = 0;
2670                     ; 807     u8 tmpccr1l=0, tmpccr1h=0;
2674                     ; 809     tmpccr1h = TIM3->CCR1H;
2676  0290 c6532d        	ld	a,21293
2677  0293 6b02          	ld	(OFST-2,sp),a
2678                     ; 810     tmpccr1l = TIM3->CCR1L;
2680  0295 c6532e        	ld	a,21294
2681  0298 6b01          	ld	(OFST-3,sp),a
2682                     ; 812     tmpccr1 = (u16)(tmpccr1l);
2684  029a 5f            	clrw	x
2685  029b 97            	ld	xl,a
2686  029c 1f03          	ldw	(OFST-1,sp),x
2687                     ; 813     tmpccr1 |= (u16)((u16)tmpccr1h << 8);
2689  029e 5f            	clrw	x
2690  029f 7b02          	ld	a,(OFST-2,sp)
2691  02a1 97            	ld	xl,a
2692  02a2 7b04          	ld	a,(OFST+0,sp)
2693  02a4 01            	rrwa	x,a
2694  02a5 1a03          	or	a,(OFST-1,sp)
2695  02a7 01            	rrwa	x,a
2696                     ; 815     return (u16)tmpccr1;
2700  02a8 5b04          	addw	sp,#4
2701  02aa 81            	ret	
2753                     ; 824 u16 TIM3_GetCapture2(void)
2753                     ; 825 {
2754                     	switch	.text
2755  02ab               _TIM3_GetCapture2:
2757  02ab 5204          	subw	sp,#4
2758       00000004      OFST:	set	4
2761                     ; 827     u16 tmpccr2 = 0;
2763                     ; 828     u8 tmpccr2l=0, tmpccr2h=0;
2767                     ; 830     tmpccr2h = TIM3->CCR2H;
2769  02ad c6532f        	ld	a,21295
2770  02b0 6b02          	ld	(OFST-2,sp),a
2771                     ; 831     tmpccr2l = TIM3->CCR2L;
2773  02b2 c65330        	ld	a,21296
2774  02b5 6b01          	ld	(OFST-3,sp),a
2775                     ; 833     tmpccr2 = (u16)(tmpccr2l);
2777  02b7 5f            	clrw	x
2778  02b8 97            	ld	xl,a
2779  02b9 1f03          	ldw	(OFST-1,sp),x
2780                     ; 834     tmpccr2 |= (u16)((u16)tmpccr2h << 8);
2782  02bb 5f            	clrw	x
2783  02bc 7b02          	ld	a,(OFST-2,sp)
2784  02be 97            	ld	xl,a
2785  02bf 7b04          	ld	a,(OFST+0,sp)
2786  02c1 01            	rrwa	x,a
2787  02c2 1a03          	or	a,(OFST-1,sp)
2788  02c4 01            	rrwa	x,a
2789                     ; 836     return (u16)tmpccr2;
2793  02c5 5b04          	addw	sp,#4
2794  02c7 81            	ret	
2817                     ; 845 u16 TIM3_GetCounter(void)
2817                     ; 846 {
2818                     	switch	.text
2819  02c8               _TIM3_GetCounter:
2821  02c8 89            	pushw	x
2822       00000002      OFST:	set	2
2825                     ; 848     return (u16)(((u16)TIM3->CNTRH << 8) | (u16)(TIM3->CNTRL));
2827  02c9 c65329        	ld	a,21289
2828  02cc 5f            	clrw	x
2829  02cd 97            	ld	xl,a
2830  02ce 1f01          	ldw	(OFST-1,sp),x
2831  02d0 5f            	clrw	x
2832  02d1 c65328        	ld	a,21288
2833  02d4 97            	ld	xl,a
2834  02d5 7b02          	ld	a,(OFST+0,sp)
2835  02d7 01            	rrwa	x,a
2836  02d8 1a01          	or	a,(OFST-1,sp)
2837  02da 01            	rrwa	x,a
2840  02db 5b02          	addw	sp,#2
2841  02dd 81            	ret	
2865                     ; 858 TIM3_Prescaler_TypeDef TIM3_GetPrescaler(void)
2865                     ; 859 {
2866                     	switch	.text
2867  02de               _TIM3_GetPrescaler:
2871                     ; 861     return (TIM3_Prescaler_TypeDef)(TIM3->PSCR);
2873  02de c6532a        	ld	a,21290
2876  02e1 81            	ret	
3001                     ; 876 FlagStatus TIM3_GetFlagStatus(TIM3_FLAG_TypeDef TIM3_FLAG)
3001                     ; 877 {
3002                     	switch	.text
3003  02e2               _TIM3_GetFlagStatus:
3005  02e2 5204          	subw	sp,#4
3006       00000004      OFST:	set	4
3009                     ; 878     volatile FlagStatus bitstatus = RESET;
3011  02e4 0f04          	clr	(OFST+0,sp)
3012                     ; 882     assert_param(IS_TIM3_GET_FLAG_OK(TIM3_FLAG));
3014                     ; 884     tim3_flag_l = (u8)(TIM3_FLAG);
3016  02e6 9f            	ld	a,xl
3017  02e7 6b02          	ld	(OFST-2,sp),a
3018                     ; 885     tim3_flag_h = (u8)(TIM3_FLAG >> 8);
3020  02e9 9e            	ld	a,xh
3021  02ea 6b03          	ld	(OFST-1,sp),a
3022                     ; 887     if (((TIM3->SR1 & tim3_flag_l) | (TIM3->SR2 & tim3_flag_h)) != (u8)RESET )
3024  02ec c65323        	ld	a,21283
3025  02ef 1403          	and	a,(OFST-1,sp)
3026  02f1 6b01          	ld	(OFST-3,sp),a
3027  02f3 c65322        	ld	a,21282
3028  02f6 1402          	and	a,(OFST-2,sp)
3029  02f8 1a01          	or	a,(OFST-3,sp)
3030  02fa 2706          	jreq	L5741
3031                     ; 889         bitstatus = SET;
3033  02fc a601          	ld	a,#1
3034  02fe 6b04          	ld	(OFST+0,sp),a
3036  0300 2002          	jra	L7741
3037  0302               L5741:
3038                     ; 893         bitstatus = RESET;
3040  0302 6b04          	ld	(OFST+0,sp),a
3041  0304               L7741:
3042                     ; 895     return (FlagStatus)bitstatus;
3044  0304 7b04          	ld	a,(OFST+0,sp)
3047  0306 5b04          	addw	sp,#4
3048  0308 81            	ret	
3083                     ; 910 void TIM3_ClearFlag(TIM3_FLAG_TypeDef TIM3_FLAG)
3083                     ; 911 {
3084                     	switch	.text
3085  0309               _TIM3_ClearFlag:
3087  0309 89            	pushw	x
3088       00000000      OFST:	set	0
3091                     ; 913     assert_param(IS_TIM3_CLEAR_FLAG_OK(TIM3_FLAG));
3093                     ; 916     TIM3->SR1 = (u8)(~((u8)(TIM3_FLAG)));
3095  030a 9f            	ld	a,xl
3096  030b 43            	cpl	a
3097  030c c75322        	ld	21282,a
3098                     ; 917     TIM3->SR2 = (u8)(~((u8)(TIM3_FLAG >> 8)));
3100  030f 7b01          	ld	a,(OFST+1,sp)
3101  0311 43            	cpl	a
3102  0312 c75323        	ld	21283,a
3103                     ; 918 }
3106  0315 85            	popw	x
3107  0316 81            	ret	
3171                     ; 931 ITStatus TIM3_GetITStatus(TIM3_IT_TypeDef TIM3_IT)
3171                     ; 932 {
3172                     	switch	.text
3173  0317               _TIM3_GetITStatus:
3175  0317 88            	push	a
3176  0318 5203          	subw	sp,#3
3177       00000003      OFST:	set	3
3180                     ; 933     volatile ITStatus bitstatus = RESET;
3182  031a 0f03          	clr	(OFST+0,sp)
3183                     ; 934     vu8 TIM3_itStatus = 0, TIM3_itEnable = 0;
3185  031c 0f01          	clr	(OFST-2,sp)
3188  031e 0f02          	clr	(OFST-1,sp)
3189                     ; 937     assert_param(IS_TIM3_GET_IT_OK(TIM3_IT));
3191                     ; 939     TIM3_itStatus = (u8)(TIM3->SR1 & TIM3_IT);
3193  0320 c45322        	and	a,21282
3194  0323 6b01          	ld	(OFST-2,sp),a
3195                     ; 941     TIM3_itEnable = (u8)(TIM3->IER & TIM3_IT);
3197  0325 c65321        	ld	a,21281
3198  0328 1404          	and	a,(OFST+1,sp)
3199  032a 6b02          	ld	(OFST-1,sp),a
3200                     ; 943     if ((TIM3_itStatus != (u8)RESET ) && (TIM3_itEnable != (u8)RESET ))
3202  032c 0d01          	tnz	(OFST-2,sp)
3203  032e 270a          	jreq	L1551
3205  0330 0d02          	tnz	(OFST-1,sp)
3206  0332 2706          	jreq	L1551
3207                     ; 945         bitstatus = SET;
3209  0334 a601          	ld	a,#1
3210  0336 6b03          	ld	(OFST+0,sp),a
3212  0338 2002          	jra	L3551
3213  033a               L1551:
3214                     ; 949         bitstatus = RESET;
3216  033a 0f03          	clr	(OFST+0,sp)
3217  033c               L3551:
3218                     ; 951     return (ITStatus)(bitstatus);
3220  033c 7b03          	ld	a,(OFST+0,sp)
3223  033e 5b04          	addw	sp,#4
3224  0340 81            	ret	
3260                     ; 964 void TIM3_ClearITPendingBit(TIM3_IT_TypeDef TIM3_IT)
3260                     ; 965 {
3261                     	switch	.text
3262  0341               _TIM3_ClearITPendingBit:
3266                     ; 967     assert_param(IS_TIM3_IT_OK(TIM3_IT));
3268                     ; 970     TIM3->SR1 = (u8)(~TIM3_IT);
3270  0341 43            	cpl	a
3271  0342 c75322        	ld	21282,a
3272                     ; 971 }
3275  0345 81            	ret	
3327                     ; 990 static void TI1_Config(u8 TIM3_ICPolarity,
3327                     ; 991                        u8 TIM3_ICSelection,
3327                     ; 992                        u8 TIM3_ICFilter)
3327                     ; 993 {
3328                     	switch	.text
3329  0346               L3_TI1_Config:
3331  0346 89            	pushw	x
3332       00000001      OFST:	set	1
3335                     ; 995     TIM3->CCER1 &= (u8)(~TIM3_CCER1_CC1E);
3337  0347 72115327      	bres	21287,#0
3338  034b 88            	push	a
3339                     ; 998     TIM3->CCMR1 = (u8)((TIM3->CCMR1 & (u8)(~( TIM3_CCMR_CCxS     |        TIM3_CCMR_ICxF    ))) | (u8)(( (TIM3_ICSelection)) | ((u8)( TIM3_ICFilter << 4))));
3341  034c 7b06          	ld	a,(OFST+5,sp)
3342  034e 97            	ld	xl,a
3343  034f a610          	ld	a,#16
3344  0351 42            	mul	x,a
3345  0352 9f            	ld	a,xl
3346  0353 1a03          	or	a,(OFST+2,sp)
3347  0355 6b01          	ld	(OFST+0,sp),a
3348  0357 c65325        	ld	a,21285
3349  035a a40c          	and	a,#12
3350  035c 1a01          	or	a,(OFST+0,sp)
3351  035e c75325        	ld	21285,a
3352                     ; 1001     if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
3354  0361 7b02          	ld	a,(OFST+1,sp)
3355  0363 2706          	jreq	L1261
3356                     ; 1003         TIM3->CCER1 |= TIM3_CCER1_CC1P;
3358  0365 72125327      	bset	21287,#1
3360  0369 2004          	jra	L3261
3361  036b               L1261:
3362                     ; 1007         TIM3->CCER1 &= (u8)(~TIM3_CCER1_CC1P);
3364  036b 72135327      	bres	21287,#1
3365  036f               L3261:
3366                     ; 1010     TIM3->CCER1 |= TIM3_CCER1_CC1E;
3368  036f 72105327      	bset	21287,#0
3369                     ; 1011 }
3372  0373 5b03          	addw	sp,#3
3373  0375 81            	ret	
3425                     ; 1030 static void TI2_Config(u8 TIM3_ICPolarity,
3425                     ; 1031                        u8 TIM3_ICSelection,
3425                     ; 1032                        u8 TIM3_ICFilter)
3425                     ; 1033 {
3426                     	switch	.text
3427  0376               L5_TI2_Config:
3429  0376 89            	pushw	x
3430       00000001      OFST:	set	1
3433                     ; 1035     TIM3->CCER1 &=  (u8)(~TIM3_CCER1_CC2E);
3435  0377 72195327      	bres	21287,#4
3436  037b 88            	push	a
3437                     ; 1038     TIM3->CCMR2 = (u8)((TIM3->CCMR2 & (u8)(~( TIM3_CCMR_CCxS     |        TIM3_CCMR_ICxF    ))) | (u8)(( (TIM3_ICSelection)) | ((u8)( TIM3_ICFilter << 4))));
3439  037c 7b06          	ld	a,(OFST+5,sp)
3440  037e 97            	ld	xl,a
3441  037f a610          	ld	a,#16
3442  0381 42            	mul	x,a
3443  0382 9f            	ld	a,xl
3444  0383 1a03          	or	a,(OFST+2,sp)
3445  0385 6b01          	ld	(OFST+0,sp),a
3446  0387 c65326        	ld	a,21286
3447  038a a40c          	and	a,#12
3448  038c 1a01          	or	a,(OFST+0,sp)
3449  038e c75326        	ld	21286,a
3450                     ; 1042     if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
3452  0391 7b02          	ld	a,(OFST+1,sp)
3453  0393 2706          	jreq	L3561
3454                     ; 1044         TIM3->CCER1 |= TIM3_CCER1_CC2P;
3456  0395 721a5327      	bset	21287,#5
3458  0399 2004          	jra	L5561
3459  039b               L3561:
3460                     ; 1048         TIM3->CCER1 &= (u8)(~TIM3_CCER1_CC2P);
3462  039b 721b5327      	bres	21287,#5
3463  039f               L5561:
3464                     ; 1052     TIM3->CCER1 |= TIM3_CCER1_CC2E;
3466  039f 72185327      	bset	21287,#4
3467                     ; 1054 }
3470  03a3 5b03          	addw	sp,#3
3471  03a5 81            	ret	
3484                     	xdef	_TIM3_ClearITPendingBit
3485                     	xdef	_TIM3_GetITStatus
3486                     	xdef	_TIM3_ClearFlag
3487                     	xdef	_TIM3_GetFlagStatus
3488                     	xdef	_TIM3_GetPrescaler
3489                     	xdef	_TIM3_GetCounter
3490                     	xdef	_TIM3_GetCapture2
3491                     	xdef	_TIM3_GetCapture1
3492                     	xdef	_TIM3_SetIC2Prescaler
3493                     	xdef	_TIM3_SetIC1Prescaler
3494                     	xdef	_TIM3_SetCompare2
3495                     	xdef	_TIM3_SetCompare1
3496                     	xdef	_TIM3_SetAutoreload
3497                     	xdef	_TIM3_SetCounter
3498                     	xdef	_TIM3_SelectOCxM
3499                     	xdef	_TIM3_CCxCmd
3500                     	xdef	_TIM3_OC2PolarityConfig
3501                     	xdef	_TIM3_OC1PolarityConfig
3502                     	xdef	_TIM3_GenerateEvent
3503                     	xdef	_TIM3_OC2PreloadConfig
3504                     	xdef	_TIM3_OC1PreloadConfig
3505                     	xdef	_TIM3_ARRPreloadConfig
3506                     	xdef	_TIM3_ForcedOC2Config
3507                     	xdef	_TIM3_ForcedOC1Config
3508                     	xdef	_TIM3_PrescalerConfig
3509                     	xdef	_TIM3_SelectOnePulseMode
3510                     	xdef	_TIM3_UpdateRequestConfig
3511                     	xdef	_TIM3_UpdateDisableConfig
3512                     	xdef	_TIM3_ITConfig
3513                     	xdef	_TIM3_Cmd
3514                     	xdef	_TIM3_PWMIConfig
3515                     	xdef	_TIM3_ICInit
3516                     	xdef	_TIM3_OC2Init
3517                     	xdef	_TIM3_OC1Init
3518                     	xdef	_TIM3_TimeBaseInit
3519                     	xdef	_TIM3_DeInit
3538                     	end
