   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  96                     ; 134 void TSL_Init(void)
  96                     ; 135 {
  98                     	switch	.text
  99  0000               _TSL_Init:
 103                     ; 137   disableInterrupts();
 106  0000 9b            	sim	
 108                     ; 139   DetectionIntegrator = DETECTION_INTEGRATOR_DEFAULT;
 111  0001 35020012      	mov	_DetectionIntegrator,#2
 112                     ; 140   EndDetectionIntegrator = END_DETECTION_INTEGRATOR_DEFAULT;
 114  0005 35020011      	mov	_EndDetectionIntegrator,#2
 115                     ; 141   ECSTimeStep = ECS_TIME_STEP_DEFAULT;
 117  0009 3514000f      	mov	_ECSTimeStep,#20
 118                     ; 142   ECSTemporization = ECS_TEMPO_DEFAULT;
 120  000d 3514000e      	mov	_ECSTemporization,#20
 121                     ; 143   RecalibrationIntegrator = RECALIBRATION_INTEGRATOR_DEFAULT;
 123  0011 350a0010      	mov	_RecalibrationIntegrator,#10
 124                     ; 144   DetectionTimeout = DTO_DEFAULT;
 126  0015 3f13          	clr	_DetectionTimeout
 127                     ; 146   ECS_K_Fast = ECS_IIR_KFAST_DEFAULT;
 129  0017 3514000d      	mov	_ECS_K_Fast,#20
 130                     ; 147   ECS_K_Slow = ECS_IIR_KSLOW_DEFAULT;
 132  001b 350a000c      	mov	_ECS_K_Slow,#10
 133                     ; 148   ECSTimeStepCounter = ECSTimeStep;
 135  001f 35140002      	mov	_ECSTimeStepCounter,#20
 136                     ; 149   ECSTempoCounter = 0;
 138  0023 3f01          	clr	_ECSTempoCounter
 139                     ; 150   ECSTempoPrescaler = 0;
 141  0025 3f00          	clr	_ECSTempoPrescaler
 142                     ; 152   TSL_IO_Init();
 144  0027 cd0000        	call	_TSL_IO_Init
 146                     ; 154   TSL_Timer_Init();
 148  002a cd0000        	call	_TSL_Timer_Init
 150                     ; 156   TSL_SCKey_Init();
 152  002d cd0000        	call	_TSL_SCKey_Init
 154                     ; 162   enableInterrupts();
 157  0030 9a            	rim	
 159                     ; 164   TSLState = TSL_IDLE_STATE;
 162  0031 35010028      	mov	_TSLState,#1
 163                     ; 166 }
 166  0035 81            	ret	
 202                     ; 179 void TSL_Action(void)
 202                     ; 180 {
 203                     	switch	.text
 204  0036               _TSL_Action:
 208                     ; 182   switch ( TSLState )
 210  0036 b628          	ld	a,_TSLState
 212                     ; 292       break;
 213  0038 4a            	dec	a
 214  0039 270c          	jreq	L53
 215  003b 4a            	dec	a
 216  003c 270e          	jreq	L73
 217  003e 4a            	dec	a
 218  003f 2722          	jreq	L14
 219  0041 a008          	sub	a,#8
 220  0043 272c          	jreq	L34
 221  0045               L17:
 223  0045 20fe          	jra	L17
 224  0047               L53:
 225                     ; 185     case TSL_IDLE_STATE:
 225                     ; 186       TSLState = TSL_SCKEY_P1_ACQ_STATE;
 227  0047 35020028      	mov	_TSLState,#2
 228                     ; 187       break;
 231  004b 81            	ret	
 232  004c               L73:
 233                     ; 190       disableInterrupts();
 236  004c 9b            	sim	
 238                     ; 191       Local_TickFlag.b.DTO_1sec = TSL_Tick_Flags.b.DTO_1sec;
 241                     	btst	_TSL_Tick_Flags,#0
 242  0052 90110003      	bccm	_Local_TickFlag,#0
 243                     ; 192       TSL_Tick_Flags.b.DTO_1sec = 0;
 245  0056 72110000      	bres	_TSL_Tick_Flags,#0
 246                     ; 193       enableInterrupts();
 249  005a 9a            	rim	
 251                     ; 195       TSL_SCKEY_P1_Acquisition();
 254  005b cd0000        	call	_TSL_SCKEY_P1_Acquisition
 256                     ; 196       TSLState = TSL_SCKEY_P1_PROC_STATE;
 258  005e 35030028      	mov	_TSLState,#3
 259                     ; 197       break;
 262  0062 81            	ret	
 263  0063               L14:
 264                     ; 199     case TSL_SCKEY_P1_PROC_STATE:
 264                     ; 200       for ( KeyIndex = 0; KeyIndex < SCKEY_P1_KEY_COUNT; KeyIndex++ )
 266  0063 b70a          	ld	_KeyIndex,a
 267  0065               L36:
 268                     ; 202         TSL_SCKey_Process();
 270  0065 cd0000        	call	_TSL_SCKey_Process
 272                     ; 200       for ( KeyIndex = 0; KeyIndex < SCKEY_P1_KEY_COUNT; KeyIndex++ )
 274  0068 3c0a          	inc	_KeyIndex
 277  006a 27f9          	jreq	L36
 278                     ; 211       TSLState = TSL_ECS_STATE;
 280  006c 350b0028      	mov	_TSLState,#11
 281                     ; 214       break;
 284  0070 81            	ret	
 285  0071               L34:
 286                     ; 285     case TSL_ECS_STATE:
 286                     ; 286       TSL_ECS();
 288  0071 cd0000        	call	_TSL_ECS
 290                     ; 287       TSL_GlobalSetting.whole = TSL_TempGlobalSetting.whole;
 292  0074 be06          	ldw	x,_TSL_TempGlobalSetting
 293  0076 bf26          	ldw	_TSL_GlobalSetting,x
 294                     ; 288       TSL_TempGlobalSetting.whole = 0;
 296  0078 5f            	clrw	x
 297  0079 bf06          	ldw	_TSL_TempGlobalSetting,x
 298                     ; 289       TSL_GlobalState.whole = TSL_TempGlobalState.whole;
 300  007b 450525        	mov	_TSL_GlobalState,_TSL_TempGlobalState
 301                     ; 290       TSL_TempGlobalState.whole = 0;
 303  007e 3f05          	clr	_TSL_TempGlobalState
 304                     ; 291       TSLState = TSL_IDLE_STATE;
 306  0080 35010028      	mov	_TSLState,#1
 307                     ; 292       break;
 309                     ; 300 }
 312  0084 81            	ret	
1222                     	xref	_TSL_ECS
1223                     	switch	.ubsct
1224  0000               _ECSTempoPrescaler:
1225  0000 00            	ds.b	1
1226                     	xdef	_ECSTempoPrescaler
1227  0001               _ECSTempoCounter:
1228  0001 00            	ds.b	1
1229                     	xdef	_ECSTempoCounter
1230  0002               _ECSTimeStepCounter:
1231  0002 00            	ds.b	1
1232                     	xdef	_ECSTimeStepCounter
1233  0003               _Local_TickFlag:
1234  0003 00            	ds.b	1
1235                     	xdef	_Local_TickFlag
1236  0004               _Local_TickECS10ms:
1237  0004 00            	ds.b	1
1238                     	xdef	_Local_TickECS10ms
1239  0005               _TSL_TempGlobalState:
1240  0005 00            	ds.b	1
1241                     	xdef	_TSL_TempGlobalState
1242  0006               _TSL_TempGlobalSetting:
1243  0006 0000          	ds.b	2
1244                     	xdef	_TSL_TempGlobalSetting
1245  0008               _Delta:
1246  0008 0000          	ds.b	2
1247                     	xdef	_Delta
1248  000a               _KeyIndex:
1249  000a 00            	ds.b	1
1250                     	xdef	_KeyIndex
1251                     	xref	_TSL_IO_Init
1252                     	xref	_TSL_SCKey_Process
1253                     	xref	_TSL_SCKEY_P1_Acquisition
1254                     	xref	_TSL_SCKey_Init
1255                     	xdef	_TSL_Action
1256                     	xdef	_TSL_Init
1257  000b               _IT_Sync_Flags:
1258  000b 00            	ds.b	1
1259                     	xdef	_IT_Sync_Flags
1260  000c               _ECS_K_Slow:
1261  000c 00            	ds.b	1
1262                     	xdef	_ECS_K_Slow
1263  000d               _ECS_K_Fast:
1264  000d 00            	ds.b	1
1265                     	xdef	_ECS_K_Fast
1266  000e               _ECSTemporization:
1267  000e 00            	ds.b	1
1268                     	xdef	_ECSTemporization
1269  000f               _ECSTimeStep:
1270  000f 00            	ds.b	1
1271                     	xdef	_ECSTimeStep
1272  0010               _RecalibrationIntegrator:
1273  0010 00            	ds.b	1
1274                     	xdef	_RecalibrationIntegrator
1275  0011               _EndDetectionIntegrator:
1276  0011 00            	ds.b	1
1277                     	xdef	_EndDetectionIntegrator
1278  0012               _DetectionIntegrator:
1279  0012 00            	ds.b	1
1280                     	xdef	_DetectionIntegrator
1281  0013               _DetectionTimeout:
1282  0013 00            	ds.b	1
1283                     	xdef	_DetectionTimeout
1284  0014               _sSCKeyInfo:
1285  0014 000000000000  	ds.b	15
1286                     	xdef	_sSCKeyInfo
1287  0023               _pKeyStruct:
1288  0023 0000          	ds.b	2
1289                     	xdef	_pKeyStruct
1290  0025               _TSL_GlobalState:
1291  0025 00            	ds.b	1
1292                     	xdef	_TSL_GlobalState
1293  0026               _TSL_GlobalSetting:
1294  0026 0000          	ds.b	2
1295                     	xdef	_TSL_GlobalSetting
1296  0028               _TSLState:
1297  0028 00            	ds.b	1
1298                     	xdef	_TSLState
1299                     	xref	_TSL_Timer_Init
1300                     	xref.b	_TSL_Tick_Flags
1320                     	end
