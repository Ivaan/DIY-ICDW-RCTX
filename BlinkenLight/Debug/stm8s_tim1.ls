   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  43                     ; 50 void TIM1_DeInit(void)
  43                     ; 51 {
  45                     	switch	.text
  46  0000               _TIM1_DeInit:
  50                     ; 52     TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  52  0000 725f5250      	clr	21072
  53                     ; 53     TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  55  0004 725f5251      	clr	21073
  56                     ; 54     TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  58  0008 725f5252      	clr	21074
  59                     ; 55     TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  61  000c 725f5253      	clr	21075
  62                     ; 56     TIM1->IER  = TIM1_IER_RESET_VALUE;
  64  0010 725f5254      	clr	21076
  65                     ; 57     TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  67  0014 725f5256      	clr	21078
  68                     ; 59     TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  70  0018 725f525c      	clr	21084
  71                     ; 60     TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  73  001c 725f525d      	clr	21085
  74                     ; 62     TIM1->CCMR1 = 0x01;
  76  0020 35015258      	mov	21080,#1
  77                     ; 63     TIM1->CCMR2 = 0x01;
  79  0024 35015259      	mov	21081,#1
  80                     ; 64     TIM1->CCMR3 = 0x01;
  82  0028 3501525a      	mov	21082,#1
  83                     ; 65     TIM1->CCMR4 = 0x01;
  85  002c 3501525b      	mov	21083,#1
  86                     ; 67     TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  88  0030 725f525c      	clr	21084
  89                     ; 68     TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  91  0034 725f525d      	clr	21085
  92                     ; 69     TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  94  0038 725f5258      	clr	21080
  95                     ; 70     TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
  97  003c 725f5259      	clr	21081
  98                     ; 71     TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
 100  0040 725f525a      	clr	21082
 101                     ; 72     TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 103  0044 725f525b      	clr	21083
 104                     ; 73     TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 106  0048 725f525e      	clr	21086
 107                     ; 74     TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 109  004c 725f525f      	clr	21087
 110                     ; 75     TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 112  0050 725f5260      	clr	21088
 113                     ; 76     TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 115  0054 725f5261      	clr	21089
 116                     ; 77     TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 118  0058 35ff5262      	mov	21090,#255
 119                     ; 78     TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 121  005c 35ff5263      	mov	21091,#255
 122                     ; 79     TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 124  0060 725f5265      	clr	21093
 125                     ; 80     TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 127  0064 725f5266      	clr	21094
 128                     ; 81     TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 130  0068 725f5267      	clr	21095
 131                     ; 82     TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 133  006c 725f5268      	clr	21096
 134                     ; 83     TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 136  0070 725f5269      	clr	21097
 137                     ; 84     TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 139  0074 725f526a      	clr	21098
 140                     ; 85     TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 142  0078 725f526b      	clr	21099
 143                     ; 86     TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 145  007c 725f526c      	clr	21100
 146                     ; 87     TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 148  0080 725f526f      	clr	21103
 149                     ; 88     TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 151  0084 35015257      	mov	21079,#1
 152                     ; 89     TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 154  0088 725f526e      	clr	21102
 155                     ; 90     TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 157  008c 725f526d      	clr	21101
 158                     ; 91     TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 160  0090 725f5264      	clr	21092
 161                     ; 92     TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 163  0094 725f5255      	clr	21077
 164                     ; 93 }
 167  0098 81            	ret
 276                     ; 103 void TIM1_TimeBaseInit(u16 TIM1_Prescaler,
 276                     ; 104                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 276                     ; 105                        u16 TIM1_Period,
 276                     ; 106                        u8 TIM1_RepetitionCounter)
 276                     ; 107 {
 277                     	switch	.text
 278  0099               _TIM1_TimeBaseInit:
 280  0099 89            	pushw	x
 281       00000000      OFST:	set	0
 284                     ; 110     assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 286                     ; 113     TIM1->ARRH = (u8)(TIM1_Period >> 8);
 288  009a 7b06          	ld	a,(OFST+6,sp)
 289  009c c75262        	ld	21090,a
 290                     ; 114     TIM1->ARRL = (u8)(TIM1_Period);
 292  009f 7b07          	ld	a,(OFST+7,sp)
 293  00a1 c75263        	ld	21091,a
 294                     ; 117     TIM1->PSCRH = (u8)(TIM1_Prescaler >> 8);
 296  00a4 9e            	ld	a,xh
 297  00a5 c75260        	ld	21088,a
 298                     ; 118     TIM1->PSCRL = (u8)(TIM1_Prescaler);
 300  00a8 9f            	ld	a,xl
 301  00a9 c75261        	ld	21089,a
 302                     ; 121     TIM1->CR1 = (u8)(((TIM1->CR1) & (u8)(~(TIM1_CR1_CMS | TIM1_CR1_DIR))) | (u8)(TIM1_CounterMode));
 304  00ac c65250        	ld	a,21072
 305  00af a48f          	and	a,#143
 306  00b1 1a05          	or	a,(OFST+5,sp)
 307  00b3 c75250        	ld	21072,a
 308                     ; 124     TIM1->RCR = TIM1_RepetitionCounter;
 310  00b6 7b08          	ld	a,(OFST+8,sp)
 311  00b8 c75264        	ld	21092,a
 312                     ; 126 }
 315  00bb 85            	popw	x
 316  00bc 81            	ret
 601                     ; 140 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 601                     ; 141                   TIM1_OutputState_TypeDef TIM1_OutputState,
 601                     ; 142                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 601                     ; 143                   u16 TIM1_Pulse,
 601                     ; 144                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 601                     ; 145                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 601                     ; 146                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 601                     ; 147                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 601                     ; 148 {
 602                     	switch	.text
 603  00bd               _TIM1_OC1Init:
 605  00bd 89            	pushw	x
 606  00be 5203          	subw	sp,#3
 607       00000003      OFST:	set	3
 610                     ; 150     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 612                     ; 151     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 614                     ; 152     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 616                     ; 153     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 618                     ; 154     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 620                     ; 155     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 622                     ; 156     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 624                     ; 159     TIM1->CCER1 &= (u8)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 626  00c0 c6525c        	ld	a,21084
 627  00c3 a4f0          	and	a,#240
 628  00c5 c7525c        	ld	21084,a
 629                     ; 161     TIM1->CCER1 |= (u8)((TIM1_OutputState & TIM1_CCER1_CC1E  ) | (TIM1_OutputNState & TIM1_CCER1_CC1NE ) | (TIM1_OCPolarity  & TIM1_CCER1_CC1P  ) | (TIM1_OCNPolarity & TIM1_CCER1_CC1NP ));
 631  00c8 7b0c          	ld	a,(OFST+9,sp)
 632  00ca a408          	and	a,#8
 633  00cc 6b03          	ld	(OFST+0,sp),a
 634  00ce 7b0b          	ld	a,(OFST+8,sp)
 635  00d0 a402          	and	a,#2
 636  00d2 6b02          	ld	(OFST-1,sp),a
 637  00d4 7b08          	ld	a,(OFST+5,sp)
 638  00d6 a404          	and	a,#4
 639  00d8 6b01          	ld	(OFST-2,sp),a
 640  00da 9f            	ld	a,xl
 641  00db a401          	and	a,#1
 642  00dd 1a01          	or	a,(OFST-2,sp)
 643  00df 1a02          	or	a,(OFST-1,sp)
 644  00e1 1a03          	or	a,(OFST+0,sp)
 645  00e3 ca525c        	or	a,21084
 646  00e6 c7525c        	ld	21084,a
 647                     ; 164     TIM1->CCMR1 = (u8)((TIM1->CCMR1 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_OCMode);
 649  00e9 c65258        	ld	a,21080
 650  00ec a48f          	and	a,#143
 651  00ee 1a04          	or	a,(OFST+1,sp)
 652  00f0 c75258        	ld	21080,a
 653                     ; 167     TIM1->OISR &= (u8)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 655  00f3 c6526f        	ld	a,21103
 656  00f6 a4fc          	and	a,#252
 657  00f8 c7526f        	ld	21103,a
 658                     ; 169     TIM1->OISR |= (u8)(( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | ( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 660  00fb 7b0e          	ld	a,(OFST+11,sp)
 661  00fd a402          	and	a,#2
 662  00ff 6b03          	ld	(OFST+0,sp),a
 663  0101 7b0d          	ld	a,(OFST+10,sp)
 664  0103 a401          	and	a,#1
 665  0105 1a03          	or	a,(OFST+0,sp)
 666  0107 ca526f        	or	a,21103
 667  010a c7526f        	ld	21103,a
 668                     ; 172     TIM1->CCR1H = (u8)(TIM1_Pulse >> 8);
 670  010d 7b09          	ld	a,(OFST+6,sp)
 671  010f c75265        	ld	21093,a
 672                     ; 173     TIM1->CCR1L = (u8)(TIM1_Pulse);
 674  0112 7b0a          	ld	a,(OFST+7,sp)
 675  0114 c75266        	ld	21094,a
 676                     ; 174 }
 679  0117 5b05          	addw	sp,#5
 680  0119 81            	ret
 784                     ; 188 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 784                     ; 189                   TIM1_OutputState_TypeDef TIM1_OutputState,
 784                     ; 190                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 784                     ; 191                   u16 TIM1_Pulse,
 784                     ; 192                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 784                     ; 193                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 784                     ; 194                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 784                     ; 195                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 784                     ; 196 {
 785                     	switch	.text
 786  011a               _TIM1_OC2Init:
 788  011a 89            	pushw	x
 789  011b 5203          	subw	sp,#3
 790       00000003      OFST:	set	3
 793                     ; 200     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 795                     ; 201     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 797                     ; 202     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 799                     ; 203     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 801                     ; 204     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 803                     ; 205     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 805                     ; 206     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 807                     ; 209     TIM1->CCER1 &= (u8)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
 809  011d c6525c        	ld	a,21084
 810  0120 a40f          	and	a,#15
 811  0122 c7525c        	ld	21084,a
 812                     ; 211     TIM1->CCER1 |= (u8)((TIM1_OutputState & TIM1_CCER1_CC2E  ) | (TIM1_OutputNState & TIM1_CCER1_CC2NE ) | (TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | (TIM1_OCNPolarity & TIM1_CCER1_CC2NP ));
 814  0125 7b0c          	ld	a,(OFST+9,sp)
 815  0127 a480          	and	a,#128
 816  0129 6b03          	ld	(OFST+0,sp),a
 817  012b 7b0b          	ld	a,(OFST+8,sp)
 818  012d a420          	and	a,#32
 819  012f 6b02          	ld	(OFST-1,sp),a
 820  0131 7b08          	ld	a,(OFST+5,sp)
 821  0133 a440          	and	a,#64
 822  0135 6b01          	ld	(OFST-2,sp),a
 823  0137 9f            	ld	a,xl
 824  0138 a410          	and	a,#16
 825  013a 1a01          	or	a,(OFST-2,sp)
 826  013c 1a02          	or	a,(OFST-1,sp)
 827  013e 1a03          	or	a,(OFST+0,sp)
 828  0140 ca525c        	or	a,21084
 829  0143 c7525c        	ld	21084,a
 830                     ; 215     TIM1->CCMR2 = (u8)((TIM1->CCMR2 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_OCMode);
 832  0146 c65259        	ld	a,21081
 833  0149 a48f          	and	a,#143
 834  014b 1a04          	or	a,(OFST+1,sp)
 835  014d c75259        	ld	21081,a
 836                     ; 218     TIM1->OISR &= (u8)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
 838  0150 c6526f        	ld	a,21103
 839  0153 a4f3          	and	a,#243
 840  0155 c7526f        	ld	21103,a
 841                     ; 220     TIM1->OISR |= (u8)((TIM1_OISR_OIS2 & TIM1_OCIdleState) | (TIM1_OISR_OIS2N & TIM1_OCNIdleState));
 843  0158 7b0e          	ld	a,(OFST+11,sp)
 844  015a a408          	and	a,#8
 845  015c 6b03          	ld	(OFST+0,sp),a
 846  015e 7b0d          	ld	a,(OFST+10,sp)
 847  0160 a404          	and	a,#4
 848  0162 1a03          	or	a,(OFST+0,sp)
 849  0164 ca526f        	or	a,21103
 850  0167 c7526f        	ld	21103,a
 851                     ; 223     TIM1->CCR2H = (u8)(TIM1_Pulse >> 8);
 853  016a 7b09          	ld	a,(OFST+6,sp)
 854  016c c75267        	ld	21095,a
 855                     ; 224     TIM1->CCR2L = (u8)(TIM1_Pulse);
 857  016f 7b0a          	ld	a,(OFST+7,sp)
 858  0171 c75268        	ld	21096,a
 859                     ; 226 }
 862  0174 5b05          	addw	sp,#5
 863  0176 81            	ret
 967                     ; 240 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 967                     ; 241                   TIM1_OutputState_TypeDef TIM1_OutputState,
 967                     ; 242                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 967                     ; 243                   u16 TIM1_Pulse,
 967                     ; 244                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 967                     ; 245                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 967                     ; 246                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 967                     ; 247                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 967                     ; 248 {
 968                     	switch	.text
 969  0177               _TIM1_OC3Init:
 971  0177 89            	pushw	x
 972  0178 5203          	subw	sp,#3
 973       00000003      OFST:	set	3
 976                     ; 251     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 978                     ; 252     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 980                     ; 253     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 982                     ; 254     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 984                     ; 255     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 986                     ; 256     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 988                     ; 257     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 990                     ; 260     TIM1->CCER2 &= (u8)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
 992  017a c6525d        	ld	a,21085
 993  017d a4f0          	and	a,#240
 994  017f c7525d        	ld	21085,a
 995                     ; 262     TIM1->CCER2 |= (u8)((TIM1_OutputState  & TIM1_CCER2_CC3E   ) |                 (TIM1_OutputNState & TIM1_CCER2_CC3NE  ) | (TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | (TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  ));
 997  0182 7b0c          	ld	a,(OFST+9,sp)
 998  0184 a408          	and	a,#8
 999  0186 6b03          	ld	(OFST+0,sp),a
1000  0188 7b0b          	ld	a,(OFST+8,sp)
1001  018a a402          	and	a,#2
1002  018c 6b02          	ld	(OFST-1,sp),a
1003  018e 7b08          	ld	a,(OFST+5,sp)
1004  0190 a404          	and	a,#4
1005  0192 6b01          	ld	(OFST-2,sp),a
1006  0194 9f            	ld	a,xl
1007  0195 a401          	and	a,#1
1008  0197 1a01          	or	a,(OFST-2,sp)
1009  0199 1a02          	or	a,(OFST-1,sp)
1010  019b 1a03          	or	a,(OFST+0,sp)
1011  019d ca525d        	or	a,21085
1012  01a0 c7525d        	ld	21085,a
1013                     ; 267     TIM1->CCMR3 = (u8)((TIM1->CCMR3 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_OCMode);
1015  01a3 c6525a        	ld	a,21082
1016  01a6 a48f          	and	a,#143
1017  01a8 1a04          	or	a,(OFST+1,sp)
1018  01aa c7525a        	ld	21082,a
1019                     ; 270     TIM1->OISR &= (u8)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1021  01ad c6526f        	ld	a,21103
1022  01b0 a4cf          	and	a,#207
1023  01b2 c7526f        	ld	21103,a
1024                     ; 272     TIM1->OISR |= (u8)((TIM1_OISR_OIS3 & TIM1_OCIdleState) | (TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1026  01b5 7b0e          	ld	a,(OFST+11,sp)
1027  01b7 a420          	and	a,#32
1028  01b9 6b03          	ld	(OFST+0,sp),a
1029  01bb 7b0d          	ld	a,(OFST+10,sp)
1030  01bd a410          	and	a,#16
1031  01bf 1a03          	or	a,(OFST+0,sp)
1032  01c1 ca526f        	or	a,21103
1033  01c4 c7526f        	ld	21103,a
1034                     ; 275     TIM1->CCR3H = (u8)(TIM1_Pulse >> 8);
1036  01c7 7b09          	ld	a,(OFST+6,sp)
1037  01c9 c75269        	ld	21097,a
1038                     ; 276     TIM1->CCR3L = (u8)(TIM1_Pulse);
1040  01cc 7b0a          	ld	a,(OFST+7,sp)
1041  01ce c7526a        	ld	21098,a
1042                     ; 278 }
1045  01d1 5b05          	addw	sp,#5
1046  01d3 81            	ret
1120                     ; 289 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1120                     ; 290                   TIM1_OutputState_TypeDef TIM1_OutputState,
1120                     ; 291                   u16 TIM1_Pulse,
1120                     ; 292                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1120                     ; 293                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1120                     ; 294 {
1121                     	switch	.text
1122  01d4               _TIM1_OC4Init:
1124  01d4 89            	pushw	x
1125  01d5 88            	push	a
1126       00000001      OFST:	set	1
1129                     ; 297     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1131                     ; 298     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1133                     ; 299     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1135                     ; 300     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1137                     ; 305     TIM1->CCER2 &= (u8)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1139  01d6 c6525d        	ld	a,21085
1140  01d9 a4cf          	and	a,#207
1141  01db c7525d        	ld	21085,a
1142                     ; 307     TIM1->CCER2 |= (u8)((TIM1_OutputState & TIM1_CCER2_CC4E ) |  (TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1144  01de 7b08          	ld	a,(OFST+7,sp)
1145  01e0 a420          	and	a,#32
1146  01e2 6b01          	ld	(OFST+0,sp),a
1147  01e4 9f            	ld	a,xl
1148  01e5 a410          	and	a,#16
1149  01e7 1a01          	or	a,(OFST+0,sp)
1150  01e9 ca525d        	or	a,21085
1151  01ec c7525d        	ld	21085,a
1152                     ; 310     TIM1->CCMR4 = (u8)((TIM1->CCMR4 & (u8)(~TIM1_CCMR_OCM)) | (TIM1_OCMode));
1154  01ef c6525b        	ld	a,21083
1155  01f2 a48f          	and	a,#143
1156  01f4 1a02          	or	a,(OFST+1,sp)
1157  01f6 c7525b        	ld	21083,a
1158                     ; 313     if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1160  01f9 0d09          	tnz	(OFST+8,sp)
1161  01fb 270a          	jreq	L534
1162                     ; 315         TIM1->OISR |= (u8)(~TIM1_CCER2_CC4P);
1164  01fd c6526f        	ld	a,21103
1165  0200 aadf          	or	a,#223
1166  0202 c7526f        	ld	21103,a
1168  0205 2004          	jra	L734
1169  0207               L534:
1170                     ; 319         TIM1->OISR &= (u8)(~TIM1_OISR_OIS4);
1172  0207 721d526f      	bres	21103,#6
1173  020b               L734:
1174                     ; 323     TIM1->CCR4H = (u8)(TIM1_Pulse >> 8);
1176  020b 7b06          	ld	a,(OFST+5,sp)
1177  020d c7526b        	ld	21099,a
1178                     ; 324     TIM1->CCR4L = (u8)(TIM1_Pulse);
1180  0210 7b07          	ld	a,(OFST+6,sp)
1181  0212 c7526c        	ld	21100,a
1182                     ; 326 }
1185  0215 5b03          	addw	sp,#3
1186  0217 81            	ret
1391                     ; 339 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1391                     ; 340                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1391                     ; 341                      u8 TIM1_DeadTime,
1391                     ; 342                      TIM1_BreakState_TypeDef TIM1_Break,
1391                     ; 343                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1391                     ; 344                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1391                     ; 345 {
1392                     	switch	.text
1393  0218               _TIM1_BDTRConfig:
1395  0218 89            	pushw	x
1396       00000000      OFST:	set	0
1399                     ; 349     assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1401                     ; 350     assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1403                     ; 351     assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1405                     ; 352     assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1407                     ; 353     assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
1409                     ; 356     TIM1->DTR = (u8)(TIM1_DeadTime);
1411  0219 7b05          	ld	a,(OFST+5,sp)
1412  021b c7526e        	ld	21102,a
1413                     ; 360     TIM1->BKR  =  (u8)((u8)TIM1_OSSIState       | \
1413                     ; 361                        (u8)TIM1_LockLevel       | \
1413                     ; 362                        (u8)TIM1_Break           | \
1413                     ; 363                        (u8)TIM1_BreakPolarity   | \
1413                     ; 364                        (u8)TIM1_AutomaticOutput);
1415  021e 9f            	ld	a,xl
1416  021f 1a01          	or	a,(OFST+1,sp)
1417  0221 1a06          	or	a,(OFST+6,sp)
1418  0223 1a07          	or	a,(OFST+7,sp)
1419  0225 1a08          	or	a,(OFST+8,sp)
1420  0227 c7526d        	ld	21101,a
1421                     ; 366 }
1424  022a 85            	popw	x
1425  022b 81            	ret
1627                     ; 378 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
1627                     ; 379                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1627                     ; 380                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
1627                     ; 381                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1627                     ; 382                  u8 TIM1_ICFilter)
1627                     ; 383 {
1628                     	switch	.text
1629  022c               _TIM1_ICInit:
1631  022c 89            	pushw	x
1632       00000000      OFST:	set	0
1635                     ; 386     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
1637                     ; 387     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1639                     ; 388     assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
1641                     ; 389     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
1643                     ; 390     assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
1645                     ; 392     if (TIM1_Channel == TIM1_CHANNEL_1)
1647  022d 9e            	ld	a,xh
1648  022e 4d            	tnz	a
1649  022f 2614          	jrne	L766
1650                     ; 395         TI1_Config((u8)TIM1_ICPolarity,
1650                     ; 396                    (u8)TIM1_ICSelection,
1650                     ; 397                    (u8)TIM1_ICFilter);
1652  0231 7b07          	ld	a,(OFST+7,sp)
1653  0233 88            	push	a
1654  0234 7b06          	ld	a,(OFST+6,sp)
1655  0236 97            	ld	xl,a
1656  0237 7b03          	ld	a,(OFST+3,sp)
1657  0239 95            	ld	xh,a
1658  023a cd0815        	call	L3_TI1_Config
1660  023d 84            	pop	a
1661                     ; 399         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1663  023e 7b06          	ld	a,(OFST+6,sp)
1664  0240 cd06b1        	call	_TIM1_SetIC1Prescaler
1667  0243 2046          	jra	L176
1668  0245               L766:
1669                     ; 401     else if (TIM1_Channel == TIM1_CHANNEL_2)
1671  0245 7b01          	ld	a,(OFST+1,sp)
1672  0247 a101          	cp	a,#1
1673  0249 2614          	jrne	L376
1674                     ; 404         TI2_Config((u8)TIM1_ICPolarity,
1674                     ; 405                    (u8)TIM1_ICSelection,
1674                     ; 406                    (u8)TIM1_ICFilter);
1676  024b 7b07          	ld	a,(OFST+7,sp)
1677  024d 88            	push	a
1678  024e 7b06          	ld	a,(OFST+6,sp)
1679  0250 97            	ld	xl,a
1680  0251 7b03          	ld	a,(OFST+3,sp)
1681  0253 95            	ld	xh,a
1682  0254 cd0845        	call	L5_TI2_Config
1684  0257 84            	pop	a
1685                     ; 408         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1687  0258 7b06          	ld	a,(OFST+6,sp)
1688  025a cd06be        	call	_TIM1_SetIC2Prescaler
1691  025d 202c          	jra	L176
1692  025f               L376:
1693                     ; 410     else if (TIM1_Channel == TIM1_CHANNEL_3)
1695  025f 7b01          	ld	a,(OFST+1,sp)
1696  0261 a102          	cp	a,#2
1697  0263 2614          	jrne	L776
1698                     ; 413         TI3_Config((u8)TIM1_ICPolarity,
1698                     ; 414                    (u8)TIM1_ICSelection,
1698                     ; 415                    (u8)TIM1_ICFilter);
1700  0265 7b07          	ld	a,(OFST+7,sp)
1701  0267 88            	push	a
1702  0268 7b06          	ld	a,(OFST+6,sp)
1703  026a 97            	ld	xl,a
1704  026b 7b03          	ld	a,(OFST+3,sp)
1705  026d 95            	ld	xh,a
1706  026e cd0875        	call	L7_TI3_Config
1708  0271 84            	pop	a
1709                     ; 417         TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
1711  0272 7b06          	ld	a,(OFST+6,sp)
1712  0274 cd06cb        	call	_TIM1_SetIC3Prescaler
1715  0277 2012          	jra	L176
1716  0279               L776:
1717                     ; 422         TI4_Config((u8)TIM1_ICPolarity,
1717                     ; 423                    (u8)TIM1_ICSelection,
1717                     ; 424                    (u8)TIM1_ICFilter);
1719  0279 7b07          	ld	a,(OFST+7,sp)
1720  027b 88            	push	a
1721  027c 7b06          	ld	a,(OFST+6,sp)
1722  027e 97            	ld	xl,a
1723  027f 7b03          	ld	a,(OFST+3,sp)
1724  0281 95            	ld	xh,a
1725  0282 cd08a5        	call	L11_TI4_Config
1727  0285 84            	pop	a
1728                     ; 426         TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
1730  0286 7b06          	ld	a,(OFST+6,sp)
1731  0288 cd06d8        	call	_TIM1_SetIC4Prescaler
1733  028b               L176:
1734                     ; 429 }
1737  028b 85            	popw	x
1738  028c 81            	ret
1834                     ; 440 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
1834                     ; 441                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1834                     ; 442                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
1834                     ; 443                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1834                     ; 444                      u8 TIM1_ICFilter)
1834                     ; 445 {
1835                     	switch	.text
1836  028d               _TIM1_PWMIConfig:
1838  028d 89            	pushw	x
1839  028e 89            	pushw	x
1840       00000002      OFST:	set	2
1843                     ; 446     u8 icpolarity = TIM1_ICPOLARITY_RISING;
1845                     ; 447     u8 icselection = TIM1_ICSELECTION_DIRECTTI;
1847                     ; 450     assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
1849                     ; 451     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1851                     ; 452     assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
1853                     ; 453     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
1855                     ; 456     if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
1857  028f 9f            	ld	a,xl
1858  0290 a101          	cp	a,#1
1859  0292 2706          	jreq	L157
1860                     ; 458         icpolarity = TIM1_ICPOLARITY_FALLING;
1862  0294 a601          	ld	a,#1
1863  0296 6b01          	ld	(OFST-1,sp),a
1865  0298 2002          	jra	L357
1866  029a               L157:
1867                     ; 462         icpolarity = TIM1_ICPOLARITY_RISING;
1869  029a 0f01          	clr	(OFST-1,sp)
1870  029c               L357:
1871                     ; 466     if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
1873  029c 7b07          	ld	a,(OFST+5,sp)
1874  029e a101          	cp	a,#1
1875  02a0 2606          	jrne	L557
1876                     ; 468         icselection = TIM1_ICSELECTION_INDIRECTTI;
1878  02a2 a602          	ld	a,#2
1879  02a4 6b02          	ld	(OFST+0,sp),a
1881  02a6 2004          	jra	L757
1882  02a8               L557:
1883                     ; 472         icselection = TIM1_ICSELECTION_DIRECTTI;
1885  02a8 a601          	ld	a,#1
1886  02aa 6b02          	ld	(OFST+0,sp),a
1887  02ac               L757:
1888                     ; 475     if (TIM1_Channel == TIM1_CHANNEL_1)
1890  02ac 0d03          	tnz	(OFST+1,sp)
1891  02ae 2626          	jrne	L167
1892                     ; 478         TI1_Config((u8)TIM1_ICPolarity, (u8)TIM1_ICSelection,
1892                     ; 479                    (u8)TIM1_ICFilter);
1894  02b0 7b09          	ld	a,(OFST+7,sp)
1895  02b2 88            	push	a
1896  02b3 7b08          	ld	a,(OFST+6,sp)
1897  02b5 97            	ld	xl,a
1898  02b6 7b05          	ld	a,(OFST+3,sp)
1899  02b8 95            	ld	xh,a
1900  02b9 cd0815        	call	L3_TI1_Config
1902  02bc 84            	pop	a
1903                     ; 482         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1905  02bd 7b08          	ld	a,(OFST+6,sp)
1906  02bf cd06b1        	call	_TIM1_SetIC1Prescaler
1908                     ; 485         TI2_Config(icpolarity, icselection, TIM1_ICFilter);
1910  02c2 7b09          	ld	a,(OFST+7,sp)
1911  02c4 88            	push	a
1912  02c5 7b03          	ld	a,(OFST+1,sp)
1913  02c7 97            	ld	xl,a
1914  02c8 7b02          	ld	a,(OFST+0,sp)
1915  02ca 95            	ld	xh,a
1916  02cb cd0845        	call	L5_TI2_Config
1918  02ce 84            	pop	a
1919                     ; 488         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1921  02cf 7b08          	ld	a,(OFST+6,sp)
1922  02d1 cd06be        	call	_TIM1_SetIC2Prescaler
1925  02d4 2024          	jra	L367
1926  02d6               L167:
1927                     ; 493         TI2_Config((u8)TIM1_ICPolarity, (u8)TIM1_ICSelection,
1927                     ; 494                    (u8)TIM1_ICFilter);
1929  02d6 7b09          	ld	a,(OFST+7,sp)
1930  02d8 88            	push	a
1931  02d9 7b08          	ld	a,(OFST+6,sp)
1932  02db 97            	ld	xl,a
1933  02dc 7b05          	ld	a,(OFST+3,sp)
1934  02de 95            	ld	xh,a
1935  02df cd0845        	call	L5_TI2_Config
1937  02e2 84            	pop	a
1938                     ; 497         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1940  02e3 7b08          	ld	a,(OFST+6,sp)
1941  02e5 cd06be        	call	_TIM1_SetIC2Prescaler
1943                     ; 500         TI1_Config(icpolarity, icselection, TIM1_ICFilter);
1945  02e8 7b09          	ld	a,(OFST+7,sp)
1946  02ea 88            	push	a
1947  02eb 7b03          	ld	a,(OFST+1,sp)
1948  02ed 97            	ld	xl,a
1949  02ee 7b02          	ld	a,(OFST+0,sp)
1950  02f0 95            	ld	xh,a
1951  02f1 cd0815        	call	L3_TI1_Config
1953  02f4 84            	pop	a
1954                     ; 503         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1956  02f5 7b08          	ld	a,(OFST+6,sp)
1957  02f7 cd06b1        	call	_TIM1_SetIC1Prescaler
1959  02fa               L367:
1960                     ; 505 }
1963  02fa 5b04          	addw	sp,#4
1964  02fc 81            	ret
2019                     ; 514 void TIM1_Cmd(FunctionalState NewState)
2019                     ; 515 {
2020                     	switch	.text
2021  02fd               _TIM1_Cmd:
2025                     ; 517     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2027                     ; 520     if (NewState != DISABLE)
2029  02fd 4d            	tnz	a
2030  02fe 2706          	jreq	L3101
2031                     ; 522         TIM1->CR1 |= TIM1_CR1_CEN;
2033  0300 72105250      	bset	21072,#0
2035  0304 2004          	jra	L5101
2036  0306               L3101:
2037                     ; 526         TIM1->CR1 &= (u8)(~TIM1_CR1_CEN);
2039  0306 72115250      	bres	21072,#0
2040  030a               L5101:
2041                     ; 528 }
2044  030a 81            	ret
2080                     ; 537 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2080                     ; 538 {
2081                     	switch	.text
2082  030b               _TIM1_CtrlPWMOutputs:
2086                     ; 540     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2088                     ; 544     if (NewState != DISABLE)
2090  030b 4d            	tnz	a
2091  030c 2706          	jreq	L5301
2092                     ; 546         TIM1->BKR |= TIM1_BKR_MOE;
2094  030e 721e526d      	bset	21101,#7
2096  0312 2004          	jra	L7301
2097  0314               L5301:
2098                     ; 550         TIM1->BKR &= (u8)(~TIM1_BKR_MOE);
2100  0314 721f526d      	bres	21101,#7
2101  0318               L7301:
2102                     ; 552 }
2105  0318 81            	ret
2212                     ; 572 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
2212                     ; 573 {
2213                     	switch	.text
2214  0319               _TIM1_ITConfig:
2216  0319 89            	pushw	x
2217       00000000      OFST:	set	0
2220                     ; 575     assert_param(IS_TIM1_IT_OK(TIM1_IT));
2222                     ; 576     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2224                     ; 578     if (NewState != DISABLE)
2226  031a 9f            	ld	a,xl
2227  031b 4d            	tnz	a
2228  031c 2709          	jreq	L7011
2229                     ; 581         TIM1->IER |= (u8)TIM1_IT;
2231  031e 9e            	ld	a,xh
2232  031f ca5254        	or	a,21076
2233  0322 c75254        	ld	21076,a
2235  0325 2009          	jra	L1111
2236  0327               L7011:
2237                     ; 586         TIM1->IER &= (u8)(~(u8)TIM1_IT);
2239  0327 7b01          	ld	a,(OFST+1,sp)
2240  0329 43            	cpl	a
2241  032a c45254        	and	a,21076
2242  032d c75254        	ld	21076,a
2243  0330               L1111:
2244                     ; 588 }
2247  0330 85            	popw	x
2248  0331 81            	ret
2272                     ; 597 void TIM1_InternalClockConfig(void)
2272                     ; 598 {
2273                     	switch	.text
2274  0332               _TIM1_InternalClockConfig:
2278                     ; 600     TIM1->SMCR &= (u8)(~TIM1_SMCR_SMS);
2280  0332 c65252        	ld	a,21074
2281  0335 a4f8          	and	a,#248
2282  0337 c75252        	ld	21074,a
2283                     ; 601 }
2286  033a 81            	ret
2403                     ; 620 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2403                     ; 621                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2403                     ; 622                               u8 ExtTRGFilter)
2403                     ; 623 {
2404                     	switch	.text
2405  033b               _TIM1_ETRClockMode1Config:
2407  033b 89            	pushw	x
2408       00000000      OFST:	set	0
2411                     ; 625     assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2413                     ; 626     assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2415                     ; 629     TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2417  033c 7b05          	ld	a,(OFST+5,sp)
2418  033e 88            	push	a
2419  033f 9f            	ld	a,xl
2420  0340 97            	ld	xl,a
2421  0341 7b02          	ld	a,(OFST+2,sp)
2422  0343 95            	ld	xh,a
2423  0344 ad1f          	call	_TIM1_ETRConfig
2425  0346 84            	pop	a
2426                     ; 632     TIM1->SMCR = (u8)((TIM1->SMCR & (u8)(~(TIM1_SMCR_SMS | TIM1_SMCR_TS ))) | (u8)(  TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
2428  0347 c65252        	ld	a,21074
2429  034a a488          	and	a,#136
2430  034c aa77          	or	a,#119
2431  034e c75252        	ld	21074,a
2432                     ; 633 }
2435  0351 85            	popw	x
2436  0352 81            	ret
2494                     ; 652 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2494                     ; 653                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2494                     ; 654                               u8 ExtTRGFilter)
2494                     ; 655 {
2495                     	switch	.text
2496  0353               _TIM1_ETRClockMode2Config:
2498  0353 89            	pushw	x
2499       00000000      OFST:	set	0
2502                     ; 657     assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2504                     ; 658     assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2506                     ; 661     TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2508  0354 7b05          	ld	a,(OFST+5,sp)
2509  0356 88            	push	a
2510  0357 9f            	ld	a,xl
2511  0358 97            	ld	xl,a
2512  0359 7b02          	ld	a,(OFST+2,sp)
2513  035b 95            	ld	xh,a
2514  035c ad07          	call	_TIM1_ETRConfig
2516  035e 84            	pop	a
2517                     ; 664     TIM1->ETR |= TIM1_ETR_ECE;
2519  035f 721c5253      	bset	21075,#6
2520                     ; 665 }
2523  0363 85            	popw	x
2524  0364 81            	ret
2580                     ; 684 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2580                     ; 685                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2580                     ; 686                     u8 ExtTRGFilter)
2580                     ; 687 {
2581                     	switch	.text
2582  0365               _TIM1_ETRConfig:
2584  0365 89            	pushw	x
2585       00000000      OFST:	set	0
2588                     ; 689     assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
2590                     ; 691     TIM1->ETR |= (u8)((u8)TIM1_ExtTRGPrescaler |
2590                     ; 692                       (u8)TIM1_ExtTRGPolarity  |
2590                     ; 693                       (u8)ExtTRGFilter          );
2592  0366 9f            	ld	a,xl
2593  0367 1a01          	or	a,(OFST+1,sp)
2594  0369 1a05          	or	a,(OFST+5,sp)
2595  036b ca5253        	or	a,21075
2596  036e c75253        	ld	21075,a
2597                     ; 694 }
2600  0371 85            	popw	x
2601  0372 81            	ret
2690                     ; 716 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
2690                     ; 717                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2690                     ; 718                                  u8 ICFilter)
2690                     ; 719 {
2691                     	switch	.text
2692  0373               _TIM1_TIxExternalClockConfig:
2694  0373 89            	pushw	x
2695       00000000      OFST:	set	0
2698                     ; 721     assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
2700                     ; 722     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2702                     ; 723     assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
2704                     ; 726     if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
2706  0374 9e            	ld	a,xh
2707  0375 a160          	cp	a,#96
2708  0377 260f          	jrne	L1131
2709                     ; 728         TI2_Config((u8)TIM1_ICPolarity, (u8)TIM1_ICSELECTION_DIRECTTI, (u8)ICFilter);
2711  0379 7b05          	ld	a,(OFST+5,sp)
2712  037b 88            	push	a
2713  037c ae0001        	ldw	x,#1
2714  037f 7b03          	ld	a,(OFST+3,sp)
2715  0381 95            	ld	xh,a
2716  0382 cd0845        	call	L5_TI2_Config
2718  0385 84            	pop	a
2720  0386 200d          	jra	L3131
2721  0388               L1131:
2722                     ; 732         TI1_Config((u8)TIM1_ICPolarity, (u8)TIM1_ICSELECTION_DIRECTTI, (u8)ICFilter);
2724  0388 7b05          	ld	a,(OFST+5,sp)
2725  038a 88            	push	a
2726  038b ae0001        	ldw	x,#1
2727  038e 7b03          	ld	a,(OFST+3,sp)
2728  0390 95            	ld	xh,a
2729  0391 cd0815        	call	L3_TI1_Config
2731  0394 84            	pop	a
2732  0395               L3131:
2733                     ; 736     TIM1_SelectInputTrigger(TIM1_TIxExternalCLKSource);
2735  0395 7b01          	ld	a,(OFST+1,sp)
2736  0397 ad0a          	call	_TIM1_SelectInputTrigger
2738                     ; 739     TIM1->SMCR |= (u8)(TIM1_SLAVEMODE_EXTERNAL1);
2740  0399 c65252        	ld	a,21074
2741  039c aa07          	or	a,#7
2742  039e c75252        	ld	21074,a
2743                     ; 740 }
2746  03a1 85            	popw	x
2747  03a2 81            	ret
2832                     ; 752 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
2832                     ; 753 {
2833                     	switch	.text
2834  03a3               _TIM1_SelectInputTrigger:
2836  03a3 88            	push	a
2837       00000000      OFST:	set	0
2840                     ; 755     assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
2842                     ; 758     TIM1->SMCR = (u8)((TIM1->SMCR & (u8)(~TIM1_SMCR_TS)) | (u8)TIM1_InputTriggerSource);
2844  03a4 c65252        	ld	a,21074
2845  03a7 a48f          	and	a,#143
2846  03a9 1a01          	or	a,(OFST+1,sp)
2847  03ab c75252        	ld	21074,a
2848                     ; 759 }
2851  03ae 84            	pop	a
2852  03af 81            	ret
2888                     ; 769 void TIM1_UpdateDisableConfig(FunctionalState NewState)
2888                     ; 770 {
2889                     	switch	.text
2890  03b0               _TIM1_UpdateDisableConfig:
2894                     ; 772     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2896                     ; 775     if (NewState != DISABLE)
2898  03b0 4d            	tnz	a
2899  03b1 2706          	jreq	L1731
2900                     ; 777         TIM1->CR1 |= TIM1_CR1_UDIS;
2902  03b3 72125250      	bset	21072,#1
2904  03b7 2004          	jra	L3731
2905  03b9               L1731:
2906                     ; 781         TIM1->CR1 &= (u8)(~TIM1_CR1_UDIS);
2908  03b9 72135250      	bres	21072,#1
2909  03bd               L3731:
2910                     ; 783 }
2913  03bd 81            	ret
2971                     ; 793 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
2971                     ; 794 {
2972                     	switch	.text
2973  03be               _TIM1_UpdateRequestConfig:
2977                     ; 796     assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
2979                     ; 799     if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
2981  03be 4d            	tnz	a
2982  03bf 2706          	jreq	L3241
2983                     ; 801         TIM1->CR1 |= TIM1_CR1_URS;
2985  03c1 72145250      	bset	21072,#2
2987  03c5 2004          	jra	L5241
2988  03c7               L3241:
2989                     ; 805         TIM1->CR1 &= (u8)(~TIM1_CR1_URS);
2991  03c7 72155250      	bres	21072,#2
2992  03cb               L5241:
2993                     ; 807 }
2996  03cb 81            	ret
3032                     ; 816 void TIM1_SelectHallSensor(FunctionalState NewState)
3032                     ; 817 {
3033                     	switch	.text
3034  03cc               _TIM1_SelectHallSensor:
3038                     ; 819     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3040                     ; 822     if (NewState != DISABLE)
3042  03cc 4d            	tnz	a
3043  03cd 2706          	jreq	L5441
3044                     ; 824         TIM1->CR2 |= TIM1_CR2_TI1S;
3046  03cf 721e5251      	bset	21073,#7
3048  03d3 2004          	jra	L7441
3049  03d5               L5441:
3050                     ; 828         TIM1->CR2 &= (u8)(~TIM1_CR2_TI1S);
3052  03d5 721f5251      	bres	21073,#7
3053  03d9               L7441:
3054                     ; 830 }
3057  03d9 81            	ret
3114                     ; 841 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
3114                     ; 842 {
3115                     	switch	.text
3116  03da               _TIM1_SelectOnePulseMode:
3120                     ; 844     assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
3122                     ; 847     if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
3124  03da 4d            	tnz	a
3125  03db 2706          	jreq	L7741
3126                     ; 849         TIM1->CR1 |= TIM1_CR1_OPM;
3128  03dd 72165250      	bset	21072,#3
3130  03e1 2004          	jra	L1051
3131  03e3               L7741:
3132                     ; 853         TIM1->CR1 &= (u8)(~TIM1_CR1_OPM);
3134  03e3 72175250      	bres	21072,#3
3135  03e7               L1051:
3136                     ; 856 }
3139  03e7 81            	ret
3237                     ; 872 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
3237                     ; 873 {
3238                     	switch	.text
3239  03e8               _TIM1_SelectOutputTrigger:
3241  03e8 88            	push	a
3242       00000000      OFST:	set	0
3245                     ; 876     assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
3247                     ; 878     TIM1->CR2 = (u8)((TIM1->CR2 & (u8)(~TIM1_CR2_MMS    )) | (u8)  TIM1_TRGOSource);
3249  03e9 c65251        	ld	a,21073
3250  03ec a48f          	and	a,#143
3251  03ee 1a01          	or	a,(OFST+1,sp)
3252  03f0 c75251        	ld	21073,a
3253                     ; 879 }
3256  03f3 84            	pop	a
3257  03f4 81            	ret
3331                     ; 891 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
3331                     ; 892 {
3332                     	switch	.text
3333  03f5               _TIM1_SelectSlaveMode:
3335  03f5 88            	push	a
3336       00000000      OFST:	set	0
3339                     ; 895     assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
3341                     ; 898     TIM1->SMCR = (u8)((TIM1->SMCR &  (u8)(~TIM1_SMCR_SMS)) |  (u8)TIM1_SlaveMode);
3343  03f6 c65252        	ld	a,21074
3344  03f9 a4f8          	and	a,#248
3345  03fb 1a01          	or	a,(OFST+1,sp)
3346  03fd c75252        	ld	21074,a
3347                     ; 900 }
3350  0400 84            	pop	a
3351  0401 81            	ret
3387                     ; 908 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
3387                     ; 909 {
3388                     	switch	.text
3389  0402               _TIM1_SelectMasterSlaveMode:
3393                     ; 911     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3395                     ; 914     if (NewState != DISABLE)
3397  0402 4d            	tnz	a
3398  0403 2706          	jreq	L3161
3399                     ; 916         TIM1->SMCR |= TIM1_SMCR_MSM;
3401  0405 721e5252      	bset	21074,#7
3403  0409 2004          	jra	L5161
3404  040b               L3161:
3405                     ; 920         TIM1->SMCR &= (u8)(~TIM1_SMCR_MSM);
3407  040b 721f5252      	bres	21074,#7
3408  040f               L5161:
3409                     ; 922 }
3412  040f 81            	ret
3498                     ; 944 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
3498                     ; 945                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
3498                     ; 946                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
3498                     ; 947 {
3499                     	switch	.text
3500  0410               _TIM1_EncoderInterfaceConfig:
3502  0410 89            	pushw	x
3503       00000000      OFST:	set	0
3506                     ; 951     assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
3508                     ; 952     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
3510                     ; 953     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
3512                     ; 956     if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
3514  0411 9f            	ld	a,xl
3515  0412 4d            	tnz	a
3516  0413 2706          	jreq	L7561
3517                     ; 958         TIM1->CCER1 |= TIM1_CCER1_CC1P;
3519  0415 7212525c      	bset	21084,#1
3521  0419 2004          	jra	L1661
3522  041b               L7561:
3523                     ; 962         TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC1P);
3525  041b 7213525c      	bres	21084,#1
3526  041f               L1661:
3527                     ; 965     if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
3529  041f 0d05          	tnz	(OFST+5,sp)
3530  0421 2706          	jreq	L3661
3531                     ; 967         TIM1->CCER1 |= TIM1_CCER1_CC2P;
3533  0423 721a525c      	bset	21084,#5
3535  0427 2004          	jra	L5661
3536  0429               L3661:
3537                     ; 971         TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC2P);
3539  0429 721b525c      	bres	21084,#5
3540  042d               L5661:
3541                     ; 974     TIM1->SMCR = (u8)((TIM1->SMCR & (u8)(TIM1_SMCR_MSM | TIM1_SMCR_TS)) | (u8) TIM1_EncoderMode);
3543  042d c65252        	ld	a,21074
3544  0430 a4f0          	and	a,#240
3545  0432 1a01          	or	a,(OFST+1,sp)
3546  0434 c75252        	ld	21074,a
3547                     ; 977     TIM1->CCMR1 = (u8)((TIM1->CCMR1 & (u8)(~TIM1_CCMR_CCxS))  | (u8) CCMR_TIxDirect_Set);
3549  0437 c65258        	ld	a,21080
3550  043a a4fc          	and	a,#252
3551  043c aa01          	or	a,#1
3552  043e c75258        	ld	21080,a
3553                     ; 978     TIM1->CCMR2 = (u8)((TIM1->CCMR2 & (u8)(~TIM1_CCMR_CCxS)) | (u8) CCMR_TIxDirect_Set);
3555  0441 c65259        	ld	a,21081
3556  0444 a4fc          	and	a,#252
3557  0446 aa01          	or	a,#1
3558  0448 c75259        	ld	21081,a
3559                     ; 980 }
3562  044b 85            	popw	x
3563  044c 81            	ret
3630                     ; 993 void TIM1_PrescalerConfig(u16 Prescaler,
3630                     ; 994                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
3630                     ; 995 {
3631                     	switch	.text
3632  044d               _TIM1_PrescalerConfig:
3634  044d 89            	pushw	x
3635       00000000      OFST:	set	0
3638                     ; 997     assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
3640                     ; 1000     TIM1->PSCRH = (u8)(Prescaler >> 8);
3642  044e 9e            	ld	a,xh
3643  044f c75260        	ld	21088,a
3644                     ; 1001     TIM1->PSCRL = (u8)(Prescaler);
3646  0452 9f            	ld	a,xl
3647  0453 c75261        	ld	21089,a
3648                     ; 1004     TIM1->EGR = (u8)TIM1_PSCReloadMode;
3650  0456 7b05          	ld	a,(OFST+5,sp)
3651  0458 c75257        	ld	21079,a
3652                     ; 1006 }
3655  045b 85            	popw	x
3656  045c 81            	ret
3692                     ; 1019 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
3692                     ; 1020 {
3693                     	switch	.text
3694  045d               _TIM1_CounterModeConfig:
3696  045d 88            	push	a
3697       00000000      OFST:	set	0
3700                     ; 1022     assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
3702                     ; 1026     TIM1->CR1 = (u8)((TIM1->CR1 & (u8)((u8)(~TIM1_CR1_CMS) & (u8)(~TIM1_CR1_DIR))) | (u8)TIM1_CounterMode);
3704  045e c65250        	ld	a,21072
3705  0461 a48f          	and	a,#143
3706  0463 1a01          	or	a,(OFST+1,sp)
3707  0465 c75250        	ld	21072,a
3708                     ; 1027 }
3711  0468 84            	pop	a
3712  0469 81            	ret
3770                     ; 1038 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3770                     ; 1039 {
3771                     	switch	.text
3772  046a               _TIM1_ForcedOC1Config:
3774  046a 88            	push	a
3775       00000000      OFST:	set	0
3778                     ; 1041     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3780                     ; 1044     TIM1->CCMR1 =  (u8)((TIM1->CCMR1 & (u8)(~TIM1_CCMR_OCM))  | (u8)TIM1_ForcedAction);
3782  046b c65258        	ld	a,21080
3783  046e a48f          	and	a,#143
3784  0470 1a01          	or	a,(OFST+1,sp)
3785  0472 c75258        	ld	21080,a
3786                     ; 1045 }
3789  0475 84            	pop	a
3790  0476 81            	ret
3826                     ; 1056 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3826                     ; 1057 {
3827                     	switch	.text
3828  0477               _TIM1_ForcedOC2Config:
3830  0477 88            	push	a
3831       00000000      OFST:	set	0
3834                     ; 1059     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3836                     ; 1062     TIM1->CCMR2  =  (u8)((TIM1->CCMR2 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_ForcedAction);
3838  0478 c65259        	ld	a,21081
3839  047b a48f          	and	a,#143
3840  047d 1a01          	or	a,(OFST+1,sp)
3841  047f c75259        	ld	21081,a
3842                     ; 1063 }
3845  0482 84            	pop	a
3846  0483 81            	ret
3882                     ; 1075 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3882                     ; 1076 {
3883                     	switch	.text
3884  0484               _TIM1_ForcedOC3Config:
3886  0484 88            	push	a
3887       00000000      OFST:	set	0
3890                     ; 1078     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3892                     ; 1081     TIM1->CCMR3  =  (u8)((TIM1->CCMR3 & (u8)(~TIM1_CCMR_OCM))  | (u8)TIM1_ForcedAction);
3894  0485 c6525a        	ld	a,21082
3895  0488 a48f          	and	a,#143
3896  048a 1a01          	or	a,(OFST+1,sp)
3897  048c c7525a        	ld	21082,a
3898                     ; 1082 }
3901  048f 84            	pop	a
3902  0490 81            	ret
3938                     ; 1094 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3938                     ; 1095 {
3939                     	switch	.text
3940  0491               _TIM1_ForcedOC4Config:
3942  0491 88            	push	a
3943       00000000      OFST:	set	0
3946                     ; 1097     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3948                     ; 1100     TIM1->CCMR4  =  (u8)((TIM1->CCMR4 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_ForcedAction);
3950  0492 c6525b        	ld	a,21083
3951  0495 a48f          	and	a,#143
3952  0497 1a01          	or	a,(OFST+1,sp)
3953  0499 c7525b        	ld	21083,a
3954                     ; 1101 }
3957  049c 84            	pop	a
3958  049d 81            	ret
3994                     ; 1110 void TIM1_ARRPreloadConfig(FunctionalState NewState)
3994                     ; 1111 {
3995                     	switch	.text
3996  049e               _TIM1_ARRPreloadConfig:
4000                     ; 1113     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4002                     ; 1116     if (NewState != DISABLE)
4004  049e 4d            	tnz	a
4005  049f 2706          	jreq	L5502
4006                     ; 1118         TIM1->CR1 |= TIM1_CR1_ARPE;
4008  04a1 721e5250      	bset	21072,#7
4010  04a5 2004          	jra	L7502
4011  04a7               L5502:
4012                     ; 1122         TIM1->CR1 &= (u8)(~TIM1_CR1_ARPE);
4014  04a7 721f5250      	bres	21072,#7
4015  04ab               L7502:
4016                     ; 1124 }
4019  04ab 81            	ret
4054                     ; 1133 void TIM1_SelectCOM(FunctionalState NewState)
4054                     ; 1134 {
4055                     	switch	.text
4056  04ac               _TIM1_SelectCOM:
4060                     ; 1136     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4062                     ; 1139     if (NewState != DISABLE)
4064  04ac 4d            	tnz	a
4065  04ad 2706          	jreq	L7702
4066                     ; 1141         TIM1->CR2 |= TIM1_CR2_COMS;
4068  04af 72145251      	bset	21073,#2
4070  04b3 2004          	jra	L1012
4071  04b5               L7702:
4072                     ; 1145         TIM1->CR2 &= (u8)(~TIM1_CR2_COMS);
4074  04b5 72155251      	bres	21073,#2
4075  04b9               L1012:
4076                     ; 1147 }
4079  04b9 81            	ret
4115                     ; 1155 void TIM1_CCPreloadControl(FunctionalState NewState)
4115                     ; 1156 {
4116                     	switch	.text
4117  04ba               _TIM1_CCPreloadControl:
4121                     ; 1158     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4123                     ; 1161     if (NewState != DISABLE)
4125  04ba 4d            	tnz	a
4126  04bb 2706          	jreq	L1212
4127                     ; 1163         TIM1->CR2 |= TIM1_CR2_CCPC;
4129  04bd 72105251      	bset	21073,#0
4131  04c1 2004          	jra	L3212
4132  04c3               L1212:
4133                     ; 1167         TIM1->CR2 &= (u8)(~TIM1_CR2_CCPC);
4135  04c3 72115251      	bres	21073,#0
4136  04c7               L3212:
4137                     ; 1169 }
4140  04c7 81            	ret
4176                     ; 1178 void TIM1_OC1PreloadConfig(FunctionalState NewState)
4176                     ; 1179 {
4177                     	switch	.text
4178  04c8               _TIM1_OC1PreloadConfig:
4182                     ; 1181     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4184                     ; 1184     if (NewState != DISABLE)
4186  04c8 4d            	tnz	a
4187  04c9 2706          	jreq	L3412
4188                     ; 1186         TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
4190  04cb 72165258      	bset	21080,#3
4192  04cf 2004          	jra	L5412
4193  04d1               L3412:
4194                     ; 1190         TIM1->CCMR1 &= (u8)(~TIM1_CCMR_OCxPE);
4196  04d1 72175258      	bres	21080,#3
4197  04d5               L5412:
4198                     ; 1192 }
4201  04d5 81            	ret
4237                     ; 1201 void TIM1_OC2PreloadConfig(FunctionalState NewState)
4237                     ; 1202 {
4238                     	switch	.text
4239  04d6               _TIM1_OC2PreloadConfig:
4243                     ; 1204     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4245                     ; 1207     if (NewState != DISABLE)
4247  04d6 4d            	tnz	a
4248  04d7 2706          	jreq	L5612
4249                     ; 1209         TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
4251  04d9 72165259      	bset	21081,#3
4253  04dd 2004          	jra	L7612
4254  04df               L5612:
4255                     ; 1213         TIM1->CCMR2 &= (u8)(~TIM1_CCMR_OCxPE);
4257  04df 72175259      	bres	21081,#3
4258  04e3               L7612:
4259                     ; 1215 }
4262  04e3 81            	ret
4298                     ; 1224 void TIM1_OC3PreloadConfig(FunctionalState NewState)
4298                     ; 1225 {
4299                     	switch	.text
4300  04e4               _TIM1_OC3PreloadConfig:
4304                     ; 1227     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4306                     ; 1230     if (NewState != DISABLE)
4308  04e4 4d            	tnz	a
4309  04e5 2706          	jreq	L7022
4310                     ; 1232         TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
4312  04e7 7216525a      	bset	21082,#3
4314  04eb 2004          	jra	L1122
4315  04ed               L7022:
4316                     ; 1236         TIM1->CCMR3 &= (u8)(~TIM1_CCMR_OCxPE);
4318  04ed 7217525a      	bres	21082,#3
4319  04f1               L1122:
4320                     ; 1238 }
4323  04f1 81            	ret
4359                     ; 1248 void TIM1_OC4PreloadConfig(FunctionalState NewState)
4359                     ; 1249 {
4360                     	switch	.text
4361  04f2               _TIM1_OC4PreloadConfig:
4365                     ; 1251     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4367                     ; 1254     if (NewState != DISABLE)
4369  04f2 4d            	tnz	a
4370  04f3 2706          	jreq	L1322
4371                     ; 1256         TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
4373  04f5 7216525b      	bset	21083,#3
4375  04f9 2004          	jra	L3322
4376  04fb               L1322:
4377                     ; 1260         TIM1->CCMR4 &= (u8)(~TIM1_CCMR_OCxPE);
4379  04fb 7217525b      	bres	21083,#3
4380  04ff               L3322:
4381                     ; 1262 }
4384  04ff 81            	ret
4419                     ; 1270 void TIM1_OC1FastConfig(FunctionalState NewState)
4419                     ; 1271 {
4420                     	switch	.text
4421  0500               _TIM1_OC1FastConfig:
4425                     ; 1273     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4427                     ; 1276     if (NewState != DISABLE)
4429  0500 4d            	tnz	a
4430  0501 2706          	jreq	L3522
4431                     ; 1278         TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
4433  0503 72145258      	bset	21080,#2
4435  0507 2004          	jra	L5522
4436  0509               L3522:
4437                     ; 1282         TIM1->CCMR1 &= (u8)(~TIM1_CCMR_OCxFE);
4439  0509 72155258      	bres	21080,#2
4440  050d               L5522:
4441                     ; 1284 }
4444  050d 81            	ret
4479                     ; 1294 void TIM1_OC2FastConfig(FunctionalState NewState)
4479                     ; 1295 {
4480                     	switch	.text
4481  050e               _TIM1_OC2FastConfig:
4485                     ; 1297     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4487                     ; 1300     if (NewState != DISABLE)
4489  050e 4d            	tnz	a
4490  050f 2706          	jreq	L5722
4491                     ; 1302         TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
4493  0511 72145259      	bset	21081,#2
4495  0515 2004          	jra	L7722
4496  0517               L5722:
4497                     ; 1306         TIM1->CCMR2 &= (u8)(~TIM1_CCMR_OCxFE);
4499  0517 72155259      	bres	21081,#2
4500  051b               L7722:
4501                     ; 1308 }
4504  051b 81            	ret
4539                     ; 1317 void TIM1_OC3FastConfig(FunctionalState NewState)
4539                     ; 1318 {
4540                     	switch	.text
4541  051c               _TIM1_OC3FastConfig:
4545                     ; 1320     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4547                     ; 1323     if (NewState != DISABLE)
4549  051c 4d            	tnz	a
4550  051d 2706          	jreq	L7132
4551                     ; 1325         TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
4553  051f 7214525a      	bset	21082,#2
4555  0523 2004          	jra	L1232
4556  0525               L7132:
4557                     ; 1329         TIM1->CCMR3 &= (u8)(~TIM1_CCMR_OCxFE);
4559  0525 7215525a      	bres	21082,#2
4560  0529               L1232:
4561                     ; 1331 }
4564  0529 81            	ret
4599                     ; 1340 void TIM1_OC4FastConfig(FunctionalState NewState)
4599                     ; 1341 {
4600                     	switch	.text
4601  052a               _TIM1_OC4FastConfig:
4605                     ; 1343     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4607                     ; 1346     if (NewState != DISABLE)
4609  052a 4d            	tnz	a
4610  052b 2706          	jreq	L1432
4611                     ; 1348         TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
4613  052d 7214525b      	bset	21083,#2
4615  0531 2004          	jra	L3432
4616  0533               L1432:
4617                     ; 1352         TIM1->CCMR4 &= (u8)(~TIM1_CCMR_OCxFE);
4619  0533 7215525b      	bres	21083,#2
4620  0537               L3432:
4621                     ; 1354 }
4624  0537 81            	ret
4729                     ; 1371 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
4729                     ; 1372 {
4730                     	switch	.text
4731  0538               _TIM1_GenerateEvent:
4735                     ; 1374     assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
4737                     ; 1377     TIM1->EGR = (u8)TIM1_EventSource;
4739  0538 c75257        	ld	21079,a
4740                     ; 1378 }
4743  053b 81            	ret
4779                     ; 1389 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
4779                     ; 1390 {
4780                     	switch	.text
4781  053c               _TIM1_OC1PolarityConfig:
4785                     ; 1392     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
4787                     ; 1395     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
4789  053c 4d            	tnz	a
4790  053d 2706          	jreq	L5242
4791                     ; 1397         TIM1->CCER1 |= TIM1_CCER1_CC1P;
4793  053f 7212525c      	bset	21084,#1
4795  0543 2004          	jra	L7242
4796  0545               L5242:
4797                     ; 1401         TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC1P);
4799  0545 7213525c      	bres	21084,#1
4800  0549               L7242:
4801                     ; 1403 }
4804  0549 81            	ret
4840                     ; 1414 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
4840                     ; 1415 {
4841                     	switch	.text
4842  054a               _TIM1_OC1NPolarityConfig:
4846                     ; 1417     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
4848                     ; 1420     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
4850  054a 4d            	tnz	a
4851  054b 2706          	jreq	L7442
4852                     ; 1422         TIM1->CCER1 |= TIM1_CCER1_CC1NP;
4854  054d 7216525c      	bset	21084,#3
4856  0551 2004          	jra	L1542
4857  0553               L7442:
4858                     ; 1426         TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC1NP);
4860  0553 7217525c      	bres	21084,#3
4861  0557               L1542:
4862                     ; 1428 }
4865  0557 81            	ret
4901                     ; 1439 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
4901                     ; 1440 {
4902                     	switch	.text
4903  0558               _TIM1_OC2PolarityConfig:
4907                     ; 1442     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
4909                     ; 1445     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
4911  0558 4d            	tnz	a
4912  0559 2706          	jreq	L1742
4913                     ; 1447         TIM1->CCER1 |= TIM1_CCER1_CC2P;
4915  055b 721a525c      	bset	21084,#5
4917  055f 2004          	jra	L3742
4918  0561               L1742:
4919                     ; 1451         TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC2P);
4921  0561 721b525c      	bres	21084,#5
4922  0565               L3742:
4923                     ; 1453 }
4926  0565 81            	ret
4962                     ; 1463 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
4962                     ; 1464 {
4963                     	switch	.text
4964  0566               _TIM1_OC2NPolarityConfig:
4968                     ; 1466     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
4970                     ; 1469     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
4972  0566 4d            	tnz	a
4973  0567 2706          	jreq	L3152
4974                     ; 1471         TIM1->CCER1 |= TIM1_CCER1_CC2NP;
4976  0569 721e525c      	bset	21084,#7
4978  056d 2004          	jra	L5152
4979  056f               L3152:
4980                     ; 1475         TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC2NP);
4982  056f 721f525c      	bres	21084,#7
4983  0573               L5152:
4984                     ; 1477 }
4987  0573 81            	ret
5023                     ; 1488 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5023                     ; 1489 {
5024                     	switch	.text
5025  0574               _TIM1_OC3PolarityConfig:
5029                     ; 1491     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5031                     ; 1494     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5033  0574 4d            	tnz	a
5034  0575 2706          	jreq	L5352
5035                     ; 1496         TIM1->CCER2 |= TIM1_CCER2_CC3P;
5037  0577 7212525d      	bset	21085,#1
5039  057b 2004          	jra	L7352
5040  057d               L5352:
5041                     ; 1500         TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC3P);
5043  057d 7213525d      	bres	21085,#1
5044  0581               L7352:
5045                     ; 1502 }
5048  0581 81            	ret
5084                     ; 1513 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5084                     ; 1514 {
5085                     	switch	.text
5086  0582               _TIM1_OC3NPolarityConfig:
5090                     ; 1516     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
5092                     ; 1519     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
5094  0582 4d            	tnz	a
5095  0583 2706          	jreq	L7552
5096                     ; 1521         TIM1->CCER2 |= TIM1_CCER2_CC3NP;
5098  0585 7216525d      	bset	21085,#3
5100  0589 2004          	jra	L1652
5101  058b               L7552:
5102                     ; 1525         TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC3NP);
5104  058b 7217525d      	bres	21085,#3
5105  058f               L1652:
5106                     ; 1527 }
5109  058f 81            	ret
5145                     ; 1537 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5145                     ; 1538 {
5146                     	switch	.text
5147  0590               _TIM1_OC4PolarityConfig:
5151                     ; 1540     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5153                     ; 1543     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5155  0590 4d            	tnz	a
5156  0591 2706          	jreq	L1062
5157                     ; 1545         TIM1->CCER2 |= TIM1_CCER2_CC4P;
5159  0593 721a525d      	bset	21085,#5
5161  0597 2004          	jra	L3062
5162  0599               L1062:
5163                     ; 1549         TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC4P);
5165  0599 721b525d      	bres	21085,#5
5166  059d               L3062:
5167                     ; 1551 }
5170  059d 81            	ret
5215                     ; 1566 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
5215                     ; 1567 {
5216                     	switch	.text
5217  059e               _TIM1_CCxCmd:
5219  059e 89            	pushw	x
5220       00000000      OFST:	set	0
5223                     ; 1569     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
5225                     ; 1570     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5227                     ; 1572     if (TIM1_Channel == TIM1_CHANNEL_1)
5229  059f 9e            	ld	a,xh
5230  05a0 4d            	tnz	a
5231  05a1 2610          	jrne	L7262
5232                     ; 1575         if (NewState != DISABLE)
5234  05a3 9f            	ld	a,xl
5235  05a4 4d            	tnz	a
5236  05a5 2706          	jreq	L1362
5237                     ; 1577             TIM1->CCER1 |= TIM1_CCER1_CC1E;
5239  05a7 7210525c      	bset	21084,#0
5241  05ab 2040          	jra	L5362
5242  05ad               L1362:
5243                     ; 1581             TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC1E);
5245  05ad 7211525c      	bres	21084,#0
5246  05b1 203a          	jra	L5362
5247  05b3               L7262:
5248                     ; 1585     else if (TIM1_Channel == TIM1_CHANNEL_2)
5250  05b3 7b01          	ld	a,(OFST+1,sp)
5251  05b5 a101          	cp	a,#1
5252  05b7 2610          	jrne	L7362
5253                     ; 1588         if (NewState != DISABLE)
5255  05b9 0d02          	tnz	(OFST+2,sp)
5256  05bb 2706          	jreq	L1462
5257                     ; 1590             TIM1->CCER1 |= TIM1_CCER1_CC2E;
5259  05bd 7218525c      	bset	21084,#4
5261  05c1 202a          	jra	L5362
5262  05c3               L1462:
5263                     ; 1594             TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC2E);
5265  05c3 7219525c      	bres	21084,#4
5266  05c7 2024          	jra	L5362
5267  05c9               L7362:
5268                     ; 1597     else if (TIM1_Channel == TIM1_CHANNEL_3)
5270  05c9 7b01          	ld	a,(OFST+1,sp)
5271  05cb a102          	cp	a,#2
5272  05cd 2610          	jrne	L7462
5273                     ; 1600         if (NewState != DISABLE)
5275  05cf 0d02          	tnz	(OFST+2,sp)
5276  05d1 2706          	jreq	L1562
5277                     ; 1602             TIM1->CCER2 |= TIM1_CCER2_CC3E;
5279  05d3 7210525d      	bset	21085,#0
5281  05d7 2014          	jra	L5362
5282  05d9               L1562:
5283                     ; 1606             TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC3E);
5285  05d9 7211525d      	bres	21085,#0
5286  05dd 200e          	jra	L5362
5287  05df               L7462:
5288                     ; 1612         if (NewState != DISABLE)
5290  05df 0d02          	tnz	(OFST+2,sp)
5291  05e1 2706          	jreq	L7562
5292                     ; 1614             TIM1->CCER2 |= TIM1_CCER2_CC4E;
5294  05e3 7218525d      	bset	21085,#4
5296  05e7 2004          	jra	L5362
5297  05e9               L7562:
5298                     ; 1618             TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC4E);
5300  05e9 7219525d      	bres	21085,#4
5301  05ed               L5362:
5302                     ; 1621 }
5305  05ed 85            	popw	x
5306  05ee 81            	ret
5351                     ; 1634 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
5351                     ; 1635 {
5352                     	switch	.text
5353  05ef               _TIM1_CCxNCmd:
5355  05ef 89            	pushw	x
5356       00000000      OFST:	set	0
5359                     ; 1637     assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
5361                     ; 1638     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5363                     ; 1640     if (TIM1_Channel == TIM1_CHANNEL_1)
5365  05f0 9e            	ld	a,xh
5366  05f1 4d            	tnz	a
5367  05f2 2610          	jrne	L5072
5368                     ; 1643         if (NewState != DISABLE)
5370  05f4 9f            	ld	a,xl
5371  05f5 4d            	tnz	a
5372  05f6 2706          	jreq	L7072
5373                     ; 1645             TIM1->CCER1 |= TIM1_CCER1_CC1NE;
5375  05f8 7214525c      	bset	21084,#2
5377  05fc 202a          	jra	L3172
5378  05fe               L7072:
5379                     ; 1649             TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC1NE);
5381  05fe 7215525c      	bres	21084,#2
5382  0602 2024          	jra	L3172
5383  0604               L5072:
5384                     ; 1652     else if (TIM1_Channel == TIM1_CHANNEL_2)
5386  0604 7b01          	ld	a,(OFST+1,sp)
5387  0606 a101          	cp	a,#1
5388  0608 2610          	jrne	L5172
5389                     ; 1655         if (NewState != DISABLE)
5391  060a 0d02          	tnz	(OFST+2,sp)
5392  060c 2706          	jreq	L7172
5393                     ; 1657             TIM1->CCER1 |= TIM1_CCER1_CC2NE;
5395  060e 721c525c      	bset	21084,#6
5397  0612 2014          	jra	L3172
5398  0614               L7172:
5399                     ; 1661             TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC2NE);
5401  0614 721d525c      	bres	21084,#6
5402  0618 200e          	jra	L3172
5403  061a               L5172:
5404                     ; 1667         if (NewState != DISABLE)
5406  061a 0d02          	tnz	(OFST+2,sp)
5407  061c 2706          	jreq	L5272
5408                     ; 1669             TIM1->CCER2 |= TIM1_CCER2_CC3NE;
5410  061e 7214525d      	bset	21085,#2
5412  0622 2004          	jra	L3172
5413  0624               L5272:
5414                     ; 1673             TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC3NE);
5416  0624 7215525d      	bres	21085,#2
5417  0628               L3172:
5418                     ; 1676 }
5421  0628 85            	popw	x
5422  0629 81            	ret
5467                     ; 1700 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
5467                     ; 1701 {
5468                     	switch	.text
5469  062a               _TIM1_SelectOCxM:
5471  062a 89            	pushw	x
5472       00000000      OFST:	set	0
5475                     ; 1703     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
5477                     ; 1704     assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
5479                     ; 1706     if (TIM1_Channel == TIM1_CHANNEL_1)
5481  062b 9e            	ld	a,xh
5482  062c 4d            	tnz	a
5483  062d 2610          	jrne	L3572
5484                     ; 1709         TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC1E);
5486  062f 7211525c      	bres	21084,#0
5487                     ; 1712         TIM1->CCMR1 = (u8)((TIM1->CCMR1 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_OCMode);
5489  0633 c65258        	ld	a,21080
5490  0636 a48f          	and	a,#143
5491  0638 1a02          	or	a,(OFST+2,sp)
5492  063a c75258        	ld	21080,a
5494  063d 203a          	jra	L5572
5495  063f               L3572:
5496                     ; 1714     else if (TIM1_Channel == TIM1_CHANNEL_2)
5498  063f 7b01          	ld	a,(OFST+1,sp)
5499  0641 a101          	cp	a,#1
5500  0643 2610          	jrne	L7572
5501                     ; 1717         TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC2E);
5503  0645 7219525c      	bres	21084,#4
5504                     ; 1720         TIM1->CCMR2 = (u8)((TIM1->CCMR2 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_OCMode);
5506  0649 c65259        	ld	a,21081
5507  064c a48f          	and	a,#143
5508  064e 1a02          	or	a,(OFST+2,sp)
5509  0650 c75259        	ld	21081,a
5511  0653 2024          	jra	L5572
5512  0655               L7572:
5513                     ; 1722     else if (TIM1_Channel == TIM1_CHANNEL_3)
5515  0655 7b01          	ld	a,(OFST+1,sp)
5516  0657 a102          	cp	a,#2
5517  0659 2610          	jrne	L3672
5518                     ; 1725         TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC3E);
5520  065b 7211525d      	bres	21085,#0
5521                     ; 1728         TIM1->CCMR3 = (u8)((TIM1->CCMR3 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_OCMode);
5523  065f c6525a        	ld	a,21082
5524  0662 a48f          	and	a,#143
5525  0664 1a02          	or	a,(OFST+2,sp)
5526  0666 c7525a        	ld	21082,a
5528  0669 200e          	jra	L5572
5529  066b               L3672:
5530                     ; 1733         TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC4E);
5532  066b 7219525d      	bres	21085,#4
5533                     ; 1736         TIM1->CCMR4 = (u8)((TIM1->CCMR4 & (u8)(~TIM1_CCMR_OCM)) | (u8)TIM1_OCMode);
5535  066f c6525b        	ld	a,21083
5536  0672 a48f          	and	a,#143
5537  0674 1a02          	or	a,(OFST+2,sp)
5538  0676 c7525b        	ld	21083,a
5539  0679               L5572:
5540                     ; 1738 }
5543  0679 85            	popw	x
5544  067a 81            	ret
5578                     ; 1747 void TIM1_SetCounter(u16 Counter)
5578                     ; 1748 {
5579                     	switch	.text
5580  067b               _TIM1_SetCounter:
5584                     ; 1750     TIM1->CNTRH = (u8)(Counter >> 8);
5586  067b 9e            	ld	a,xh
5587  067c c7525e        	ld	21086,a
5588                     ; 1751     TIM1->CNTRL = (u8)(Counter);
5590  067f 9f            	ld	a,xl
5591  0680 c7525f        	ld	21087,a
5592                     ; 1753 }
5595  0683 81            	ret
5629                     ; 1762 void TIM1_SetAutoreload(u16 Autoreload)
5629                     ; 1763 {
5630                     	switch	.text
5631  0684               _TIM1_SetAutoreload:
5635                     ; 1766     TIM1->ARRH = (u8)(Autoreload >> 8);
5637  0684 9e            	ld	a,xh
5638  0685 c75262        	ld	21090,a
5639                     ; 1767     TIM1->ARRL = (u8)(Autoreload);
5641  0688 9f            	ld	a,xl
5642  0689 c75263        	ld	21091,a
5643                     ; 1769 }
5646  068c 81            	ret
5680                     ; 1778 void TIM1_SetCompare1(u16 Compare1)
5680                     ; 1779 {
5681                     	switch	.text
5682  068d               _TIM1_SetCompare1:
5686                     ; 1781     TIM1->CCR1H = (u8)(Compare1 >> 8);
5688  068d 9e            	ld	a,xh
5689  068e c75265        	ld	21093,a
5690                     ; 1782     TIM1->CCR1L = (u8)(Compare1);
5692  0691 9f            	ld	a,xl
5693  0692 c75266        	ld	21094,a
5694                     ; 1784 }
5697  0695 81            	ret
5731                     ; 1793 void TIM1_SetCompare2(u16 Compare2)
5731                     ; 1794 {
5732                     	switch	.text
5733  0696               _TIM1_SetCompare2:
5737                     ; 1796     TIM1->CCR2H = (u8)(Compare2 >> 8);
5739  0696 9e            	ld	a,xh
5740  0697 c75267        	ld	21095,a
5741                     ; 1797     TIM1->CCR2L = (u8)(Compare2);
5743  069a 9f            	ld	a,xl
5744  069b c75268        	ld	21096,a
5745                     ; 1799 }
5748  069e 81            	ret
5782                     ; 1808 void TIM1_SetCompare3(u16 Compare3)
5782                     ; 1809 {
5783                     	switch	.text
5784  069f               _TIM1_SetCompare3:
5788                     ; 1811     TIM1->CCR3H = (u8)(Compare3 >> 8);
5790  069f 9e            	ld	a,xh
5791  06a0 c75269        	ld	21097,a
5792                     ; 1812     TIM1->CCR3L = (u8)(Compare3);
5794  06a3 9f            	ld	a,xl
5795  06a4 c7526a        	ld	21098,a
5796                     ; 1814 }
5799  06a7 81            	ret
5833                     ; 1823 void TIM1_SetCompare4(u16 Compare4)
5833                     ; 1824 {
5834                     	switch	.text
5835  06a8               _TIM1_SetCompare4:
5839                     ; 1826     TIM1->CCR4H = (u8)(Compare4 >> 8);
5841  06a8 9e            	ld	a,xh
5842  06a9 c7526b        	ld	21099,a
5843                     ; 1827     TIM1->CCR4L = (u8)(Compare4);
5845  06ac 9f            	ld	a,xl
5846  06ad c7526c        	ld	21100,a
5847                     ; 1828 }
5850  06b0 81            	ret
5886                     ; 1841 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
5886                     ; 1842 {
5887                     	switch	.text
5888  06b1               _TIM1_SetIC1Prescaler:
5890  06b1 88            	push	a
5891       00000000      OFST:	set	0
5894                     ; 1844     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
5896                     ; 1847     TIM1->CCMR1 = (u8)((TIM1->CCMR1 & (u8)(~TIM1_CCMR_ICxPSC)) | (u8)TIM1_IC1Prescaler);
5898  06b2 c65258        	ld	a,21080
5899  06b5 a4f3          	and	a,#243
5900  06b7 1a01          	or	a,(OFST+1,sp)
5901  06b9 c75258        	ld	21080,a
5902                     ; 1849 }
5905  06bc 84            	pop	a
5906  06bd 81            	ret
5942                     ; 1861 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
5942                     ; 1862 {
5943                     	switch	.text
5944  06be               _TIM1_SetIC2Prescaler:
5946  06be 88            	push	a
5947       00000000      OFST:	set	0
5950                     ; 1865     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
5952                     ; 1868     TIM1->CCMR2 = (u8)((TIM1->CCMR2 & (u8)(~TIM1_CCMR_ICxPSC)) | (u8)TIM1_IC2Prescaler);
5954  06bf c65259        	ld	a,21081
5955  06c2 a4f3          	and	a,#243
5956  06c4 1a01          	or	a,(OFST+1,sp)
5957  06c6 c75259        	ld	21081,a
5958                     ; 1869 }
5961  06c9 84            	pop	a
5962  06ca 81            	ret
5998                     ; 1882 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
5998                     ; 1883 {
5999                     	switch	.text
6000  06cb               _TIM1_SetIC3Prescaler:
6002  06cb 88            	push	a
6003       00000000      OFST:	set	0
6006                     ; 1886     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
6008                     ; 1889     TIM1->CCMR3 = (u8)((TIM1->CCMR3 & (u8)(~TIM1_CCMR_ICxPSC)) | (u8)TIM1_IC3Prescaler);
6010  06cc c6525a        	ld	a,21082
6011  06cf a4f3          	and	a,#243
6012  06d1 1a01          	or	a,(OFST+1,sp)
6013  06d3 c7525a        	ld	21082,a
6014                     ; 1890 }
6017  06d6 84            	pop	a
6018  06d7 81            	ret
6054                     ; 1903 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
6054                     ; 1904 {
6055                     	switch	.text
6056  06d8               _TIM1_SetIC4Prescaler:
6058  06d8 88            	push	a
6059       00000000      OFST:	set	0
6062                     ; 1907     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
6064                     ; 1910     TIM1->CCMR4 = (u8)((TIM1->CCMR4 & (u8)(~TIM1_CCMR_ICxPSC)) | (u8)TIM1_IC4Prescaler);
6066  06d9 c6525b        	ld	a,21083
6067  06dc a4f3          	and	a,#243
6068  06de 1a01          	or	a,(OFST+1,sp)
6069  06e0 c7525b        	ld	21083,a
6070                     ; 1911 }
6073  06e3 84            	pop	a
6074  06e4 81            	ret
6126                     ; 1920 u16 TIM1_GetCapture1(void)
6126                     ; 1921 {
6127                     	switch	.text
6128  06e5               _TIM1_GetCapture1:
6130  06e5 5204          	subw	sp,#4
6131       00000004      OFST:	set	4
6134                     ; 1924     u16 tmpccr1 = 0;
6136                     ; 1925     u8 tmpccr1l=0, tmpccr1h=0;
6140                     ; 1927     tmpccr1h = TIM1->CCR1H;
6142  06e7 c65265        	ld	a,21093
6143  06ea 6b02          	ld	(OFST-2,sp),a
6144                     ; 1928     tmpccr1l = TIM1->CCR1L;
6146  06ec c65266        	ld	a,21094
6147  06ef 6b01          	ld	(OFST-3,sp),a
6148                     ; 1930     tmpccr1 = (u16)(tmpccr1l);
6150  06f1 7b01          	ld	a,(OFST-3,sp)
6151  06f3 5f            	clrw	x
6152  06f4 97            	ld	xl,a
6153  06f5 1f03          	ldw	(OFST-1,sp),x
6154                     ; 1931     tmpccr1 |= (u16)((u16)tmpccr1h << 8);
6156  06f7 7b02          	ld	a,(OFST-2,sp)
6157  06f9 5f            	clrw	x
6158  06fa 97            	ld	xl,a
6159  06fb 4f            	clr	a
6160  06fc 02            	rlwa	x,a
6161  06fd 01            	rrwa	x,a
6162  06fe 1a04          	or	a,(OFST+0,sp)
6163  0700 01            	rrwa	x,a
6164  0701 1a03          	or	a,(OFST-1,sp)
6165  0703 01            	rrwa	x,a
6166  0704 1f03          	ldw	(OFST-1,sp),x
6167                     ; 1933     return (u16)tmpccr1;
6169  0706 1e03          	ldw	x,(OFST-1,sp)
6172  0708 5b04          	addw	sp,#4
6173  070a 81            	ret
6225                     ; 1942 u16 TIM1_GetCapture2(void)
6225                     ; 1943 {
6226                     	switch	.text
6227  070b               _TIM1_GetCapture2:
6229  070b 5204          	subw	sp,#4
6230       00000004      OFST:	set	4
6233                     ; 1946     u16 tmpccr2 = 0;
6235                     ; 1947     u8 tmpccr2l=0, tmpccr2h=0;
6239                     ; 1949     tmpccr2h = TIM1->CCR2H;
6241  070d c65267        	ld	a,21095
6242  0710 6b02          	ld	(OFST-2,sp),a
6243                     ; 1950     tmpccr2l = TIM1->CCR2L;
6245  0712 c65268        	ld	a,21096
6246  0715 6b01          	ld	(OFST-3,sp),a
6247                     ; 1952     tmpccr2 = (u16)(tmpccr2l);
6249  0717 7b01          	ld	a,(OFST-3,sp)
6250  0719 5f            	clrw	x
6251  071a 97            	ld	xl,a
6252  071b 1f03          	ldw	(OFST-1,sp),x
6253                     ; 1953     tmpccr2 |= (u16)((u16)tmpccr2h << 8);
6255  071d 7b02          	ld	a,(OFST-2,sp)
6256  071f 5f            	clrw	x
6257  0720 97            	ld	xl,a
6258  0721 4f            	clr	a
6259  0722 02            	rlwa	x,a
6260  0723 01            	rrwa	x,a
6261  0724 1a04          	or	a,(OFST+0,sp)
6262  0726 01            	rrwa	x,a
6263  0727 1a03          	or	a,(OFST-1,sp)
6264  0729 01            	rrwa	x,a
6265  072a 1f03          	ldw	(OFST-1,sp),x
6266                     ; 1955     return (u16)tmpccr2;
6268  072c 1e03          	ldw	x,(OFST-1,sp)
6271  072e 5b04          	addw	sp,#4
6272  0730 81            	ret
6324                     ; 1964 u16 TIM1_GetCapture3(void)
6324                     ; 1965 {
6325                     	switch	.text
6326  0731               _TIM1_GetCapture3:
6328  0731 5204          	subw	sp,#4
6329       00000004      OFST:	set	4
6332                     ; 1967     u16 tmpccr3 = 0;
6334                     ; 1968     u8 tmpccr3l=0, tmpccr3h=0;
6338                     ; 1970     tmpccr3h = TIM1->CCR3H;
6340  0733 c65269        	ld	a,21097
6341  0736 6b02          	ld	(OFST-2,sp),a
6342                     ; 1971     tmpccr3l = TIM1->CCR3L;
6344  0738 c6526a        	ld	a,21098
6345  073b 6b01          	ld	(OFST-3,sp),a
6346                     ; 1973     tmpccr3 = (u16)(tmpccr3l);
6348  073d 7b01          	ld	a,(OFST-3,sp)
6349  073f 5f            	clrw	x
6350  0740 97            	ld	xl,a
6351  0741 1f03          	ldw	(OFST-1,sp),x
6352                     ; 1974     tmpccr3 |= (u16)((u16)tmpccr3h << 8);
6354  0743 7b02          	ld	a,(OFST-2,sp)
6355  0745 5f            	clrw	x
6356  0746 97            	ld	xl,a
6357  0747 4f            	clr	a
6358  0748 02            	rlwa	x,a
6359  0749 01            	rrwa	x,a
6360  074a 1a04          	or	a,(OFST+0,sp)
6361  074c 01            	rrwa	x,a
6362  074d 1a03          	or	a,(OFST-1,sp)
6363  074f 01            	rrwa	x,a
6364  0750 1f03          	ldw	(OFST-1,sp),x
6365                     ; 1976     return (u16)tmpccr3;
6367  0752 1e03          	ldw	x,(OFST-1,sp)
6370  0754 5b04          	addw	sp,#4
6371  0756 81            	ret
6423                     ; 1985 u16 TIM1_GetCapture4(void)
6423                     ; 1986 {
6424                     	switch	.text
6425  0757               _TIM1_GetCapture4:
6427  0757 5204          	subw	sp,#4
6428       00000004      OFST:	set	4
6431                     ; 1988     u16 tmpccr4 = 0;
6433                     ; 1989     u8 tmpccr4l=0, tmpccr4h=0;
6437                     ; 1991     tmpccr4h = TIM1->CCR4H;
6439  0759 c6526b        	ld	a,21099
6440  075c 6b02          	ld	(OFST-2,sp),a
6441                     ; 1992     tmpccr4l = TIM1->CCR4L;
6443  075e c6526c        	ld	a,21100
6444  0761 6b01          	ld	(OFST-3,sp),a
6445                     ; 1994     tmpccr4 = (u16)(tmpccr4l);
6447  0763 7b01          	ld	a,(OFST-3,sp)
6448  0765 5f            	clrw	x
6449  0766 97            	ld	xl,a
6450  0767 1f03          	ldw	(OFST-1,sp),x
6451                     ; 1995     tmpccr4 |= (u16)((u16)tmpccr4h << 8);
6453  0769 7b02          	ld	a,(OFST-2,sp)
6454  076b 5f            	clrw	x
6455  076c 97            	ld	xl,a
6456  076d 4f            	clr	a
6457  076e 02            	rlwa	x,a
6458  076f 01            	rrwa	x,a
6459  0770 1a04          	or	a,(OFST+0,sp)
6460  0772 01            	rrwa	x,a
6461  0773 1a03          	or	a,(OFST-1,sp)
6462  0775 01            	rrwa	x,a
6463  0776 1f03          	ldw	(OFST-1,sp),x
6464                     ; 1997     return (u16)tmpccr4;
6466  0778 1e03          	ldw	x,(OFST-1,sp)
6469  077a 5b04          	addw	sp,#4
6470  077c 81            	ret
6493                     ; 2007 u16 TIM1_GetCounter(void)
6493                     ; 2008 {
6494                     	switch	.text
6495  077d               _TIM1_GetCounter:
6497  077d 89            	pushw	x
6498       00000002      OFST:	set	2
6501                     ; 2010     return (u16)(((u16)TIM1->CNTRH << 8) | (u16)(TIM1->CNTRL));
6503  077e c6525f        	ld	a,21087
6504  0781 5f            	clrw	x
6505  0782 97            	ld	xl,a
6506  0783 1f01          	ldw	(OFST-1,sp),x
6507  0785 c6525e        	ld	a,21086
6508  0788 5f            	clrw	x
6509  0789 97            	ld	xl,a
6510  078a 4f            	clr	a
6511  078b 02            	rlwa	x,a
6512  078c 01            	rrwa	x,a
6513  078d 1a02          	or	a,(OFST+0,sp)
6514  078f 01            	rrwa	x,a
6515  0790 1a01          	or	a,(OFST-1,sp)
6516  0792 01            	rrwa	x,a
6519  0793 5b02          	addw	sp,#2
6520  0795 81            	ret
6543                     ; 2020 u16 TIM1_GetPrescaler(void)
6543                     ; 2021 {
6544                     	switch	.text
6545  0796               _TIM1_GetPrescaler:
6547  0796 89            	pushw	x
6548       00000002      OFST:	set	2
6551                     ; 2023     return (u16)(((u16)TIM1->PSCRH << 8) | (u16)(TIM1->PSCRL));
6553  0797 c65261        	ld	a,21089
6554  079a 5f            	clrw	x
6555  079b 97            	ld	xl,a
6556  079c 1f01          	ldw	(OFST-1,sp),x
6557  079e c65260        	ld	a,21088
6558  07a1 5f            	clrw	x
6559  07a2 97            	ld	xl,a
6560  07a3 4f            	clr	a
6561  07a4 02            	rlwa	x,a
6562  07a5 01            	rrwa	x,a
6563  07a6 1a02          	or	a,(OFST+0,sp)
6564  07a8 01            	rrwa	x,a
6565  07a9 1a01          	or	a,(OFST-1,sp)
6566  07ab 01            	rrwa	x,a
6569  07ac 5b02          	addw	sp,#2
6570  07ae 81            	ret
6744                     ; 2045 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
6744                     ; 2046 {
6745                     	switch	.text
6746  07af               _TIM1_GetFlagStatus:
6748  07af 5204          	subw	sp,#4
6749       00000004      OFST:	set	4
6752                     ; 2047     volatile FlagStatus bitstatus = RESET;
6754  07b1 0f04          	clr	(OFST+0,sp)
6755                     ; 2051     assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
6757                     ; 2053     tim1_flag_l = (u8)(TIM1_FLAG);
6759  07b3 9f            	ld	a,xl
6760  07b4 6b02          	ld	(OFST-2,sp),a
6761                     ; 2054     tim1_flag_h = (u8)((u16)TIM1_FLAG >> 8);
6763  07b6 9e            	ld	a,xh
6764  07b7 6b03          	ld	(OFST-1,sp),a
6765                     ; 2056     if (((TIM1->SR1 & tim1_flag_l) | (TIM1->SR2 & tim1_flag_h)) != 0)
6767  07b9 c65256        	ld	a,21078
6768  07bc 1403          	and	a,(OFST-1,sp)
6769  07be 6b01          	ld	(OFST-3,sp),a
6770  07c0 c65255        	ld	a,21077
6771  07c3 1402          	and	a,(OFST-2,sp)
6772  07c5 1a01          	or	a,(OFST-3,sp)
6773  07c7 2706          	jreq	L1543
6774                     ; 2058         bitstatus = SET;
6776  07c9 a601          	ld	a,#1
6777  07cb 6b04          	ld	(OFST+0,sp),a
6779  07cd 2002          	jra	L3543
6780  07cf               L1543:
6781                     ; 2062         bitstatus = RESET;
6783  07cf 0f04          	clr	(OFST+0,sp)
6784  07d1               L3543:
6785                     ; 2064     return (FlagStatus)(bitstatus);
6787  07d1 7b04          	ld	a,(OFST+0,sp)
6790  07d3 5b04          	addw	sp,#4
6791  07d5 81            	ret
6826                     ; 2086 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
6826                     ; 2087 {
6827                     	switch	.text
6828  07d6               _TIM1_ClearFlag:
6830  07d6 89            	pushw	x
6831       00000000      OFST:	set	0
6834                     ; 2089     assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
6836                     ; 2092     TIM1->SR1 = (u8)(~(u8)(TIM1_FLAG));
6838  07d7 9f            	ld	a,xl
6839  07d8 43            	cpl	a
6840  07d9 c75255        	ld	21077,a
6841                     ; 2093     TIM1->SR2 = (u8)((u8)(~((u8)((u16)TIM1_FLAG >> 8))) & (u8)0x1E);
6843  07dc 7b01          	ld	a,(OFST+1,sp)
6844  07de 43            	cpl	a
6845  07df a41e          	and	a,#30
6846  07e1 c75256        	ld	21078,a
6847                     ; 2094 }
6850  07e4 85            	popw	x
6851  07e5 81            	ret
6915                     ; 2112 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
6915                     ; 2113 {
6916                     	switch	.text
6917  07e6               _TIM1_GetITStatus:
6919  07e6 88            	push	a
6920  07e7 5203          	subw	sp,#3
6921       00000003      OFST:	set	3
6924                     ; 2114     volatile ITStatus bitstatus = RESET;
6926  07e9 0f03          	clr	(OFST+0,sp)
6927                     ; 2115     vu8 TIM1_itStatus = 0, TIM1_itEnable = 0;
6929  07eb 0f01          	clr	(OFST-2,sp)
6932  07ed 0f02          	clr	(OFST-1,sp)
6933                     ; 2118     assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
6935                     ; 2120     TIM1_itStatus = (u8)(TIM1->SR1 & (u8)TIM1_IT);
6937  07ef c45255        	and	a,21077
6938  07f2 6b01          	ld	(OFST-2,sp),a
6939                     ; 2122     TIM1_itEnable = (u8)(TIM1->IER & (u8)TIM1_IT);
6941  07f4 c65254        	ld	a,21076
6942  07f7 1404          	and	a,(OFST+1,sp)
6943  07f9 6b02          	ld	(OFST-1,sp),a
6944                     ; 2124     if ((TIM1_itStatus != (u8)RESET ) && (TIM1_itEnable != (u8)RESET ))
6946  07fb 0d01          	tnz	(OFST-2,sp)
6947  07fd 270a          	jreq	L5253
6949  07ff 0d02          	tnz	(OFST-1,sp)
6950  0801 2706          	jreq	L5253
6951                     ; 2126         bitstatus = SET;
6953  0803 a601          	ld	a,#1
6954  0805 6b03          	ld	(OFST+0,sp),a
6956  0807 2002          	jra	L7253
6957  0809               L5253:
6958                     ; 2130         bitstatus = RESET;
6960  0809 0f03          	clr	(OFST+0,sp)
6961  080b               L7253:
6962                     ; 2132     return (ITStatus)(bitstatus);
6964  080b 7b03          	ld	a,(OFST+0,sp)
6967  080d 5b04          	addw	sp,#4
6968  080f 81            	ret
7004                     ; 2150 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
7004                     ; 2151 {
7005                     	switch	.text
7006  0810               _TIM1_ClearITPendingBit:
7010                     ; 2153     assert_param(IS_TIM1_IT_OK(TIM1_IT));
7012                     ; 2156     TIM1->SR1 = (u8)(~(u8)TIM1_IT);
7014  0810 43            	cpl	a
7015  0811 c75255        	ld	21077,a
7016                     ; 2157 }
7019  0814 81            	ret
7071                     ; 2176 static void TI1_Config(u8 TIM1_ICPolarity,
7071                     ; 2177                        u8 TIM1_ICSelection,
7071                     ; 2178                        u8 TIM1_ICFilter)
7071                     ; 2179 {
7072                     	switch	.text
7073  0815               L3_TI1_Config:
7075  0815 89            	pushw	x
7076  0816 88            	push	a
7077       00000001      OFST:	set	1
7080                     ; 2182     TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC1E);
7082  0817 7211525c      	bres	21084,#0
7083                     ; 2185     TIM1->CCMR1 = (u8)((TIM1->CCMR1 & (u8)(~( TIM1_CCMR_CCxS     |        TIM1_CCMR_ICxF    ))) | (u8)(( (TIM1_ICSelection)) | ((u8)( TIM1_ICFilter << 4))));
7085  081b 7b06          	ld	a,(OFST+5,sp)
7086  081d 97            	ld	xl,a
7087  081e a610          	ld	a,#16
7088  0820 42            	mul	x,a
7089  0821 9f            	ld	a,xl
7090  0822 1a03          	or	a,(OFST+2,sp)
7091  0824 6b01          	ld	(OFST+0,sp),a
7092  0826 c65258        	ld	a,21080
7093  0829 a40c          	and	a,#12
7094  082b 1a01          	or	a,(OFST+0,sp)
7095  082d c75258        	ld	21080,a
7096                     ; 2190     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7098  0830 0d02          	tnz	(OFST+1,sp)
7099  0832 2706          	jreq	L5753
7100                     ; 2192         TIM1->CCER1 |= TIM1_CCER1_CC1P;
7102  0834 7212525c      	bset	21084,#1
7104  0838 2004          	jra	L7753
7105  083a               L5753:
7106                     ; 2196         TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC1P);
7108  083a 7213525c      	bres	21084,#1
7109  083e               L7753:
7110                     ; 2200     TIM1->CCER1 |=  TIM1_CCER1_CC1E;
7112  083e 7210525c      	bset	21084,#0
7113                     ; 2201 }
7116  0842 5b03          	addw	sp,#3
7117  0844 81            	ret
7169                     ; 2220 static void TI2_Config(u8 TIM1_ICPolarity,
7169                     ; 2221                        u8 TIM1_ICSelection,
7169                     ; 2222                        u8 TIM1_ICFilter)
7169                     ; 2223 {
7170                     	switch	.text
7171  0845               L5_TI2_Config:
7173  0845 89            	pushw	x
7174  0846 88            	push	a
7175       00000001      OFST:	set	1
7178                     ; 2225     TIM1->CCER1 &=  (u8)(~TIM1_CCER1_CC2E);
7180  0847 7219525c      	bres	21084,#4
7181                     ; 2228     TIM1->CCMR2  = (u8)((TIM1->CCMR2 & (u8)(~( TIM1_CCMR_CCxS     |        TIM1_CCMR_ICxF    ))) | (u8)(( (TIM1_ICSelection)) | ((u8)( TIM1_ICFilter << 4))));
7183  084b 7b06          	ld	a,(OFST+5,sp)
7184  084d 97            	ld	xl,a
7185  084e a610          	ld	a,#16
7186  0850 42            	mul	x,a
7187  0851 9f            	ld	a,xl
7188  0852 1a03          	or	a,(OFST+2,sp)
7189  0854 6b01          	ld	(OFST+0,sp),a
7190  0856 c65259        	ld	a,21081
7191  0859 a40c          	and	a,#12
7192  085b 1a01          	or	a,(OFST+0,sp)
7193  085d c75259        	ld	21081,a
7194                     ; 2230     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7196  0860 0d02          	tnz	(OFST+1,sp)
7197  0862 2706          	jreq	L7263
7198                     ; 2232         TIM1->CCER1 |= TIM1_CCER1_CC2P;
7200  0864 721a525c      	bset	21084,#5
7202  0868 2004          	jra	L1363
7203  086a               L7263:
7204                     ; 2236         TIM1->CCER1 &= (u8)(~TIM1_CCER1_CC2P);
7206  086a 721b525c      	bres	21084,#5
7207  086e               L1363:
7208                     ; 2239     TIM1->CCER1 |=  TIM1_CCER1_CC2E;
7210  086e 7218525c      	bset	21084,#4
7211                     ; 2240 }
7214  0872 5b03          	addw	sp,#3
7215  0874 81            	ret
7267                     ; 2258 static void TI3_Config(u8 TIM1_ICPolarity,
7267                     ; 2259                        u8 TIM1_ICSelection,
7267                     ; 2260                        u8 TIM1_ICFilter)
7267                     ; 2261 {
7268                     	switch	.text
7269  0875               L7_TI3_Config:
7271  0875 89            	pushw	x
7272  0876 88            	push	a
7273       00000001      OFST:	set	1
7276                     ; 2263     TIM1->CCER2 &=  (u8)(~TIM1_CCER2_CC3E);
7278  0877 7211525d      	bres	21085,#0
7279                     ; 2266     TIM1->CCMR3 = (u8)((TIM1->CCMR3 & (u8)(~( TIM1_CCMR_CCxS     |        TIM1_CCMR_ICxF    ))) | (u8)(( (TIM1_ICSelection)) | ((u8)( TIM1_ICFilter << 4))));
7281  087b 7b06          	ld	a,(OFST+5,sp)
7282  087d 97            	ld	xl,a
7283  087e a610          	ld	a,#16
7284  0880 42            	mul	x,a
7285  0881 9f            	ld	a,xl
7286  0882 1a03          	or	a,(OFST+2,sp)
7287  0884 6b01          	ld	(OFST+0,sp),a
7288  0886 c6525a        	ld	a,21082
7289  0889 a40c          	and	a,#12
7290  088b 1a01          	or	a,(OFST+0,sp)
7291  088d c7525a        	ld	21082,a
7292                     ; 2269     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7294  0890 0d02          	tnz	(OFST+1,sp)
7295  0892 2706          	jreq	L1663
7296                     ; 2271         TIM1->CCER2 |= TIM1_CCER2_CC3P;
7298  0894 7212525d      	bset	21085,#1
7300  0898 2004          	jra	L3663
7301  089a               L1663:
7302                     ; 2275         TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC3P);
7304  089a 7213525d      	bres	21085,#1
7305  089e               L3663:
7306                     ; 2278     TIM1->CCER2 |=  TIM1_CCER2_CC3E;
7308  089e 7210525d      	bset	21085,#0
7309                     ; 2279 }
7312  08a2 5b03          	addw	sp,#3
7313  08a4 81            	ret
7365                     ; 2298 static void TI4_Config(u8 TIM1_ICPolarity,
7365                     ; 2299                        u8 TIM1_ICSelection,
7365                     ; 2300                        u8 TIM1_ICFilter)
7365                     ; 2301 {
7366                     	switch	.text
7367  08a5               L11_TI4_Config:
7369  08a5 89            	pushw	x
7370  08a6 88            	push	a
7371       00000001      OFST:	set	1
7374                     ; 2304     TIM1->CCER2 &=  (u8)(~TIM1_CCER2_CC4E);
7376  08a7 7219525d      	bres	21085,#4
7377                     ; 2307     TIM1->CCMR4 = (u8)((TIM1->CCMR4 & (u8)(~( TIM1_CCMR_CCxS     |        TIM1_CCMR_ICxF    )))  | (u8)(( (TIM1_ICSelection)) | ((u8)( TIM1_ICFilter << 4))));
7379  08ab 7b06          	ld	a,(OFST+5,sp)
7380  08ad 97            	ld	xl,a
7381  08ae a610          	ld	a,#16
7382  08b0 42            	mul	x,a
7383  08b1 9f            	ld	a,xl
7384  08b2 1a03          	or	a,(OFST+2,sp)
7385  08b4 6b01          	ld	(OFST+0,sp),a
7386  08b6 c6525b        	ld	a,21083
7387  08b9 a40c          	and	a,#12
7388  08bb 1a01          	or	a,(OFST+0,sp)
7389  08bd c7525b        	ld	21083,a
7390                     ; 2312     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7392  08c0 0d02          	tnz	(OFST+1,sp)
7393  08c2 2706          	jreq	L3173
7394                     ; 2314         TIM1->CCER2 |= TIM1_CCER2_CC4P;
7396  08c4 721a525d      	bset	21085,#5
7398  08c8 2004          	jra	L5173
7399  08ca               L3173:
7400                     ; 2318         TIM1->CCER2 &= (u8)(~TIM1_CCER2_CC4P);
7402  08ca 721b525d      	bres	21085,#5
7403  08ce               L5173:
7404                     ; 2322     TIM1->CCER2 |=  TIM1_CCER2_CC4E;
7406  08ce 7218525d      	bset	21085,#4
7407                     ; 2323 }
7410  08d2 5b03          	addw	sp,#3
7411  08d4 81            	ret
7424                     	xdef	_TIM1_ClearITPendingBit
7425                     	xdef	_TIM1_GetITStatus
7426                     	xdef	_TIM1_ClearFlag
7427                     	xdef	_TIM1_GetFlagStatus
7428                     	xdef	_TIM1_GetPrescaler
7429                     	xdef	_TIM1_GetCounter
7430                     	xdef	_TIM1_GetCapture4
7431                     	xdef	_TIM1_GetCapture3
7432                     	xdef	_TIM1_GetCapture2
7433                     	xdef	_TIM1_GetCapture1
7434                     	xdef	_TIM1_SetIC4Prescaler
7435                     	xdef	_TIM1_SetIC3Prescaler
7436                     	xdef	_TIM1_SetIC2Prescaler
7437                     	xdef	_TIM1_SetIC1Prescaler
7438                     	xdef	_TIM1_SetCompare4
7439                     	xdef	_TIM1_SetCompare3
7440                     	xdef	_TIM1_SetCompare2
7441                     	xdef	_TIM1_SetCompare1
7442                     	xdef	_TIM1_SetAutoreload
7443                     	xdef	_TIM1_SetCounter
7444                     	xdef	_TIM1_SelectOCxM
7445                     	xdef	_TIM1_CCxNCmd
7446                     	xdef	_TIM1_CCxCmd
7447                     	xdef	_TIM1_OC4PolarityConfig
7448                     	xdef	_TIM1_OC3NPolarityConfig
7449                     	xdef	_TIM1_OC3PolarityConfig
7450                     	xdef	_TIM1_OC2NPolarityConfig
7451                     	xdef	_TIM1_OC2PolarityConfig
7452                     	xdef	_TIM1_OC1NPolarityConfig
7453                     	xdef	_TIM1_OC1PolarityConfig
7454                     	xdef	_TIM1_GenerateEvent
7455                     	xdef	_TIM1_OC4FastConfig
7456                     	xdef	_TIM1_OC3FastConfig
7457                     	xdef	_TIM1_OC2FastConfig
7458                     	xdef	_TIM1_OC1FastConfig
7459                     	xdef	_TIM1_OC4PreloadConfig
7460                     	xdef	_TIM1_OC3PreloadConfig
7461                     	xdef	_TIM1_OC2PreloadConfig
7462                     	xdef	_TIM1_OC1PreloadConfig
7463                     	xdef	_TIM1_CCPreloadControl
7464                     	xdef	_TIM1_SelectCOM
7465                     	xdef	_TIM1_ARRPreloadConfig
7466                     	xdef	_TIM1_ForcedOC4Config
7467                     	xdef	_TIM1_ForcedOC3Config
7468                     	xdef	_TIM1_ForcedOC2Config
7469                     	xdef	_TIM1_ForcedOC1Config
7470                     	xdef	_TIM1_CounterModeConfig
7471                     	xdef	_TIM1_PrescalerConfig
7472                     	xdef	_TIM1_EncoderInterfaceConfig
7473                     	xdef	_TIM1_SelectMasterSlaveMode
7474                     	xdef	_TIM1_SelectSlaveMode
7475                     	xdef	_TIM1_SelectOutputTrigger
7476                     	xdef	_TIM1_SelectOnePulseMode
7477                     	xdef	_TIM1_SelectHallSensor
7478                     	xdef	_TIM1_UpdateRequestConfig
7479                     	xdef	_TIM1_UpdateDisableConfig
7480                     	xdef	_TIM1_SelectInputTrigger
7481                     	xdef	_TIM1_TIxExternalClockConfig
7482                     	xdef	_TIM1_ETRConfig
7483                     	xdef	_TIM1_ETRClockMode2Config
7484                     	xdef	_TIM1_ETRClockMode1Config
7485                     	xdef	_TIM1_InternalClockConfig
7486                     	xdef	_TIM1_ITConfig
7487                     	xdef	_TIM1_CtrlPWMOutputs
7488                     	xdef	_TIM1_Cmd
7489                     	xdef	_TIM1_PWMIConfig
7490                     	xdef	_TIM1_ICInit
7491                     	xdef	_TIM1_BDTRConfig
7492                     	xdef	_TIM1_OC4Init
7493                     	xdef	_TIM1_OC3Init
7494                     	xdef	_TIM1_OC2Init
7495                     	xdef	_TIM1_OC1Init
7496                     	xdef	_TIM1_TimeBaseInit
7497                     	xdef	_TIM1_DeInit
7516                     	end
