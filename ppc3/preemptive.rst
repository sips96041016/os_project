                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Sun Jan 13 00:59:30 2019
                                      5 ;--------------------------------------------------------
                                      6 	.module preemptive
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _Bootstrap
                                     13 	.globl _myTimer0Handler
                                     14 	.globl _thread_manager
                                     15 	.globl _main
                                     16 	.globl _CY
                                     17 	.globl _AC
                                     18 	.globl _F0
                                     19 	.globl _RS1
                                     20 	.globl _RS0
                                     21 	.globl _OV
                                     22 	.globl _F1
                                     23 	.globl _P
                                     24 	.globl _PS
                                     25 	.globl _PT1
                                     26 	.globl _PX1
                                     27 	.globl _PT0
                                     28 	.globl _PX0
                                     29 	.globl _RD
                                     30 	.globl _WR
                                     31 	.globl _T1
                                     32 	.globl _T0
                                     33 	.globl _INT1
                                     34 	.globl _INT0
                                     35 	.globl _TXD
                                     36 	.globl _RXD
                                     37 	.globl _P3_7
                                     38 	.globl _P3_6
                                     39 	.globl _P3_5
                                     40 	.globl _P3_4
                                     41 	.globl _P3_3
                                     42 	.globl _P3_2
                                     43 	.globl _P3_1
                                     44 	.globl _P3_0
                                     45 	.globl _EA
                                     46 	.globl _ES
                                     47 	.globl _ET1
                                     48 	.globl _EX1
                                     49 	.globl _ET0
                                     50 	.globl _EX0
                                     51 	.globl _P2_7
                                     52 	.globl _P2_6
                                     53 	.globl _P2_5
                                     54 	.globl _P2_4
                                     55 	.globl _P2_3
                                     56 	.globl _P2_2
                                     57 	.globl _P2_1
                                     58 	.globl _P2_0
                                     59 	.globl _SM0
                                     60 	.globl _SM1
                                     61 	.globl _SM2
                                     62 	.globl _REN
                                     63 	.globl _TB8
                                     64 	.globl _RB8
                                     65 	.globl _TI
                                     66 	.globl _RI
                                     67 	.globl _P1_7
                                     68 	.globl _P1_6
                                     69 	.globl _P1_5
                                     70 	.globl _P1_4
                                     71 	.globl _P1_3
                                     72 	.globl _P1_2
                                     73 	.globl _P1_1
                                     74 	.globl _P1_0
                                     75 	.globl _TF1
                                     76 	.globl _TR1
                                     77 	.globl _TF0
                                     78 	.globl _TR0
                                     79 	.globl _IE1
                                     80 	.globl _IT1
                                     81 	.globl _IE0
                                     82 	.globl _IT0
                                     83 	.globl _P0_7
                                     84 	.globl _P0_6
                                     85 	.globl _P0_5
                                     86 	.globl _P0_4
                                     87 	.globl _P0_3
                                     88 	.globl _P0_2
                                     89 	.globl _P0_1
                                     90 	.globl _P0_0
                                     91 	.globl _B
                                     92 	.globl _ACC
                                     93 	.globl _PSW
                                     94 	.globl _IP
                                     95 	.globl _P3
                                     96 	.globl _IE
                                     97 	.globl _P2
                                     98 	.globl _SBUF
                                     99 	.globl _SCON
                                    100 	.globl _P1
                                    101 	.globl _TH1
                                    102 	.globl _TH0
                                    103 	.globl _TL1
                                    104 	.globl _TL0
                                    105 	.globl _TMOD
                                    106 	.globl _TCON
                                    107 	.globl _PCON
                                    108 	.globl _DPH
                                    109 	.globl _DPL
                                    110 	.globl _SP
                                    111 	.globl _P0
                                    112 	.globl _i
                                    113 	.globl _temp2
                                    114 	.globl _temp1
                                    115 	.globl _manager_ID
                                    116 	.globl _ID
                                    117 	.globl _bitmap
                                    118 	.globl _ssp
                                    119 	.globl _ThreadCreate
                                    120 	.globl _ThreadYield
                                    121 	.globl _ThreadExit
                                    122 ;--------------------------------------------------------
                                    123 ; special function registers
                                    124 ;--------------------------------------------------------
                                    125 	.area RSEG    (ABS,DATA)
      000000                        126 	.org 0x0000
                           000080   127 _P0	=	0x0080
                           000081   128 _SP	=	0x0081
                           000082   129 _DPL	=	0x0082
                           000083   130 _DPH	=	0x0083
                           000087   131 _PCON	=	0x0087
                           000088   132 _TCON	=	0x0088
                           000089   133 _TMOD	=	0x0089
                           00008A   134 _TL0	=	0x008a
                           00008B   135 _TL1	=	0x008b
                           00008C   136 _TH0	=	0x008c
                           00008D   137 _TH1	=	0x008d
                           000090   138 _P1	=	0x0090
                           000098   139 _SCON	=	0x0098
                           000099   140 _SBUF	=	0x0099
                           0000A0   141 _P2	=	0x00a0
                           0000A8   142 _IE	=	0x00a8
                           0000B0   143 _P3	=	0x00b0
                           0000B8   144 _IP	=	0x00b8
                           0000D0   145 _PSW	=	0x00d0
                           0000E0   146 _ACC	=	0x00e0
                           0000F0   147 _B	=	0x00f0
                                    148 ;--------------------------------------------------------
                                    149 ; special function bits
                                    150 ;--------------------------------------------------------
                                    151 	.area RSEG    (ABS,DATA)
      000000                        152 	.org 0x0000
                           000080   153 _P0_0	=	0x0080
                           000081   154 _P0_1	=	0x0081
                           000082   155 _P0_2	=	0x0082
                           000083   156 _P0_3	=	0x0083
                           000084   157 _P0_4	=	0x0084
                           000085   158 _P0_5	=	0x0085
                           000086   159 _P0_6	=	0x0086
                           000087   160 _P0_7	=	0x0087
                           000088   161 _IT0	=	0x0088
                           000089   162 _IE0	=	0x0089
                           00008A   163 _IT1	=	0x008a
                           00008B   164 _IE1	=	0x008b
                           00008C   165 _TR0	=	0x008c
                           00008D   166 _TF0	=	0x008d
                           00008E   167 _TR1	=	0x008e
                           00008F   168 _TF1	=	0x008f
                           000090   169 _P1_0	=	0x0090
                           000091   170 _P1_1	=	0x0091
                           000092   171 _P1_2	=	0x0092
                           000093   172 _P1_3	=	0x0093
                           000094   173 _P1_4	=	0x0094
                           000095   174 _P1_5	=	0x0095
                           000096   175 _P1_6	=	0x0096
                           000097   176 _P1_7	=	0x0097
                           000098   177 _RI	=	0x0098
                           000099   178 _TI	=	0x0099
                           00009A   179 _RB8	=	0x009a
                           00009B   180 _TB8	=	0x009b
                           00009C   181 _REN	=	0x009c
                           00009D   182 _SM2	=	0x009d
                           00009E   183 _SM1	=	0x009e
                           00009F   184 _SM0	=	0x009f
                           0000A0   185 _P2_0	=	0x00a0
                           0000A1   186 _P2_1	=	0x00a1
                           0000A2   187 _P2_2	=	0x00a2
                           0000A3   188 _P2_3	=	0x00a3
                           0000A4   189 _P2_4	=	0x00a4
                           0000A5   190 _P2_5	=	0x00a5
                           0000A6   191 _P2_6	=	0x00a6
                           0000A7   192 _P2_7	=	0x00a7
                           0000A8   193 _EX0	=	0x00a8
                           0000A9   194 _ET0	=	0x00a9
                           0000AA   195 _EX1	=	0x00aa
                           0000AB   196 _ET1	=	0x00ab
                           0000AC   197 _ES	=	0x00ac
                           0000AF   198 _EA	=	0x00af
                           0000B0   199 _P3_0	=	0x00b0
                           0000B1   200 _P3_1	=	0x00b1
                           0000B2   201 _P3_2	=	0x00b2
                           0000B3   202 _P3_3	=	0x00b3
                           0000B4   203 _P3_4	=	0x00b4
                           0000B5   204 _P3_5	=	0x00b5
                           0000B6   205 _P3_6	=	0x00b6
                           0000B7   206 _P3_7	=	0x00b7
                           0000B0   207 _RXD	=	0x00b0
                           0000B1   208 _TXD	=	0x00b1
                           0000B2   209 _INT0	=	0x00b2
                           0000B3   210 _INT1	=	0x00b3
                           0000B4   211 _T0	=	0x00b4
                           0000B5   212 _T1	=	0x00b5
                           0000B6   213 _WR	=	0x00b6
                           0000B7   214 _RD	=	0x00b7
                           0000B8   215 _PX0	=	0x00b8
                           0000B9   216 _PT0	=	0x00b9
                           0000BA   217 _PX1	=	0x00ba
                           0000BB   218 _PT1	=	0x00bb
                           0000BC   219 _PS	=	0x00bc
                           0000D0   220 _P	=	0x00d0
                           0000D1   221 _F1	=	0x00d1
                           0000D2   222 _OV	=	0x00d2
                           0000D3   223 _RS0	=	0x00d3
                           0000D4   224 _RS1	=	0x00d4
                           0000D5   225 _F0	=	0x00d5
                           0000D6   226 _AC	=	0x00d6
                           0000D7   227 _CY	=	0x00d7
                                    228 ;--------------------------------------------------------
                                    229 ; overlayable register banks
                                    230 ;--------------------------------------------------------
                                    231 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        232 	.ds 8
                                    233 ;--------------------------------------------------------
                                    234 ; internal ram data
                                    235 ;--------------------------------------------------------
                                    236 	.area DSEG    (DATA)
                                    237 ;--------------------------------------------------------
                                    238 ; overlayable items in internal ram 
                                    239 ;--------------------------------------------------------
                                    240 	.area	OSEG    (OVR,DATA)
                                    241 ;--------------------------------------------------------
                                    242 ; indirectly addressable internal ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area ISEG    (DATA)
                           000020   245 _ssp	=	0x0020
                           000024   246 _bitmap	=	0x0024
                           000028   247 _ID	=	0x0028
                           000029   248 _manager_ID	=	0x0029
                           00002A   249 _temp1	=	0x002a
                           00002B   250 _temp2	=	0x002b
                           00002C   251 _i	=	0x002c
                                    252 ;--------------------------------------------------------
                                    253 ; absolute internal ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area IABS    (ABS,DATA)
                                    256 	.area IABS    (ABS,DATA)
                                    257 ;--------------------------------------------------------
                                    258 ; bit data
                                    259 ;--------------------------------------------------------
                                    260 	.area BSEG    (BIT)
                                    261 ;--------------------------------------------------------
                                    262 ; paged external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area PSEG    (PAG,XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XSEG    (XDATA)
                                    269 ;--------------------------------------------------------
                                    270 ; absolute external ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area XABS    (ABS,XDATA)
                                    273 ;--------------------------------------------------------
                                    274 ; external initialized ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area XISEG   (XDATA)
                                    277 	.area HOME    (CODE)
                                    278 	.area GSINIT0 (CODE)
                                    279 	.area GSINIT1 (CODE)
                                    280 	.area GSINIT2 (CODE)
                                    281 	.area GSINIT3 (CODE)
                                    282 	.area GSINIT4 (CODE)
                                    283 	.area GSINIT5 (CODE)
                                    284 	.area GSINIT  (CODE)
                                    285 	.area GSFINAL (CODE)
                                    286 	.area CSEG    (CODE)
                                    287 ;--------------------------------------------------------
                                    288 ; global & static initialisations
                                    289 ;--------------------------------------------------------
                                    290 	.area HOME    (CODE)
                                    291 	.area GSINIT  (CODE)
                                    292 	.area GSFINAL (CODE)
                                    293 	.area GSINIT  (CODE)
                                    294 ;--------------------------------------------------------
                                    295 ; Home
                                    296 ;--------------------------------------------------------
                                    297 	.area HOME    (CODE)
                                    298 	.area HOME    (CODE)
                                    299 ;--------------------------------------------------------
                                    300 ; code
                                    301 ;--------------------------------------------------------
                                    302 	.area CSEG    (CODE)
                                    303 ;------------------------------------------------------------
                                    304 ;Allocation info for local variables in function 'thread_manager'
                                    305 ;------------------------------------------------------------
                                    306 ;	preemptive.c:30: void thread_manager(void){
                                    307 ;	-----------------------------------------
                                    308 ;	 function thread_manager
                                    309 ;	-----------------------------------------
      000192                        310 _thread_manager:
                           000007   311 	ar7 = 0x07
                           000006   312 	ar6 = 0x06
                           000005   313 	ar5 = 0x05
                           000004   314 	ar4 = 0x04
                           000003   315 	ar3 = 0x03
                           000002   316 	ar2 = 0x02
                           000001   317 	ar1 = 0x01
                           000000   318 	ar0 = 0x00
                                    319 ;	preemptive.c:31: do {
      000192                        320 00106$:
                                    321 ;	preemptive.c:32: if(ID==MAXTHREADS-1) ID = 0;
      000192 78 28            [12]  322 	mov	r0,#_ID
      000194 B6 03 06         [24]  323 	cjne	@r0,#0x03,00102$
      000197 78 28            [12]  324 	mov	r0,#_ID
      000199 76 00            [12]  325 	mov	@r0,#0x00
      00019B 80 03            [24]  326 	sjmp	00103$
      00019D                        327 00102$:
                                    328 ;	preemptive.c:33: else ID++;
      00019D 78 28            [12]  329 	mov	r0,#_ID
      00019F 06               [12]  330 	inc	@r0
      0001A0                        331 00103$:
                                    332 ;	preemptive.c:34: if(bitmap[ID]>0) break;
      0001A0 78 28            [12]  333 	mov	r0,#_ID
      0001A2 E6               [12]  334 	mov	a,@r0
      0001A3 24 24            [12]  335 	add	a,#_bitmap
      0001A5 F9               [12]  336 	mov	r1,a
      0001A6 87 07            [24]  337 	mov	ar7,@r1
      0001A8 C3               [12]  338 	clr	c
      0001A9 74 80            [12]  339 	mov	a,#(0x00 ^ 0x80)
      0001AB 8F F0            [24]  340 	mov	b,r7
      0001AD 63 F0 80         [24]  341 	xrl	b,#0x80
      0001B0 95 F0            [12]  342 	subb	a,b
      0001B2 50 DE            [24]  343 	jnc	00106$
                                    344 ;	preemptive.c:36: RESTORESTATE;
      0001B4 78 28            [12]  345 	mov	r0,#_ID
      0001B6 E6               [12]  346 	mov	a,@r0
      0001B7 24 20            [12]  347 	add	a,#_ssp
      0001B9 F9               [12]  348 	mov	r1,a
      0001BA 87 81            [24]  349 	mov	_SP,@r1
      0001BC D0 D0            [24]  350 	pop PSW 
      0001BE D0 83            [24]  351 	pop DPH 
      0001C0 D0 82            [24]  352 	pop DPL 
      0001C2 D0 F0            [24]  353 	pop B 
      0001C4 D0 E0            [24]  354 	pop ACC 
                                    355 ;	preemptive.c:39: __endasm;
      0001C6 32               [24]  356 	reti
      0001C7 22               [24]  357 	ret
                                    358 ;------------------------------------------------------------
                                    359 ;Allocation info for local variables in function 'myTimer0Handler'
                                    360 ;------------------------------------------------------------
                                    361 ;	preemptive.c:42: void myTimer0Handler(void){
                                    362 ;	-----------------------------------------
                                    363 ;	 function myTimer0Handler
                                    364 ;	-----------------------------------------
      0001C8                        365 _myTimer0Handler:
                                    366 ;	preemptive.c:43: SAVESTATE;
      0001C8 C0 E0            [24]  367 	push ACC 
      0001CA C0 F0            [24]  368 	push B 
      0001CC C0 82            [24]  369 	push DPL 
      0001CE C0 83            [24]  370 	push DPH 
      0001D0 C0 D0            [24]  371 	push PSW 
      0001D2 C2 D4            [12]  372 	clr RS1 
      0001D4 C2 D3            [12]  373 	clr RS0 
      0001D6 78 28            [12]  374 	mov	r0,#_ID
      0001D8 E6               [12]  375 	mov	a,@r0
      0001D9 24 20            [12]  376 	add	a,#_ssp
      0001DB F8               [12]  377 	mov	r0,a
      0001DC A6 81            [24]  378 	mov	@r0,_SP
                                    379 ;	preemptive.c:44: temp1 = ID;
      0001DE 78 28            [12]  380 	mov	r0,#_ID
      0001E0 79 2A            [12]  381 	mov	r1,#_temp1
      0001E2 E6               [12]  382 	mov	a,@r0
      0001E3 F7               [12]  383 	mov	@r1,a
                                    384 ;	preemptive.c:45: ID = manager_ID;
      0001E4 78 29            [12]  385 	mov	r0,#_manager_ID
      0001E6 79 28            [12]  386 	mov	r1,#_ID
      0001E8 E6               [12]  387 	mov	a,@r0
      0001E9 F7               [12]  388 	mov	@r1,a
                                    389 ;	preemptive.c:46: RESTORESTATE;
      0001EA 78 28            [12]  390 	mov	r0,#_ID
      0001EC E6               [12]  391 	mov	a,@r0
      0001ED 24 20            [12]  392 	add	a,#_ssp
      0001EF F9               [12]  393 	mov	r1,a
      0001F0 87 81            [24]  394 	mov	_SP,@r1
      0001F2 D0 D0            [24]  395 	pop PSW 
      0001F4 D0 83            [24]  396 	pop DPH 
      0001F6 D0 82            [24]  397 	pop DPL 
      0001F8 D0 F0            [24]  398 	pop B 
      0001FA D0 E0            [24]  399 	pop ACC 
                                    400 ;	preemptive.c:47: ID = temp1;
      0001FC 78 2A            [12]  401 	mov	r0,#_temp1
      0001FE 79 28            [12]  402 	mov	r1,#_ID
      000200 E6               [12]  403 	mov	a,@r0
      000201 F7               [12]  404 	mov	@r1,a
      000202 22               [24]  405 	ret
                                    406 ;------------------------------------------------------------
                                    407 ;Allocation info for local variables in function 'Bootstrap'
                                    408 ;------------------------------------------------------------
                                    409 ;	preemptive.c:50: void Bootstrap(void) {
                                    410 ;	-----------------------------------------
                                    411 ;	 function Bootstrap
                                    412 ;	-----------------------------------------
      000203                        413 _Bootstrap:
                                    414 ;	preemptive.c:51: bitmap[0] = bitmap[1] = bitmap[2] = bitmap[3] = 0;
      000203 78 27            [12]  415 	mov	r0,#(_bitmap + 0x0003)
      000205 76 00            [12]  416 	mov	@r0,#0x00
      000207 78 26            [12]  417 	mov	r0,#(_bitmap + 0x0002)
      000209 76 00            [12]  418 	mov	@r0,#0x00
      00020B 78 25            [12]  419 	mov	r0,#(_bitmap + 0x0001)
      00020D 76 00            [12]  420 	mov	@r0,#0x00
      00020F 78 24            [12]  421 	mov	r0,#_bitmap
      000211 76 00            [12]  422 	mov	@r0,#0x00
                                    423 ;	preemptive.c:53: TMOD = 0;
      000213 75 89 00         [24]  424 	mov	_TMOD,#0x00
                                    425 ;	preemptive.c:54: IE = 0x82;
      000216 75 A8 82         [24]  426 	mov	_IE,#0x82
                                    427 ;	preemptive.c:55: TR0 = 1;
      000219 D2 8C            [12]  428 	setb	_TR0
                                    429 ;	preemptive.c:57: manager_ID = ThreadCreate(thread_manager);
      00021B 90 01 92         [24]  430 	mov	dptr,#_thread_manager
      00021E 12 02 44         [24]  431 	lcall	_ThreadCreate
      000221 E5 82            [12]  432 	mov	a,dpl
      000223 78 29            [12]  433 	mov	r0,#_manager_ID
      000225 F6               [12]  434 	mov	@r0,a
                                    435 ;	preemptive.c:58: ID = ThreadCreate(main);
      000226 90 01 4B         [24]  436 	mov	dptr,#_main
      000229 12 02 44         [24]  437 	lcall	_ThreadCreate
      00022C E5 82            [12]  438 	mov	a,dpl
      00022E 78 28            [12]  439 	mov	r0,#_ID
      000230 F6               [12]  440 	mov	@r0,a
                                    441 ;	preemptive.c:59: RESTORESTATE;
      000231 78 28            [12]  442 	mov	r0,#_ID
      000233 E6               [12]  443 	mov	a,@r0
      000234 24 20            [12]  444 	add	a,#_ssp
      000236 F9               [12]  445 	mov	r1,a
      000237 87 81            [24]  446 	mov	_SP,@r1
      000239 D0 D0            [24]  447 	pop PSW 
      00023B D0 83            [24]  448 	pop DPH 
      00023D D0 82            [24]  449 	pop DPL 
      00023F D0 F0            [24]  450 	pop B 
      000241 D0 E0            [24]  451 	pop ACC 
      000243 22               [24]  452 	ret
                                    453 ;------------------------------------------------------------
                                    454 ;Allocation info for local variables in function 'ThreadCreate'
                                    455 ;------------------------------------------------------------
                                    456 ;fp                        Allocated to registers 
                                    457 ;------------------------------------------------------------
                                    458 ;	preemptive.c:62: ThreadID ThreadCreate(FunctionPtr fp) {
                                    459 ;	-----------------------------------------
                                    460 ;	 function ThreadCreate
                                    461 ;	-----------------------------------------
      000244                        462 _ThreadCreate:
                                    463 ;	preemptive.c:63: EA = 0;
      000244 C2 AF            [12]  464 	clr	_EA
                                    465 ;	preemptive.c:64: for(i=0;i<MAXTHREADS;i++) if(!bitmap[i]) break;
      000246 78 2C            [12]  466 	mov	r0,#_i
      000248 76 00            [12]  467 	mov	@r0,#0x00
      00024A                        468 00107$:
      00024A 78 2C            [12]  469 	mov	r0,#_i
      00024C C3               [12]  470 	clr	c
      00024D E6               [12]  471 	mov	a,@r0
      00024E 64 80            [12]  472 	xrl	a,#0x80
      000250 94 84            [12]  473 	subb	a,#0x84
      000252 50 0E            [24]  474 	jnc	00103$
      000254 78 2C            [12]  475 	mov	r0,#_i
      000256 E6               [12]  476 	mov	a,@r0
      000257 24 24            [12]  477 	add	a,#_bitmap
      000259 F9               [12]  478 	mov	r1,a
      00025A E7               [12]  479 	mov	a,@r1
      00025B 60 05            [24]  480 	jz	00103$
      00025D 78 2C            [12]  481 	mov	r0,#_i
      00025F 06               [12]  482 	inc	@r0
      000260 80 E8            [24]  483 	sjmp	00107$
      000262                        484 00103$:
                                    485 ;	preemptive.c:65: if(i==MAXTHREADS) return -1;
      000262 78 2C            [12]  486 	mov	r0,#_i
      000264 B6 04 04         [24]  487 	cjne	@r0,#0x04,00105$
      000267 75 82 FF         [24]  488 	mov	dpl,#0xFF
      00026A 22               [24]  489 	ret
      00026B                        490 00105$:
                                    491 ;	preemptive.c:67: bitmap[i] = 1;
      00026B 78 2C            [12]  492 	mov	r0,#_i
      00026D E6               [12]  493 	mov	a,@r0
      00026E 24 24            [12]  494 	add	a,#_bitmap
      000270 F8               [12]  495 	mov	r0,a
      000271 76 01            [12]  496 	mov	@r0,#0x01
                                    497 ;	preemptive.c:68: temp1 = SP;
      000273 78 2A            [12]  498 	mov	r0,#_temp1
      000275 A6 81            [24]  499 	mov	@r0,_SP
                                    500 ;	preemptive.c:69: SP = 0x3F + i*0x10;
      000277 78 2C            [12]  501 	mov	r0,#_i
      000279 E6               [12]  502 	mov	a,@r0
      00027A C4               [12]  503 	swap	a
      00027B 54 F0            [12]  504 	anl	a,#0xF0
      00027D FF               [12]  505 	mov	r7,a
      00027E 24 3F            [12]  506 	add	a,#0x3F
      000280 F5 81            [12]  507 	mov	_SP,a
                                    508 ;	preemptive.c:84: __endasm;
      000282 E5 82            [12]  509 	mov a,DPL
      000284 85 83 F0         [24]  510 	mov b,DPH
      000287 90 03 0A         [24]  511 	mov dptr,#_ThreadExit
      00028A C0 82            [24]  512 	push DPL
      00028C C0 83            [24]  513 	push DPH
      00028E C0 E0            [24]  514 	push a
      000290 C0 F0            [24]  515 	push b
      000292 74 00            [12]  516 	mov a,#0x00
      000294 C0 E0            [24]  517 	push a
      000296 C0 E0            [24]  518 	push a
      000298 C0 E0            [24]  519 	push a
      00029A C0 E0            [24]  520 	push a
                                    521 ;	preemptive.c:85: temp2 = i<<3;
      00029C 78 2C            [12]  522 	mov	r0,#_i
      00029E 79 2B            [12]  523 	mov	r1,#_temp2
      0002A0 E6               [12]  524 	mov	a,@r0
      0002A1 C4               [12]  525 	swap	a
      0002A2 03               [12]  526 	rr	a
      0002A3 54 F8            [12]  527 	anl	a,#0xF8
      0002A5 F7               [12]  528 	mov	@r1,a
                                    529 ;	preemptive.c:88: __endasm;
      0002A6 C0 2B            [24]  530 	push _temp2
                                    531 ;	preemptive.c:90: ssp[i] = SP;
      0002A8 78 2C            [12]  532 	mov	r0,#_i
      0002AA E6               [12]  533 	mov	a,@r0
      0002AB 24 20            [12]  534 	add	a,#_ssp
      0002AD F8               [12]  535 	mov	r0,a
      0002AE A6 81            [24]  536 	mov	@r0,_SP
                                    537 ;	preemptive.c:91: SP = temp1;
      0002B0 78 2A            [12]  538 	mov	r0,#_temp1
      0002B2 86 81            [24]  539 	mov	_SP,@r0
                                    540 ;	preemptive.c:92: EA = 1;
      0002B4 D2 AF            [12]  541 	setb	_EA
                                    542 ;	preemptive.c:93: return i;
      0002B6 78 2C            [12]  543 	mov	r0,#_i
      0002B8 86 82            [24]  544 	mov	dpl,@r0
      0002BA 22               [24]  545 	ret
                                    546 ;------------------------------------------------------------
                                    547 ;Allocation info for local variables in function 'ThreadYield'
                                    548 ;------------------------------------------------------------
                                    549 ;	preemptive.c:96: void ThreadYield(void) {
                                    550 ;	-----------------------------------------
                                    551 ;	 function ThreadYield
                                    552 ;	-----------------------------------------
      0002BB                        553 _ThreadYield:
                                    554 ;	preemptive.c:97: EA = 0;
      0002BB C2 AF            [12]  555 	clr	_EA
                                    556 ;	preemptive.c:98: SAVESTATE;
      0002BD C0 E0            [24]  557 	push ACC 
      0002BF C0 F0            [24]  558 	push B 
      0002C1 C0 82            [24]  559 	push DPL 
      0002C3 C0 83            [24]  560 	push DPH 
      0002C5 C0 D0            [24]  561 	push PSW 
      0002C7 C2 D4            [12]  562 	clr RS1 
      0002C9 C2 D3            [12]  563 	clr RS0 
      0002CB 78 28            [12]  564 	mov	r0,#_ID
      0002CD E6               [12]  565 	mov	a,@r0
      0002CE 24 20            [12]  566 	add	a,#_ssp
      0002D0 F8               [12]  567 	mov	r0,a
      0002D1 A6 81            [24]  568 	mov	@r0,_SP
                                    569 ;	preemptive.c:99: do {
      0002D3                        570 00106$:
                                    571 ;	preemptive.c:100: if(ID==MAXTHREADS-1) ID = 0;
      0002D3 78 28            [12]  572 	mov	r0,#_ID
      0002D5 B6 03 06         [24]  573 	cjne	@r0,#0x03,00102$
      0002D8 78 28            [12]  574 	mov	r0,#_ID
      0002DA 76 00            [12]  575 	mov	@r0,#0x00
      0002DC 80 03            [24]  576 	sjmp	00103$
      0002DE                        577 00102$:
                                    578 ;	preemptive.c:101: else ID++;
      0002DE 78 28            [12]  579 	mov	r0,#_ID
      0002E0 06               [12]  580 	inc	@r0
      0002E1                        581 00103$:
                                    582 ;	preemptive.c:102: if(bitmap[ID]>0) break;
      0002E1 78 28            [12]  583 	mov	r0,#_ID
      0002E3 E6               [12]  584 	mov	a,@r0
      0002E4 24 24            [12]  585 	add	a,#_bitmap
      0002E6 F9               [12]  586 	mov	r1,a
      0002E7 87 07            [24]  587 	mov	ar7,@r1
      0002E9 C3               [12]  588 	clr	c
      0002EA 74 80            [12]  589 	mov	a,#(0x00 ^ 0x80)
      0002EC 8F F0            [24]  590 	mov	b,r7
      0002EE 63 F0 80         [24]  591 	xrl	b,#0x80
      0002F1 95 F0            [12]  592 	subb	a,b
      0002F3 50 DE            [24]  593 	jnc	00106$
                                    594 ;	preemptive.c:104: RESTORESTATE;
      0002F5 78 28            [12]  595 	mov	r0,#_ID
      0002F7 E6               [12]  596 	mov	a,@r0
      0002F8 24 20            [12]  597 	add	a,#_ssp
      0002FA F9               [12]  598 	mov	r1,a
      0002FB 87 81            [24]  599 	mov	_SP,@r1
      0002FD D0 D0            [24]  600 	pop PSW 
      0002FF D0 83            [24]  601 	pop DPH 
      000301 D0 82            [24]  602 	pop DPL 
      000303 D0 F0            [24]  603 	pop B 
      000305 D0 E0            [24]  604 	pop ACC 
                                    605 ;	preemptive.c:105: EA = 1;
      000307 D2 AF            [12]  606 	setb	_EA
      000309 22               [24]  607 	ret
                                    608 ;------------------------------------------------------------
                                    609 ;Allocation info for local variables in function 'ThreadExit'
                                    610 ;------------------------------------------------------------
                                    611 ;	preemptive.c:108: void ThreadExit(void) {
                                    612 ;	-----------------------------------------
                                    613 ;	 function ThreadExit
                                    614 ;	-----------------------------------------
      00030A                        615 _ThreadExit:
                                    616 ;	preemptive.c:109: EA = 0;
      00030A C2 AF            [12]  617 	clr	_EA
                                    618 ;	preemptive.c:110: bitmap[ID] = 0;
      00030C 78 28            [12]  619 	mov	r0,#_ID
      00030E E6               [12]  620 	mov	a,@r0
      00030F 24 24            [12]  621 	add	a,#_bitmap
      000311 F8               [12]  622 	mov	r0,a
      000312 76 00            [12]  623 	mov	@r0,#0x00
                                    624 ;	preemptive.c:111: do {
      000314                        625 00106$:
                                    626 ;	preemptive.c:112: if(ID==MAXTHREADS-1) ID = 0;
      000314 78 28            [12]  627 	mov	r0,#_ID
      000316 B6 03 06         [24]  628 	cjne	@r0,#0x03,00102$
      000319 78 28            [12]  629 	mov	r0,#_ID
      00031B 76 00            [12]  630 	mov	@r0,#0x00
      00031D 80 03            [24]  631 	sjmp	00103$
      00031F                        632 00102$:
                                    633 ;	preemptive.c:113: else ID++;
      00031F 78 28            [12]  634 	mov	r0,#_ID
      000321 06               [12]  635 	inc	@r0
      000322                        636 00103$:
                                    637 ;	preemptive.c:114: if(bitmap[ID]>0) break;
      000322 78 28            [12]  638 	mov	r0,#_ID
      000324 E6               [12]  639 	mov	a,@r0
      000325 24 24            [12]  640 	add	a,#_bitmap
      000327 F9               [12]  641 	mov	r1,a
      000328 87 07            [24]  642 	mov	ar7,@r1
      00032A C3               [12]  643 	clr	c
      00032B 74 80            [12]  644 	mov	a,#(0x00 ^ 0x80)
      00032D 8F F0            [24]  645 	mov	b,r7
      00032F 63 F0 80         [24]  646 	xrl	b,#0x80
      000332 95 F0            [12]  647 	subb	a,b
      000334 50 DE            [24]  648 	jnc	00106$
                                    649 ;	preemptive.c:116: RESTORESTATE;
      000336 78 28            [12]  650 	mov	r0,#_ID
      000338 E6               [12]  651 	mov	a,@r0
      000339 24 20            [12]  652 	add	a,#_ssp
      00033B F9               [12]  653 	mov	r1,a
      00033C 87 81            [24]  654 	mov	_SP,@r1
      00033E D0 D0            [24]  655 	pop PSW 
      000340 D0 83            [24]  656 	pop DPH 
      000342 D0 82            [24]  657 	pop DPL 
      000344 D0 F0            [24]  658 	pop B 
      000346 D0 E0            [24]  659 	pop ACC 
                                    660 ;	preemptive.c:117: EA = 1;
      000348 D2 AF            [12]  661 	setb	_EA
      00034A 22               [24]  662 	ret
                                    663 	.area CSEG    (CODE)
                                    664 	.area CONST   (CODE)
                                    665 	.area XINIT   (CODE)
                                    666 	.area CABS    (ABS,CODE)
