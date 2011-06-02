   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  18                     	bsct
  19  0000               _icount:
  20  0000 00            	dc.b	0
  68                     ; 63 void main(void)
  68                     ; 64 {
  70                     	switch	.text
  71  0000               _main:
  73  0000 88            	push	a
  74       00000001      OFST:	set	1
  77                     ; 66     u8 i = 0;
  79  0001 0f01          	clr	(OFST+0,sp)
  80                     ; 69 		GPIO_Configuration();
  82  0003 cd00ab        	call	_GPIO_Configuration
  84                     ; 72     CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
  86  0006 4f            	clr	a
  87  0007 cd0000        	call	_CLK_HSIPrescalerConfig
  89                     ; 75     BEEP_LSICalibrationConfig(LSIMeasurment());
  91  000a cd00bd        	call	_LSIMeasurment
  93  000d be02          	ldw	x,c_lreg+2
  94  000f 89            	pushw	x
  95  0010 be00          	ldw	x,c_lreg
  96  0012 89            	pushw	x
  97  0013 cd0000        	call	_BEEP_LSICalibrationConfig
  99  0016 5b04          	addw	sp,#4
 100                     ; 78 		TSL_Init();
 102  0018 cd0000        	call	_TSL_Init
 104                     ; 81 		ExtraCode_Init();
 106  001b ad07          	call	_ExtraCode_Init
 108  001d               L72:
 109                     ; 85 			ExtraCode_StateMachine();
 111  001d ad1e          	call	_ExtraCode_StateMachine
 113                     ; 86 			TSL_Action();
 115  001f cd0000        	call	_TSL_Action
 118  0022 20f9          	jra	L72
 153                     ; 101 void ExtraCode_Init(void)
 153                     ; 102 {
 154                     	switch	.text
 155  0024               _ExtraCode_Init:
 157  0024 88            	push	a
 158       00000001      OFST:	set	1
 161                     ; 108   for (i = 0; i < NUMBER_OF_SINGLE_CHANNEL_KEYS; i++)
 163  0025 0f01          	clr	(OFST+0,sp)
 164  0027               L15:
 165                     ; 110     sSCKeyInfo[i].Setting.b.IMPLEMENTED = 1;
 167  0027 7b01          	ld	a,(OFST+0,sp)
 168  0029 97            	ld	xl,a
 169  002a a60f          	ld	a,#15
 170  002c 42            	mul	x,a
 171  002d e602          	ld	a,(_sSCKeyInfo+2,x)
 172                     ; 111     sSCKeyInfo[i].Setting.b.ENABLED = 1;
 174  002f aa03          	or	a,#3
 175  0031 e702          	ld	(_sSCKeyInfo+2,x),a
 176                     ; 112     sSCKeyInfo[i].DESGroup = 0x01; /* Put 0x00 to disable the DES on these pins */
 178  0033 a601          	ld	a,#1
 179  0035 e704          	ld	(_sSCKeyInfo+4,x),a
 180                     ; 108   for (i = 0; i < NUMBER_OF_SINGLE_CHANNEL_KEYS; i++)
 182  0037 0c01          	inc	(OFST+0,sp)
 185  0039 27ec          	jreq	L15
 186                     ; 125 }
 189  003b 84            	pop	a
 190  003c 81            	ret	
 221                     ; 138 void ExtraCode_StateMachine(void)
 221                     ; 139 {
 222                     	switch	.text
 223  003d               _ExtraCode_StateMachine:
 227                     ; 141   if ((TSL_GlobalSetting.b.CHANGED) && (TSLState == TSL_IDLE_STATE))
 229  003d 7207000168    	btjf	_TSL_GlobalSetting+1,#3,L101
 231  0042 b600          	ld	a,_TSLState
 232  0044 4a            	dec	a
 233  0045 2663          	jrne	L101
 234                     ; 144     TSL_GlobalSetting.b.CHANGED = 0;
 236  0047 72170001      	bres	_TSL_GlobalSetting+1,#3
 237                     ; 146     if (sSCKeyInfo[0].Setting.b.DETECTED) /* TS1 touched */
 239  004b 720500025a    	btjf	_sSCKeyInfo+2,#2,L101
 240                     ; 148 				switch (icount)
 242  0050 b600          	ld	a,_icount
 244                     ; 179 						default:
 244                     ; 180 						    break;
 245  0052 270a          	jreq	L75
 246  0054 4a            	dec	a
 247  0055 271e          	jreq	L16
 248  0057 4a            	dec	a
 249  0058 2733          	jreq	L36
 250  005a 4a            	dec	a
 251  005b 2748          	jreq	L56
 253  005d 81            	ret	
 254  005e               L75:
 255                     ; 150             case 0:
 255                     ; 151                 // BEEPER 1kHz
 255                     ; 152                 BEEP_Cmd(DISABLE);
 257  005e cd0000        	call	_BEEP_Cmd
 259                     ; 153                 Delay(100);
 261  0061 ae0064        	ldw	x,#100
 262  0064 cd013b        	call	_Delay
 264                     ; 154                 BEEP_Init(BEEP_FREQUENCY_1KHZ);
 266  0067 4f            	clr	a
 267  0068 cd0000        	call	_BEEP_Init
 269                     ; 155                 BEEP_Cmd(ENABLE);
 271  006b a601          	ld	a,#1
 272  006d cd0000        	call	_BEEP_Cmd
 274                     ; 156 								icount = 1;
 276  0070 35010000      	mov	_icount,#1
 277                     ; 157                 break;
 280  0074 81            	ret	
 281  0075               L16:
 282                     ; 158             case 1:
 282                     ; 159                 // BEEPER 2kHz
 282                     ; 160                 BEEP_Cmd(DISABLE);
 284  0075 cd0000        	call	_BEEP_Cmd
 286                     ; 161                 Delay(100);
 288  0078 ae0064        	ldw	x,#100
 289  007b cd013b        	call	_Delay
 291                     ; 162                 BEEP_Init(BEEP_FREQUENCY_2KHZ);
 293  007e a640          	ld	a,#64
 294  0080 cd0000        	call	_BEEP_Init
 296                     ; 163                 BEEP_Cmd(ENABLE);
 298  0083 a601          	ld	a,#1
 299  0085 cd0000        	call	_BEEP_Cmd
 301                     ; 164 								icount = 2;
 303  0088 35020000      	mov	_icount,#2
 304                     ; 165                 break;
 307  008c 81            	ret	
 308  008d               L36:
 309                     ; 166             case 2:
 309                     ; 167 						    // BEEPER 4kHz
 309                     ; 168                 BEEP_Cmd(DISABLE);
 311  008d cd0000        	call	_BEEP_Cmd
 313                     ; 169                 Delay(100);
 315  0090 ae0064        	ldw	x,#100
 316  0093 cd013b        	call	_Delay
 318                     ; 170                 BEEP_Init(BEEP_FREQUENCY_4KHZ);
 320  0096 a680          	ld	a,#128
 321  0098 cd0000        	call	_BEEP_Init
 323                     ; 171                 BEEP_Cmd(ENABLE);
 325  009b a601          	ld	a,#1
 326  009d cd0000        	call	_BEEP_Cmd
 328                     ; 172                 icount = 3;
 330  00a0 35030000      	mov	_icount,#3
 331                     ; 173                 break;
 334  00a4 81            	ret	
 335  00a5               L56:
 336                     ; 174             case 3:
 336                     ; 175 						    // BEEPER OFF
 336                     ; 176                 BEEP_Cmd(DISABLE);
 338  00a5 cd0000        	call	_BEEP_Cmd
 340                     ; 177                 icount = 0;
 342  00a8 3f00          	clr	_icount
 343                     ; 178                 break;
 345                     ; 179 						default:
 345                     ; 180 						    break;
 347  00aa               L101:
 348                     ; 185 }
 351  00aa 81            	ret	
 376                     ; 188 void GPIO_Configuration(void)
 376                     ; 189 {
 377                     	switch	.text
 378  00ab               _GPIO_Configuration:
 382                     ; 191 	GPIO_DeInit(GPIOD);
 384  00ab ae500f        	ldw	x,#20495
 385  00ae cd0000        	call	_GPIO_DeInit
 387                     ; 194   GPIO_Init(GPIOD, GPIO_PIN_4 , GPIO_MODE_OUT_PP_LOW_FAST);	
 389  00b1 4be0          	push	#224
 390  00b3 4b10          	push	#16
 391  00b5 ae500f        	ldw	x,#20495
 392  00b8 cd0000        	call	_GPIO_Init
 394  00bb 85            	popw	x
 395                     ; 195 }
 398  00bc 81            	ret	
 464                     ; 207 u32 LSIMeasurment(void)
 464                     ; 208 {
 465                     	switch	.text
 466  00bd               _LSIMeasurment:
 468  00bd 520c          	subw	sp,#12
 469       0000000c      OFST:	set	12
 472                     ; 210   u32 lsi_freq_hz = 0x0;
 474                     ; 211   u32 fmaster = 0x0;
 476                     ; 212   u16 ICValue1 = 0x0;
 478                     ; 213   u16 ICValue2 = 0x0;
 480                     ; 216   fmaster = CLK_GetClockFreq();
 482  00bf cd0000        	call	_CLK_GetClockFreq
 484  00c2 96            	ldw	x,sp
 485  00c3 1c0009        	addw	x,#OFST-3
 486  00c6 cd0000        	call	c_rtol
 488                     ; 219   AWU->CSR |= AWU_CSR_MSR;
 490  00c9 721050f0      	bset	20720,#0
 491                     ; 253   TIM3_ICInit(TIM3_CHANNEL_1, TIM3_ICPOLARITY_RISING, TIM3_ICSELECTION_DIRECTTI, TIM3_ICPSC_DIV8, 0);
 493  00cd 4b00          	push	#0
 494  00cf 4b0c          	push	#12
 495  00d1 4b01          	push	#1
 496  00d3 5f            	clrw	x
 497  00d4 4f            	clr	a
 498  00d5 95            	ld	xh,a
 499  00d6 cd0000        	call	_TIM3_ICInit
 501  00d9 5b03          	addw	sp,#3
 502                     ; 256   TIM3_Cmd(ENABLE);
 504  00db a601          	ld	a,#1
 505  00dd cd0000        	call	_TIM3_Cmd
 508  00e0               L551:
 509                     ; 259   while ((TIM3->SR1 & TIM3_FLAG_CC1) != TIM3_FLAG_CC1);
 511  00e0 72035322fb    	btjf	21282,#1,L551
 512                     ; 261   ICValue1 = TIM3_GetCapture1();
 514  00e5 cd0000        	call	_TIM3_GetCapture1
 516  00e8 1f05          	ldw	(OFST-7,sp),x
 517                     ; 262   TIM3_ClearFlag(TIM3_FLAG_CC1);
 519  00ea ae0002        	ldw	x,#2
 520  00ed cd0000        	call	_TIM3_ClearFlag
 523  00f0               L361:
 524                     ; 265   while ((TIM3->SR1 & TIM3_FLAG_CC1) != TIM3_FLAG_CC1);
 526  00f0 72035322fb    	btjf	21282,#1,L361
 527                     ; 267   ICValue2 = TIM3_GetCapture1();
 529  00f5 cd0000        	call	_TIM3_GetCapture1
 531  00f8 1f07          	ldw	(OFST-5,sp),x
 532                     ; 268 	TIM3_ClearFlag(TIM3_FLAG_CC1);
 534  00fa ae0002        	ldw	x,#2
 535  00fd cd0000        	call	_TIM3_ClearFlag
 537                     ; 271   TIM3->CCER1 &= (u8)(~TIM3_CCER1_CC1E);
 539  0100 72115327      	bres	21287,#0
 540                     ; 273   TIM3_Cmd(DISABLE);
 542  0104 4f            	clr	a
 543  0105 cd0000        	call	_TIM3_Cmd
 545                     ; 277   lsi_freq_hz = (8 * fmaster) / (ICValue2 - ICValue1);
 547  0108 1e07          	ldw	x,(OFST-5,sp)
 548  010a 72f005        	subw	x,(OFST-7,sp)
 549  010d cd0000        	call	c_uitolx
 551  0110 96            	ldw	x,sp
 552  0111 5c            	incw	x
 553  0112 cd0000        	call	c_rtol
 555  0115 96            	ldw	x,sp
 556  0116 1c0009        	addw	x,#OFST-3
 557  0119 cd0000        	call	c_ltor
 559  011c a603          	ld	a,#3
 560  011e cd0000        	call	c_llsh
 562  0121 96            	ldw	x,sp
 563  0122 5c            	incw	x
 564  0123 cd0000        	call	c_ludv
 566  0126 96            	ldw	x,sp
 567  0127 1c0009        	addw	x,#OFST-3
 568  012a cd0000        	call	c_rtol
 570                     ; 280   AWU->CSR &= (u8)(~AWU_CSR_MSR);
 572  012d 721150f0      	bres	20720,#0
 573                     ; 282  return (lsi_freq_hz);
 575  0131 96            	ldw	x,sp
 576  0132 1c0009        	addw	x,#OFST-3
 577  0135 cd0000        	call	c_ltor
 581  0138 5b0c          	addw	sp,#12
 582  013a 81            	ret	
 616                     ; 291 void Delay(u16 nCount)
 616                     ; 292 {
 617                     	switch	.text
 618  013b               _Delay:
 620  013b 89            	pushw	x
 621       00000000      OFST:	set	0
 624  013c 2003          	jra	L702
 625  013e               L502:
 626                     ; 296         nCount--;
 628  013e 5a            	decw	x
 629  013f 1f01          	ldw	(OFST+1,sp),x
 630  0141               L702:
 631                     ; 294     while (nCount != 0)
 633  0141 1e01          	ldw	x,(OFST+1,sp)
 634  0143 26f9          	jrne	L502
 635                     ; 298 }
 638  0145 85            	popw	x
 639  0146 81            	ret	
 663                     	xdef	_main
 664                     	xdef	_icount
 665                     	xdef	_Delay
 666                     	xdef	_ExtraCode_StateMachine
 667                     	xdef	_ExtraCode_Init
 668                     	xdef	_GPIO_Configuration
 669                     	xdef	_LSIMeasurment
 670                     	xref	_TSL_Action
 671                     	xref	_TSL_Init
 672                     	xref.b	_sSCKeyInfo
 673                     	xref.b	_TSL_GlobalSetting
 674                     	xref.b	_TSLState
 675                     	xref	_TIM3_ClearFlag
 676                     	xref	_TIM3_GetCapture1
 677                     	xref	_TIM3_Cmd
 678                     	xref	_TIM3_ICInit
 679                     	xref	_GPIO_Init
 680                     	xref	_GPIO_DeInit
 681                     	xref	_CLK_GetClockFreq
 682                     	xref	_CLK_HSIPrescalerConfig
 683                     	xref	_BEEP_LSICalibrationConfig
 684                     	xref	_BEEP_Cmd
 685                     	xref	_BEEP_Init
 686                     	xref.b	c_lreg
 687                     	xref.b	c_x
 706                     	xref	c_ludv
 707                     	xref	c_uitolx
 708                     	xref	c_llsh
 709                     	xref	c_ltor
 710                     	xref	c_rtol
 711                     	end
