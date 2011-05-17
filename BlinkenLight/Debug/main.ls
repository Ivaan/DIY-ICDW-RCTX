   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  52                     ; 9 main(){
  54                     	switch	.text
  55  0000               _main:
  59                     ; 11     TIM3_DeInit();
  61  0000 cd0000        	call	_TIM3_DeInit
  63                     ; 13     TIM3_TimeBaseInit(TIM3_PRESCALER_1, 999);    
  65  0003 ae03e7        	ldw	x,#999
  66  0006 89            	pushw	x
  67  0007 4f            	clr	a
  68  0008 cd0000        	call	_TIM3_TimeBaseInit
  70  000b 85            	popw	x
  71                     ; 15     TIM3_OC2Init(TIM3_OCMODE_PWM1, TIM3_OUTPUTSTATE_ENABLE, 0, TIM3_OCPOLARITY_LOW);    
  73  000c 4b22          	push	#34
  74  000e 5f            	clrw	x
  75  000f 89            	pushw	x
  76  0010 ae0011        	ldw	x,#17
  77  0013 a660          	ld	a,#96
  78  0015 95            	ld	xh,a
  79  0016 cd0000        	call	_TIM3_OC2Init
  81  0019 5b03          	addw	sp,#3
  82                     ; 17     TIM3_Cmd(ENABLE);
  84  001b a601          	ld	a,#1
  85  001d cd0000        	call	_TIM3_Cmd
  87                     ; 20     TIM1_DeInit();
  89  0020 cd0000        	call	_TIM1_DeInit
  91                     ; 26     TIM1_TimeBaseInit(1000, TIM1_COUNTERMODE_UP, 1, 0);
  93  0023 4b00          	push	#0
  94  0025 ae0001        	ldw	x,#1
  95  0028 89            	pushw	x
  96  0029 4b00          	push	#0
  97  002b ae03e8        	ldw	x,#1000
  98  002e cd0000        	call	_TIM1_TimeBaseInit
 100  0031 5b04          	addw	sp,#4
 101                     ; 28     TIM1_ITConfig(TIM1_IT_UPDATE, ENABLE);
 103  0033 ae0001        	ldw	x,#1
 104  0036 a601          	ld	a,#1
 105  0038 95            	ld	xh,a
 106  0039 cd0000        	call	_TIM1_ITConfig
 108                     ; 30     TIM1_Cmd(ENABLE);
 110  003c a601          	ld	a,#1
 111  003e cd0000        	call	_TIM1_Cmd
 113                     ; 33     enableInterrupts();
 116  0041 9a            rim
 118  0042               L12:
 119                     ; 36     for(;;);
 121  0042 20fe          	jra	L12
 134                     	xdef	_main
 135                     	xref	_TIM3_Cmd
 136                     	xref	_TIM3_OC2Init
 137                     	xref	_TIM3_TimeBaseInit
 138                     	xref	_TIM3_DeInit
 139                     	xref	_TIM1_ITConfig
 140                     	xref	_TIM1_Cmd
 141                     	xref	_TIM1_TimeBaseInit
 142                     	xref	_TIM1_DeInit
 161                     	end
