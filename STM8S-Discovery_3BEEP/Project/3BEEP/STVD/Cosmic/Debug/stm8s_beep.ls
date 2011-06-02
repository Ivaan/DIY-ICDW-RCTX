   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  46                     ; 46 void BEEP_DeInit(void)
  46                     ; 47 {
  48                     	switch	.text
  49  0000               _BEEP_DeInit:
  53                     ; 48     BEEP->CSR = BEEP_CSR_RESET_VALUE;
  55  0000 351f50f3      	mov	20723,#31
  56                     ; 49 }
  59  0004 81            	ret	
 124                     ; 59 void BEEP_Init(BEEP_Frequency_TypeDef BEEP_Frequency)
 124                     ; 60 {
 125                     	switch	.text
 126  0005               _BEEP_Init:
 128  0005 88            	push	a
 129       00000000      OFST:	set	0
 132                     ; 63     assert_param(IS_BEEP_FREQUENCY_OK(BEEP_Frequency));
 134                     ; 66     if ((BEEP->CSR & BEEP_CSR_BEEPDIV) == BEEP_CSR_BEEPDIV)
 136  0006 c650f3        	ld	a,20723
 137  0009 a41f          	and	a,#31
 138  000b a11f          	cp	a,#31
 139  000d 2610          	jrne	L15
 140                     ; 68         BEEP->CSR &= (u8)(~BEEP_CSR_BEEPDIV); /* Clear bits */
 142  000f c650f3        	ld	a,20723
 143  0012 a4e0          	and	a,#224
 144  0014 c750f3        	ld	20723,a
 145                     ; 69         BEEP->CSR |= BEEP_CALIBRATION_DEFAULT;
 147  0017 c650f3        	ld	a,20723
 148  001a aa0b          	or	a,#11
 149  001c c750f3        	ld	20723,a
 150  001f               L15:
 151                     ; 73     BEEP->CSR &= (u8)(~BEEP_CSR_BEEPSEL);
 153  001f c650f3        	ld	a,20723
 154  0022 a43f          	and	a,#63
 155  0024 c750f3        	ld	20723,a
 156                     ; 74     BEEP->CSR |= (u8)(BEEP_Frequency);
 158  0027 c650f3        	ld	a,20723
 159  002a 1a01          	or	a,(OFST+1,sp)
 160  002c c750f3        	ld	20723,a
 161                     ; 76 }
 164  002f 84            	pop	a
 165  0030 81            	ret	
 220                     ; 85 void BEEP_Cmd(FunctionalState NewState)
 220                     ; 86 {
 221                     	switch	.text
 222  0031               _BEEP_Cmd:
 226                     ; 87     if (NewState != DISABLE)
 228  0031 4d            	tnz	a
 229  0032 2705          	jreq	L101
 230                     ; 90         BEEP->CSR |= BEEP_CSR_BEEPEN;
 232  0034 721a50f3      	bset	20723,#5
 235  0038 81            	ret	
 236  0039               L101:
 237                     ; 95         BEEP->CSR &= (u8)(~BEEP_CSR_BEEPEN);
 239  0039 721b50f3      	bres	20723,#5
 240                     ; 97 }
 243  003d 81            	ret	
 296                     .const:	section	.text
 297  0000               L41:
 298  0000 000003e8      	dc.l	1000
 299                     ; 112 void BEEP_LSICalibrationConfig(u32 LSIFreqHz)
 299                     ; 113 {
 300                     	switch	.text
 301  003e               _BEEP_LSICalibrationConfig:
 303  003e 5206          	subw	sp,#6
 304       00000006      OFST:	set	6
 307                     ; 119     assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
 309                     ; 121     lsifreqkhz = (u16)(LSIFreqHz / 1000); /* Converts value in kHz */
 311  0040 96            	ldw	x,sp
 312  0041 1c0009        	addw	x,#OFST+3
 313  0044 cd0000        	call	c_ltor
 315  0047 ae0000        	ldw	x,#L41
 316  004a cd0000        	call	c_ludv
 318  004d be02          	ldw	x,c_lreg+2
 319  004f 1f03          	ldw	(OFST-3,sp),x
 320                     ; 125     BEEP->CSR &= (u8)(~BEEP_CSR_BEEPDIV); /* Clear bits */
 322  0051 c650f3        	ld	a,20723
 323  0054 a4e0          	and	a,#224
 324  0056 c750f3        	ld	20723,a
 325                     ; 127     A = (u16)(lsifreqkhz >> 3U); /* Division by 8, keep integer part only */
 327  0059 54            	srlw	x
 328  005a 54            	srlw	x
 329  005b 54            	srlw	x
 330  005c 1f05          	ldw	(OFST-1,sp),x
 331                     ; 129     if ((8U * A) >= ((lsifreqkhz - (8U * A)) * (1U + (2U * A))))
 333  005e 58            	sllw	x
 334  005f 58            	sllw	x
 335  0060 58            	sllw	x
 336  0061 1f01          	ldw	(OFST-5,sp),x
 337  0063 1e03          	ldw	x,(OFST-3,sp)
 338  0065 72f001        	subw	x,(OFST-5,sp)
 339  0068 1605          	ldw	y,(OFST-1,sp)
 340  006a 9058          	sllw	y
 341  006c 905c          	incw	y
 342  006e cd0000        	call	c_imul
 344  0071 1605          	ldw	y,(OFST-1,sp)
 345  0073 9058          	sllw	y
 346  0075 9058          	sllw	y
 347  0077 bf00          	ldw	c_x,x
 348  0079 9058          	sllw	y
 349  007b 90b300        	cpw	y,c_x
 350  007e 7b06          	ld	a,(OFST+0,sp)
 351  0080 2504          	jrult	L331
 352                     ; 131         BEEP->CSR |= (u8)(A - 2U);
 354  0082 a002          	sub	a,#2
 356  0084 2001          	jra	L531
 357  0086               L331:
 358                     ; 135         BEEP->CSR |= (u8)(A - 1U);
 360  0086 4a            	dec	a
 361  0087               L531:
 362  0087 ca50f3        	or	a,20723
 363  008a c750f3        	ld	20723,a
 364                     ; 139     AWU->CSR |= AWU_CSR_MR;
 366                     ; 141 }
 369  008d 5b06          	addw	sp,#6
 370  008f 721250f0      	bset	20720,#1
 371  0093 81            	ret	
 384                     	xdef	_BEEP_LSICalibrationConfig
 385                     	xdef	_BEEP_Cmd
 386                     	xdef	_BEEP_Init
 387                     	xdef	_BEEP_DeInit
 388                     	xref.b	c_lreg
 389                     	xref.b	c_x
 408                     	xref	c_imul
 409                     	xref	c_ludv
 410                     	xref	c_ltor
 411                     	end