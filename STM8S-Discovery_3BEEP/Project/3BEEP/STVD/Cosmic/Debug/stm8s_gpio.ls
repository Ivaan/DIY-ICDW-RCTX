   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
 112                     ; 45 void GPIO_DeInit(GPIO_TypeDef* GPIOx)
 112                     ; 46 {
 114                     	switch	.text
 115  0000               _GPIO_DeInit:
 119                     ; 47     GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
 121  0000 7f            	clr	(x)
 122                     ; 48     GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
 124  0001 6f02          	clr	(2,x)
 125                     ; 49     GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
 127  0003 6f03          	clr	(3,x)
 128                     ; 50     GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
 130  0005 6f04          	clr	(4,x)
 131                     ; 51 }
 134  0007 81            	ret	
 374                     ; 62 void GPIO_Init(GPIO_TypeDef* GPIOx,
 374                     ; 63                GPIO_Pin_TypeDef GPIO_Pin,
 374                     ; 64                GPIO_Mode_TypeDef GPIO_Mode)
 374                     ; 65 {
 375                     	switch	.text
 376  0008               _GPIO_Init:
 378  0008 89            	pushw	x
 379       00000000      OFST:	set	0
 382                     ; 70     assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
 384                     ; 71     assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
 386                     ; 77     if ((((u8)(GPIO_Mode)) & (u8)0x80) != (u8)0x00) /* Output mode */
 388  0009 7b06          	ld	a,(OFST+6,sp)
 389  000b 2a18          	jrpl	L771
 390                     ; 79         if ((((u8)(GPIO_Mode)) & (u8)0x10) != (u8)0x00) /* High level */
 392  000d a510          	bcp	a,#16
 393  000f 2705          	jreq	L102
 394                     ; 81             GPIOx->ODR |= (u8)GPIO_Pin;
 396  0011 f6            	ld	a,(x)
 397  0012 1a05          	or	a,(OFST+5,sp)
 399  0014 2006          	jra	L302
 400  0016               L102:
 401                     ; 84             GPIOx->ODR &= (u8)(~(GPIO_Pin));
 403  0016 1e01          	ldw	x,(OFST+1,sp)
 404  0018 7b05          	ld	a,(OFST+5,sp)
 405  001a 43            	cpl	a
 406  001b f4            	and	a,(x)
 407  001c               L302:
 408  001c f7            	ld	(x),a
 409                     ; 87         GPIOx->DDR |= (u8)GPIO_Pin;
 411  001d 1e01          	ldw	x,(OFST+1,sp)
 412  001f e602          	ld	a,(2,x)
 413  0021 1a05          	or	a,(OFST+5,sp)
 415  0023 2007          	jra	L502
 416  0025               L771:
 417                     ; 91         GPIOx->DDR &= (u8)(~(GPIO_Pin));
 419  0025 1e01          	ldw	x,(OFST+1,sp)
 420  0027 7b05          	ld	a,(OFST+5,sp)
 421  0029 43            	cpl	a
 422  002a e402          	and	a,(2,x)
 423  002c               L502:
 424  002c e702          	ld	(2,x),a
 425                     ; 98     if ((((u8)(GPIO_Mode)) & (u8)0x40) != (u8)0x00) /* Pull-Up or Push-Pull */
 427  002e 7b06          	ld	a,(OFST+6,sp)
 428  0030 a540          	bcp	a,#64
 429  0032 2706          	jreq	L702
 430                     ; 100         GPIOx->CR1 |= (u8)GPIO_Pin;
 432  0034 e603          	ld	a,(3,x)
 433  0036 1a05          	or	a,(OFST+5,sp)
 435  0038 2005          	jra	L112
 436  003a               L702:
 437                     ; 103         GPIOx->CR1 &= (u8)(~(GPIO_Pin));
 439  003a 7b05          	ld	a,(OFST+5,sp)
 440  003c 43            	cpl	a
 441  003d e403          	and	a,(3,x)
 442  003f               L112:
 443  003f e703          	ld	(3,x),a
 444                     ; 110     if ((((u8)(GPIO_Mode)) & (u8)0x20) != (u8)0x00) /* Interrupt or Slow slope */
 446  0041 7b06          	ld	a,(OFST+6,sp)
 447  0043 a520          	bcp	a,#32
 448  0045 2706          	jreq	L312
 449                     ; 112         GPIOx->CR2 |= (u8)GPIO_Pin;
 451  0047 e604          	ld	a,(4,x)
 452  0049 1a05          	or	a,(OFST+5,sp)
 454  004b 2005          	jra	L512
 455  004d               L312:
 456                     ; 115         GPIOx->CR2 &= (u8)(~(GPIO_Pin));
 458  004d 7b05          	ld	a,(OFST+5,sp)
 459  004f 43            	cpl	a
 460  0050 e404          	and	a,(4,x)
 461  0052               L512:
 462  0052 e704          	ld	(4,x),a
 463                     ; 118 }
 466  0054 85            	popw	x
 467  0055 81            	ret	
 513                     ; 129 void GPIO_Write(GPIO_TypeDef* GPIOx, u8 PortVal)
 513                     ; 130 {
 514                     	switch	.text
 515  0056               _GPIO_Write:
 517  0056 89            	pushw	x
 518       00000000      OFST:	set	0
 521                     ; 131     GPIOx->ODR = PortVal;
 523  0057 1e01          	ldw	x,(OFST+1,sp)
 524  0059 7b05          	ld	a,(OFST+5,sp)
 525  005b f7            	ld	(x),a
 526                     ; 132 }
 529  005c 85            	popw	x
 530  005d 81            	ret	
 577                     ; 143 void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 577                     ; 144 {
 578                     	switch	.text
 579  005e               _GPIO_WriteHigh:
 581  005e 89            	pushw	x
 582       00000000      OFST:	set	0
 585                     ; 145     GPIOx->ODR |= (u8)PortPins;
 587  005f f6            	ld	a,(x)
 588  0060 1a05          	or	a,(OFST+5,sp)
 589  0062 f7            	ld	(x),a
 590                     ; 146 }
 593  0063 85            	popw	x
 594  0064 81            	ret	
 641                     ; 157 void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 641                     ; 158 {
 642                     	switch	.text
 643  0065               _GPIO_WriteLow:
 645  0065 89            	pushw	x
 646       00000000      OFST:	set	0
 649                     ; 159     GPIOx->ODR &= (u8)(~PortPins);
 651  0066 7b05          	ld	a,(OFST+5,sp)
 652  0068 43            	cpl	a
 653  0069 f4            	and	a,(x)
 654  006a f7            	ld	(x),a
 655                     ; 160 }
 658  006b 85            	popw	x
 659  006c 81            	ret	
 706                     ; 171 void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 706                     ; 172 {
 707                     	switch	.text
 708  006d               _GPIO_WriteReverse:
 710  006d 89            	pushw	x
 711       00000000      OFST:	set	0
 714                     ; 173     GPIOx->ODR ^= (u8)PortPins;
 716  006e f6            	ld	a,(x)
 717  006f 1805          	xor	a,(OFST+5,sp)
 718  0071 f7            	ld	(x),a
 719                     ; 174 }
 722  0072 85            	popw	x
 723  0073 81            	ret	
 761                     ; 183 u8 GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
 761                     ; 184 {
 762                     	switch	.text
 763  0074               _GPIO_ReadOutputData:
 767                     ; 185     return ((u8)GPIOx->ODR);
 769  0074 f6            	ld	a,(x)
 772  0075 81            	ret	
 809                     ; 195 u8 GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
 809                     ; 196 {
 810                     	switch	.text
 811  0076               _GPIO_ReadInputData:
 815                     ; 197     return ((u8)GPIOx->IDR);
 817  0076 e601          	ld	a,(1,x)
 820  0078 81            	ret	
 888                     ; 210 BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
 888                     ; 211 {
 889                     	switch	.text
 890  0079               _GPIO_ReadInputPin:
 892  0079 89            	pushw	x
 893       00000000      OFST:	set	0
 896                     ; 212     return ((BitStatus)(GPIOx->IDR & (vu8)GPIO_Pin));
 898  007a e601          	ld	a,(1,x)
 899  007c 1405          	and	a,(OFST+5,sp)
 902  007e 85            	popw	x
 903  007f 81            	ret	
 981                     ; 223 void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
 981                     ; 224 {
 982                     	switch	.text
 983  0080               _GPIO_ExternalPullUpConfig:
 985  0080 89            	pushw	x
 986       00000000      OFST:	set	0
 989                     ; 226     assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
 991                     ; 227     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 993                     ; 229     if (NewState != DISABLE) /* External Pull-Up Set*/
 995  0081 7b06          	ld	a,(OFST+6,sp)
 996  0083 2706          	jreq	L374
 997                     ; 231         GPIOx->CR1 |= (u8)GPIO_Pin;
 999  0085 e603          	ld	a,(3,x)
1000  0087 1a05          	or	a,(OFST+5,sp)
1002  0089 2007          	jra	L574
1003  008b               L374:
1004                     ; 234         GPIOx->CR1 &= (u8)(~(GPIO_Pin));
1006  008b 1e01          	ldw	x,(OFST+1,sp)
1007  008d 7b05          	ld	a,(OFST+5,sp)
1008  008f 43            	cpl	a
1009  0090 e403          	and	a,(3,x)
1010  0092               L574:
1011  0092 e703          	ld	(3,x),a
1012                     ; 236 }
1015  0094 85            	popw	x
1016  0095 81            	ret	
1029                     	xdef	_GPIO_ExternalPullUpConfig
1030                     	xdef	_GPIO_ReadInputPin
1031                     	xdef	_GPIO_ReadOutputData
1032                     	xdef	_GPIO_ReadInputData
1033                     	xdef	_GPIO_WriteReverse
1034                     	xdef	_GPIO_WriteLow
1035                     	xdef	_GPIO_WriteHigh
1036                     	xdef	_GPIO_Write
1037                     	xdef	_GPIO_Init
1038                     	xdef	_GPIO_DeInit
1057                     	end
