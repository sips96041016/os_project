                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Mon Jan 14 18:58:01 2019
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
                                    112 	.globl _plot
                                    113 	.globl _thread
                                    114 	.globl _mutex
                                    115 	.globl _log
                                    116 	.globl _counter
                                    117 	.globl _time
                                    118 	.globl _D
                                    119 	.globl _i
                                    120 	.globl _temp2
                                    121 	.globl _temp1
                                    122 	.globl _car_temp
                                    123 	.globl _ID
                                    124 	.globl _bitmap
                                    125 	.globl _ssp
                                    126 	.globl _th_tail
                                    127 	.globl _m_tail
                                    128 	.globl _now
                                    129 	.globl _delay
                                    130 	.globl _ThreadCreate
                                    131 	.globl _ThreadYield
                                    132 	.globl _ThreadExit
                                    133 ;--------------------------------------------------------
                                    134 ; special function registers
                                    135 ;--------------------------------------------------------
                                    136 	.area RSEG    (ABS,DATA)
      000000                        137 	.org 0x0000
                           000080   138 _P0	=	0x0080
                           000081   139 _SP	=	0x0081
                           000082   140 _DPL	=	0x0082
                           000083   141 _DPH	=	0x0083
                           000087   142 _PCON	=	0x0087
                           000088   143 _TCON	=	0x0088
                           000089   144 _TMOD	=	0x0089
                           00008A   145 _TL0	=	0x008a
                           00008B   146 _TL1	=	0x008b
                           00008C   147 _TH0	=	0x008c
                           00008D   148 _TH1	=	0x008d
                           000090   149 _P1	=	0x0090
                           000098   150 _SCON	=	0x0098
                           000099   151 _SBUF	=	0x0099
                           0000A0   152 _P2	=	0x00a0
                           0000A8   153 _IE	=	0x00a8
                           0000B0   154 _P3	=	0x00b0
                           0000B8   155 _IP	=	0x00b8
                           0000D0   156 _PSW	=	0x00d0
                           0000E0   157 _ACC	=	0x00e0
                           0000F0   158 _B	=	0x00f0
                                    159 ;--------------------------------------------------------
                                    160 ; special function bits
                                    161 ;--------------------------------------------------------
                                    162 	.area RSEG    (ABS,DATA)
      000000                        163 	.org 0x0000
                           000080   164 _P0_0	=	0x0080
                           000081   165 _P0_1	=	0x0081
                           000082   166 _P0_2	=	0x0082
                           000083   167 _P0_3	=	0x0083
                           000084   168 _P0_4	=	0x0084
                           000085   169 _P0_5	=	0x0085
                           000086   170 _P0_6	=	0x0086
                           000087   171 _P0_7	=	0x0087
                           000088   172 _IT0	=	0x0088
                           000089   173 _IE0	=	0x0089
                           00008A   174 _IT1	=	0x008a
                           00008B   175 _IE1	=	0x008b
                           00008C   176 _TR0	=	0x008c
                           00008D   177 _TF0	=	0x008d
                           00008E   178 _TR1	=	0x008e
                           00008F   179 _TF1	=	0x008f
                           000090   180 _P1_0	=	0x0090
                           000091   181 _P1_1	=	0x0091
                           000092   182 _P1_2	=	0x0092
                           000093   183 _P1_3	=	0x0093
                           000094   184 _P1_4	=	0x0094
                           000095   185 _P1_5	=	0x0095
                           000096   186 _P1_6	=	0x0096
                           000097   187 _P1_7	=	0x0097
                           000098   188 _RI	=	0x0098
                           000099   189 _TI	=	0x0099
                           00009A   190 _RB8	=	0x009a
                           00009B   191 _TB8	=	0x009b
                           00009C   192 _REN	=	0x009c
                           00009D   193 _SM2	=	0x009d
                           00009E   194 _SM1	=	0x009e
                           00009F   195 _SM0	=	0x009f
                           0000A0   196 _P2_0	=	0x00a0
                           0000A1   197 _P2_1	=	0x00a1
                           0000A2   198 _P2_2	=	0x00a2
                           0000A3   199 _P2_3	=	0x00a3
                           0000A4   200 _P2_4	=	0x00a4
                           0000A5   201 _P2_5	=	0x00a5
                           0000A6   202 _P2_6	=	0x00a6
                           0000A7   203 _P2_7	=	0x00a7
                           0000A8   204 _EX0	=	0x00a8
                           0000A9   205 _ET0	=	0x00a9
                           0000AA   206 _EX1	=	0x00aa
                           0000AB   207 _ET1	=	0x00ab
                           0000AC   208 _ES	=	0x00ac
                           0000AF   209 _EA	=	0x00af
                           0000B0   210 _P3_0	=	0x00b0
                           0000B1   211 _P3_1	=	0x00b1
                           0000B2   212 _P3_2	=	0x00b2
                           0000B3   213 _P3_3	=	0x00b3
                           0000B4   214 _P3_4	=	0x00b4
                           0000B5   215 _P3_5	=	0x00b5
                           0000B6   216 _P3_6	=	0x00b6
                           0000B7   217 _P3_7	=	0x00b7
                           0000B0   218 _RXD	=	0x00b0
                           0000B1   219 _TXD	=	0x00b1
                           0000B2   220 _INT0	=	0x00b2
                           0000B3   221 _INT1	=	0x00b3
                           0000B4   222 _T0	=	0x00b4
                           0000B5   223 _T1	=	0x00b5
                           0000B6   224 _WR	=	0x00b6
                           0000B7   225 _RD	=	0x00b7
                           0000B8   226 _PX0	=	0x00b8
                           0000B9   227 _PT0	=	0x00b9
                           0000BA   228 _PX1	=	0x00ba
                           0000BB   229 _PT1	=	0x00bb
                           0000BC   230 _PS	=	0x00bc
                           0000D0   231 _P	=	0x00d0
                           0000D1   232 _F1	=	0x00d1
                           0000D2   233 _OV	=	0x00d2
                           0000D3   234 _RS0	=	0x00d3
                           0000D4   235 _RS1	=	0x00d4
                           0000D5   236 _F0	=	0x00d5
                           0000D6   237 _AC	=	0x00d6
                           0000D7   238 _CY	=	0x00d7
                                    239 ;--------------------------------------------------------
                                    240 ; overlayable register banks
                                    241 ;--------------------------------------------------------
                                    242 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        243 	.ds 8
                                    244 ;--------------------------------------------------------
                                    245 ; internal ram data
                                    246 ;--------------------------------------------------------
                                    247 	.area DSEG    (DATA)
                           00003C   248 _m_tail	=	0x003c
                           00003D   249 _th_tail	=	0x003d
                                    250 ;--------------------------------------------------------
                                    251 ; overlayable items in internal ram 
                                    252 ;--------------------------------------------------------
                                    253 ;--------------------------------------------------------
                                    254 ; indirectly addressable internal ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area ISEG    (DATA)
                           000020   257 _ssp	=	0x0020
                           000024   258 _bitmap	=	0x0024
                           000028   259 _ID	=	0x0028
                           000029   260 _car_temp	=	0x0029
                           00002A   261 _temp1	=	0x002a
                           00002B   262 _temp2	=	0x002b
                           00002C   263 _i	=	0x002c
                           00002C   264 _D	=	0x002c
                           00003F   265 _time	=	0x003f
                           00003E   266 _counter	=	0x003e
                           000030   267 _log	=	0x0030
                           00003A   268 _mutex	=	0x003a
                           00003B   269 _thread	=	0x003b
                           00004E   270 _plot	=	0x004e
                                    271 ;--------------------------------------------------------
                                    272 ; absolute internal ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area IABS    (ABS,DATA)
                                    275 	.area IABS    (ABS,DATA)
                                    276 ;--------------------------------------------------------
                                    277 ; bit data
                                    278 ;--------------------------------------------------------
                                    279 	.area BSEG    (BIT)
                                    280 ;--------------------------------------------------------
                                    281 ; paged external ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area PSEG    (PAG,XDATA)
                                    284 ;--------------------------------------------------------
                                    285 ; external ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area XSEG    (XDATA)
                                    288 ;--------------------------------------------------------
                                    289 ; absolute external ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area XABS    (ABS,XDATA)
                                    292 ;--------------------------------------------------------
                                    293 ; external initialized ram data
                                    294 ;--------------------------------------------------------
                                    295 	.area XISEG   (XDATA)
                                    296 	.area HOME    (CODE)
                                    297 	.area GSINIT0 (CODE)
                                    298 	.area GSINIT1 (CODE)
                                    299 	.area GSINIT2 (CODE)
                                    300 	.area GSINIT3 (CODE)
                                    301 	.area GSINIT4 (CODE)
                                    302 	.area GSINIT5 (CODE)
                                    303 	.area GSINIT  (CODE)
                                    304 	.area GSFINAL (CODE)
                                    305 	.area CSEG    (CODE)
                                    306 ;--------------------------------------------------------
                                    307 ; global & static initialisations
                                    308 ;--------------------------------------------------------
                                    309 	.area HOME    (CODE)
                                    310 	.area GSINIT  (CODE)
                                    311 	.area GSFINAL (CODE)
                                    312 	.area GSINIT  (CODE)
                                    313 ;--------------------------------------------------------
                                    314 ; Home
                                    315 ;--------------------------------------------------------
                                    316 	.area HOME    (CODE)
                                    317 	.area HOME    (CODE)
                                    318 ;--------------------------------------------------------
                                    319 ; code
                                    320 ;--------------------------------------------------------
                                    321 	.area CSEG    (CODE)
                                    322 ;------------------------------------------------------------
                                    323 ;Allocation info for local variables in function 'now'
                                    324 ;------------------------------------------------------------
                                    325 ;	preemptive.c:30: unsigned char now(void) { return time; }
                                    326 ;	-----------------------------------------
                                    327 ;	 function now
                                    328 ;	-----------------------------------------
      00020E                        329 _now:
                           000007   330 	ar7 = 0x07
                           000006   331 	ar6 = 0x06
                           000005   332 	ar5 = 0x05
                           000004   333 	ar4 = 0x04
                           000003   334 	ar3 = 0x03
                           000002   335 	ar2 = 0x02
                           000001   336 	ar1 = 0x01
                           000000   337 	ar0 = 0x00
      00020E 78 3F            [12]  338 	mov	r0,#_time
      000210 86 82            [24]  339 	mov	dpl,@r0
      000212 22               [24]  340 	ret
                                    341 ;------------------------------------------------------------
                                    342 ;Allocation info for local variables in function 'delay'
                                    343 ;------------------------------------------------------------
                                    344 ;n                         Allocated to registers r7 
                                    345 ;------------------------------------------------------------
                                    346 ;	preemptive.c:31: void delay(unsigned char n) {
                                    347 ;	-----------------------------------------
                                    348 ;	 function delay
                                    349 ;	-----------------------------------------
      000213                        350 _delay:
      000213 AF 82            [24]  351 	mov	r7,dpl
                                    352 ;	preemptive.c:32: D[ID] = now() + n;
      000215 78 28            [12]  353 	mov	r0,#_ID
      000217 E6               [12]  354 	mov	a,@r0
      000218 24 2C            [12]  355 	add	a,#_D
      00021A F9               [12]  356 	mov	r1,a
      00021B C0 07            [24]  357 	push	ar7
      00021D C0 01            [24]  358 	push	ar1
      00021F 12 02 0E         [24]  359 	lcall	_now
      000222 E5 82            [12]  360 	mov	a,dpl
      000224 D0 01            [24]  361 	pop	ar1
      000226 D0 07            [24]  362 	pop	ar7
      000228 2F               [12]  363 	add	a,r7
      000229 F7               [12]  364 	mov	@r1,a
                                    365 ;	preemptive.c:33: bitmap[ID] = -2;
      00022A 78 28            [12]  366 	mov	r0,#_ID
      00022C E6               [12]  367 	mov	a,@r0
      00022D 24 24            [12]  368 	add	a,#_bitmap
      00022F F8               [12]  369 	mov	r0,a
      000230 76 FE            [12]  370 	mov	@r0,#0xFE
                                    371 ;	preemptive.c:34: ThreadYield();
      000232 02 04 1F         [24]  372 	ljmp	_ThreadYield
                                    373 ;------------------------------------------------------------
                                    374 ;Allocation info for local variables in function 'thread_manager'
                                    375 ;------------------------------------------------------------
                                    376 ;	preemptive.c:37: void thread_manager(void){
                                    377 ;	-----------------------------------------
                                    378 ;	 function thread_manager
                                    379 ;	-----------------------------------------
      000235                        380 _thread_manager:
                                    381 ;	preemptive.c:38: temp1 = temp2 = 0;
      000235 78 2B            [12]  382 	mov	r0,#_temp2
      000237 76 00            [12]  383 	mov	@r0,#0x00
      000239 78 2A            [12]  384 	mov	r0,#_temp1
      00023B 76 00            [12]  385 	mov	@r0,#0x00
                                    386 ;	preemptive.c:39: while(temp2==0){
      00023D                        387 00104$:
      00023D 78 2B            [12]  388 	mov	r0,#_temp2
      00023F E6               [12]  389 	mov	a,@r0
      000240 70 3A            [24]  390 	jnz	00106$
                                    391 ;	preemptive.c:40: for(i=1;i<MAXTHREADS;i++) if( temp1<bitmap[i] ) {
      000242 78 2C            [12]  392 	mov	r0,#_i
      000244 76 01            [12]  393 	mov	@r0,#0x01
      000246                        394 00108$:
      000246 78 2C            [12]  395 	mov	r0,#_i
      000248 C3               [12]  396 	clr	c
      000249 E6               [12]  397 	mov	a,@r0
      00024A 64 80            [12]  398 	xrl	a,#0x80
      00024C 94 84            [12]  399 	subb	a,#0x84
      00024E 50 ED            [24]  400 	jnc	00104$
      000250 78 2C            [12]  401 	mov	r0,#_i
      000252 E6               [12]  402 	mov	a,@r0
      000253 24 24            [12]  403 	add	a,#_bitmap
      000255 F9               [12]  404 	mov	r1,a
      000256 87 07            [24]  405 	mov	ar7,@r1
      000258 78 2A            [12]  406 	mov	r0,#_temp1
      00025A C3               [12]  407 	clr	c
      00025B E6               [12]  408 	mov	a,@r0
      00025C 64 80            [12]  409 	xrl	a,#0x80
      00025E 8F F0            [24]  410 	mov	b,r7
      000260 63 F0 80         [24]  411 	xrl	b,#0x80
      000263 95 F0            [12]  412 	subb	a,b
      000265 50 10            [24]  413 	jnc	00109$
                                    414 ;	preemptive.c:41: temp1 = bitmap[i];
      000267 78 2C            [12]  415 	mov	r0,#_i
      000269 E6               [12]  416 	mov	a,@r0
      00026A 24 24            [12]  417 	add	a,#_bitmap
      00026C F9               [12]  418 	mov	r1,a
      00026D 78 2A            [12]  419 	mov	r0,#_temp1
      00026F E7               [12]  420 	mov	a,@r1
      000270 F6               [12]  421 	mov	@r0,a
                                    422 ;	preemptive.c:42: temp2 = i;
      000271 78 2C            [12]  423 	mov	r0,#_i
      000273 79 2B            [12]  424 	mov	r1,#_temp2
      000275 E6               [12]  425 	mov	a,@r0
      000276 F7               [12]  426 	mov	@r1,a
      000277                        427 00109$:
                                    428 ;	preemptive.c:40: for(i=1;i<MAXTHREADS;i++) if( temp1<bitmap[i] ) {
      000277 78 2C            [12]  429 	mov	r0,#_i
      000279 06               [12]  430 	inc	@r0
      00027A 80 CA            [24]  431 	sjmp	00108$
      00027C                        432 00106$:
                                    433 ;	preemptive.c:45: ID = temp2;
      00027C 78 2B            [12]  434 	mov	r0,#_temp2
      00027E 79 28            [12]  435 	mov	r1,#_ID
      000280 E6               [12]  436 	mov	a,@r0
      000281 F7               [12]  437 	mov	@r1,a
                                    438 ;	preemptive.c:46: RESTORESTATE;
      000282 78 28            [12]  439 	mov	r0,#_ID
      000284 E6               [12]  440 	mov	a,@r0
      000285 24 20            [12]  441 	add	a,#_ssp
      000287 F9               [12]  442 	mov	r1,a
      000288 87 81            [24]  443 	mov	_SP,@r1
      00028A D0 D0            [24]  444 	pop PSW 
      00028C D0 83            [24]  445 	pop DPH 
      00028E D0 82            [24]  446 	pop DPL 
      000290 D0 F0            [24]  447 	pop B 
      000292 D0 E0            [24]  448 	pop ACC 
                                    449 ;	preemptive.c:49: __endasm;
      000294 32               [24]  450 	reti
      000295 22               [24]  451 	ret
                                    452 ;------------------------------------------------------------
                                    453 ;Allocation info for local variables in function 'myTimer0Handler'
                                    454 ;------------------------------------------------------------
                                    455 ;	preemptive.c:52: void myTimer0Handler(void){
                                    456 ;	-----------------------------------------
                                    457 ;	 function myTimer0Handler
                                    458 ;	-----------------------------------------
      000296                        459 _myTimer0Handler:
                                    460 ;	preemptive.c:53: SAVESTATE;
      000296 C0 E0            [24]  461 	push ACC 
      000298 C0 F0            [24]  462 	push B 
      00029A C0 82            [24]  463 	push DPL 
      00029C C0 83            [24]  464 	push DPH 
      00029E C0 D0            [24]  465 	push PSW 
      0002A0 C2 D4            [12]  466 	clr RS1 
      0002A2 C2 D3            [12]  467 	clr RS0 
      0002A4 78 28            [12]  468 	mov	r0,#_ID
      0002A6 E6               [12]  469 	mov	a,@r0
      0002A7 24 20            [12]  470 	add	a,#_ssp
      0002A9 F8               [12]  471 	mov	r0,a
      0002AA A6 81            [24]  472 	mov	@r0,_SP
                                    473 ;	preemptive.c:54: counter = (counter==4) ? 0 : counter+1;
      0002AC 78 3E            [12]  474 	mov	r0,#_counter
      0002AE B6 04 04         [24]  475 	cjne	@r0,#0x04,00118$
      0002B1 7F 00            [12]  476 	mov	r7,#0x00
      0002B3 80 05            [24]  477 	sjmp	00119$
      0002B5                        478 00118$:
      0002B5 78 3E            [12]  479 	mov	r0,#_counter
      0002B7 E6               [12]  480 	mov	a,@r0
      0002B8 04               [12]  481 	inc	a
      0002B9 FF               [12]  482 	mov	r7,a
      0002BA                        483 00119$:
      0002BA 78 3E            [12]  484 	mov	r0,#_counter
      0002BC A6 07            [24]  485 	mov	@r0,ar7
                                    486 ;	preemptive.c:55: if(!counter) time++;
      0002BE 78 3E            [12]  487 	mov	r0,#_counter
      0002C0 E6               [12]  488 	mov	a,@r0
      0002C1 70 03            [24]  489 	jnz	00102$
      0002C3 78 3F            [12]  490 	mov	r0,#_time
      0002C5 06               [12]  491 	inc	@r0
      0002C6                        492 00102$:
                                    493 ;	preemptive.c:57: for(i=1;i<MAXTHREADS;i++){
      0002C6 78 2C            [12]  494 	mov	r0,#_i
      0002C8 76 01            [12]  495 	mov	@r0,#0x01
      0002CA                        496 00114$:
      0002CA 78 2C            [12]  497 	mov	r0,#_i
      0002CC C3               [12]  498 	clr	c
      0002CD E6               [12]  499 	mov	a,@r0
      0002CE 64 80            [12]  500 	xrl	a,#0x80
      0002D0 94 84            [12]  501 	subb	a,#0x84
      0002D2 50 5A            [24]  502 	jnc	00112$
                                    503 ;	preemptive.c:58: if( bitmap[i]>0 ){
      0002D4 78 2C            [12]  504 	mov	r0,#_i
      0002D6 E6               [12]  505 	mov	a,@r0
      0002D7 24 24            [12]  506 	add	a,#_bitmap
      0002D9 F9               [12]  507 	mov	r1,a
      0002DA 87 07            [24]  508 	mov	ar7,@r1
      0002DC C3               [12]  509 	clr	c
      0002DD 74 80            [12]  510 	mov	a,#(0x00 ^ 0x80)
      0002DF 8F F0            [24]  511 	mov	b,r7
      0002E1 63 F0 80         [24]  512 	xrl	b,#0x80
      0002E4 95 F0            [12]  513 	subb	a,b
      0002E6 50 20            [24]  514 	jnc	00110$
                                    515 ;	preemptive.c:59: if( i==ID ) bitmap[i]=1;
      0002E8 78 2C            [12]  516 	mov	r0,#_i
      0002EA 79 28            [12]  517 	mov	r1,#_ID
      0002EC 86 F0            [24]  518 	mov	b,@r0
      0002EE E7               [12]  519 	mov	a,@r1
      0002EF B5 F0 0A         [24]  520 	cjne	a,b,00104$
      0002F2 78 2C            [12]  521 	mov	r0,#_i
      0002F4 E6               [12]  522 	mov	a,@r0
      0002F5 24 24            [12]  523 	add	a,#_bitmap
      0002F7 F8               [12]  524 	mov	r0,a
      0002F8 76 01            [12]  525 	mov	@r0,#0x01
      0002FA 80 2D            [24]  526 	sjmp	00115$
      0002FC                        527 00104$:
                                    528 ;	preemptive.c:60: else bitmap[i]++;
      0002FC 78 2C            [12]  529 	mov	r0,#_i
      0002FE E6               [12]  530 	mov	a,@r0
      0002FF 24 24            [12]  531 	add	a,#_bitmap
      000301 F9               [12]  532 	mov	r1,a
      000302 E7               [12]  533 	mov	a,@r1
      000303 FF               [12]  534 	mov	r7,a
      000304 04               [12]  535 	inc	a
      000305 F7               [12]  536 	mov	@r1,a
      000306 80 21            [24]  537 	sjmp	00115$
      000308                        538 00110$:
                                    539 ;	preemptive.c:62: else if( bitmap[i]==-2 && D[i]==time ) bitmap[i] = 9;
      000308 78 2C            [12]  540 	mov	r0,#_i
      00030A E6               [12]  541 	mov	a,@r0
      00030B 24 24            [12]  542 	add	a,#_bitmap
      00030D F9               [12]  543 	mov	r1,a
      00030E 87 07            [24]  544 	mov	ar7,@r1
      000310 BF FE 16         [24]  545 	cjne	r7,#0xFE,00115$
      000313 78 2C            [12]  546 	mov	r0,#_i
      000315 E6               [12]  547 	mov	a,@r0
      000316 24 2C            [12]  548 	add	a,#_D
      000318 F9               [12]  549 	mov	r1,a
      000319 87 07            [24]  550 	mov	ar7,@r1
      00031B 78 3F            [12]  551 	mov	r0,#_time
      00031D E6               [12]  552 	mov	a,@r0
      00031E B5 07 08         [24]  553 	cjne	a,ar7,00115$
      000321 78 2C            [12]  554 	mov	r0,#_i
      000323 E6               [12]  555 	mov	a,@r0
      000324 24 24            [12]  556 	add	a,#_bitmap
      000326 F8               [12]  557 	mov	r0,a
      000327 76 09            [12]  558 	mov	@r0,#0x09
      000329                        559 00115$:
                                    560 ;	preemptive.c:57: for(i=1;i<MAXTHREADS;i++){
      000329 78 2C            [12]  561 	mov	r0,#_i
      00032B 06               [12]  562 	inc	@r0
      00032C 80 9C            [24]  563 	sjmp	00114$
      00032E                        564 00112$:
                                    565 ;	preemptive.c:64: ID = 0;//manager_ID
      00032E 78 28            [12]  566 	mov	r0,#_ID
      000330 76 00            [12]  567 	mov	@r0,#0x00
                                    568 ;	preemptive.c:65: RESTORESTATE;
      000332 78 28            [12]  569 	mov	r0,#_ID
      000334 E6               [12]  570 	mov	a,@r0
      000335 24 20            [12]  571 	add	a,#_ssp
      000337 F9               [12]  572 	mov	r1,a
      000338 87 81            [24]  573 	mov	_SP,@r1
      00033A D0 D0            [24]  574 	pop PSW 
      00033C D0 83            [24]  575 	pop DPH 
      00033E D0 82            [24]  576 	pop DPL 
      000340 D0 F0            [24]  577 	pop B 
      000342 D0 E0            [24]  578 	pop ACC 
      000344 22               [24]  579 	ret
                                    580 ;------------------------------------------------------------
                                    581 ;Allocation info for local variables in function 'Bootstrap'
                                    582 ;------------------------------------------------------------
                                    583 ;	preemptive.c:68: void Bootstrap(void) {
                                    584 ;	-----------------------------------------
                                    585 ;	 function Bootstrap
                                    586 ;	-----------------------------------------
      000345                        587 _Bootstrap:
                                    588 ;	preemptive.c:69: bitmap[0] = bitmap[1] = bitmap[2] = bitmap[3] = 0;
      000345 78 27            [12]  589 	mov	r0,#(_bitmap + 0x0003)
      000347 76 00            [12]  590 	mov	@r0,#0x00
      000349 78 26            [12]  591 	mov	r0,#(_bitmap + 0x0002)
      00034B 76 00            [12]  592 	mov	@r0,#0x00
      00034D 78 25            [12]  593 	mov	r0,#(_bitmap + 0x0001)
      00034F 76 00            [12]  594 	mov	@r0,#0x00
      000351 78 24            [12]  595 	mov	r0,#_bitmap
      000353 76 00            [12]  596 	mov	@r0,#0x00
                                    597 ;	preemptive.c:71: TMOD = 0;
      000355 75 89 00         [24]  598 	mov	_TMOD,#0x00
                                    599 ;	preemptive.c:72: IE = 0x82;
      000358 75 A8 82         [24]  600 	mov	_IE,#0x82
                                    601 ;	preemptive.c:73: TR0 = 1;
      00035B D2 8C            [12]  602 	setb	_TR0
                                    603 ;	preemptive.c:75: SemaphoreCreate(thread, 4);
      00035D 78 3B            [12]  604 	mov	r0,#_thread
      00035F 76 04            [12]  605 	mov	@r0,#0x04
                                    606 ;	preemptive.c:78: __endasm;
      000361 75 3D 7C         [24]  607 	mov _th_tail,#0x7C
                                    608 ;	preemptive.c:80: ThreadCreate(thread_manager);
      000364 90 02 35         [24]  609 	mov	dptr,#_thread_manager
      000367 12 03 88         [24]  610 	lcall	_ThreadCreate
                                    611 ;	preemptive.c:81: ID = ThreadCreate(main);
      00036A 90 01 DE         [24]  612 	mov	dptr,#_main
      00036D 12 03 88         [24]  613 	lcall	_ThreadCreate
      000370 E5 82            [12]  614 	mov	a,dpl
      000372 78 28            [12]  615 	mov	r0,#_ID
      000374 F6               [12]  616 	mov	@r0,a
                                    617 ;	preemptive.c:82: RESTORESTATE;
      000375 78 28            [12]  618 	mov	r0,#_ID
      000377 E6               [12]  619 	mov	a,@r0
      000378 24 20            [12]  620 	add	a,#_ssp
      00037A F9               [12]  621 	mov	r1,a
      00037B 87 81            [24]  622 	mov	_SP,@r1
      00037D D0 D0            [24]  623 	pop PSW 
      00037F D0 83            [24]  624 	pop DPH 
      000381 D0 82            [24]  625 	pop DPL 
      000383 D0 F0            [24]  626 	pop B 
      000385 D0 E0            [24]  627 	pop ACC 
      000387 22               [24]  628 	ret
                                    629 ;------------------------------------------------------------
                                    630 ;Allocation info for local variables in function 'ThreadCreate'
                                    631 ;------------------------------------------------------------
                                    632 ;fp                        Allocated to registers 
                                    633 ;------------------------------------------------------------
                                    634 ;	preemptive.c:85: ThreadID ThreadCreate(FunctionPtr fp) {
                                    635 ;	-----------------------------------------
                                    636 ;	 function ThreadCreate
                                    637 ;	-----------------------------------------
      000388                        638 _ThreadCreate:
                                    639 ;	preemptive.c:86: SemaphoreWait(thread,th_tail);
      000388 C2 AF            [12]  640 	clr	_EA
      00038A 78 3B            [12]  641 	mov	r0,#_thread
      00038C 16               [12]  642 	dec	@r0
      00038D 78 3B            [12]  643 	mov	r0,#_thread
      00038F E6               [12]  644 	mov	a,@r0
      000390 30 E7 13         [24]  645 	jnb	acc.7,00102$
      000393 05 3D            [12]  646 	inc	_th_tail
      000395 A9 3D            [24]  647 	mov	r1,_th_tail
      000397 78 28            [12]  648 	mov	r0,#_ID
      000399 E6               [12]  649 	mov	a,@r0
      00039A F7               [12]  650 	mov	@r1,a
      00039B 78 28            [12]  651 	mov	r0,#_ID
      00039D E6               [12]  652 	mov	a,@r0
      00039E 24 24            [12]  653 	add	a,#_bitmap
      0003A0 F8               [12]  654 	mov	r0,a
      0003A1 76 FF            [12]  655 	mov	@r0,#0xFF
      0003A3 12 04 1F         [24]  656 	lcall	_ThreadYield
      0003A6                        657 00102$:
      0003A6 D2 AF            [12]  658 	setb	_EA
                                    659 ;	preemptive.c:87: EA = 0;
      0003A8 C2 AF            [12]  660 	clr	_EA
                                    661 ;	preemptive.c:88: for(i=0;i<MAXTHREADS;i++) if(!bitmap[i]) break;
      0003AA 78 2C            [12]  662 	mov	r0,#_i
      0003AC 76 00            [12]  663 	mov	@r0,#0x00
      0003AE                        664 00109$:
      0003AE 78 2C            [12]  665 	mov	r0,#_i
      0003B0 C3               [12]  666 	clr	c
      0003B1 E6               [12]  667 	mov	a,@r0
      0003B2 64 80            [12]  668 	xrl	a,#0x80
      0003B4 94 84            [12]  669 	subb	a,#0x84
      0003B6 50 0E            [24]  670 	jnc	00105$
      0003B8 78 2C            [12]  671 	mov	r0,#_i
      0003BA E6               [12]  672 	mov	a,@r0
      0003BB 24 24            [12]  673 	add	a,#_bitmap
      0003BD F9               [12]  674 	mov	r1,a
      0003BE E7               [12]  675 	mov	a,@r1
      0003BF 60 05            [24]  676 	jz	00105$
      0003C1 78 2C            [12]  677 	mov	r0,#_i
      0003C3 06               [12]  678 	inc	@r0
      0003C4 80 E8            [24]  679 	sjmp	00109$
      0003C6                        680 00105$:
                                    681 ;	preemptive.c:89: if(i==MAXTHREADS) return -1;
      0003C6 78 2C            [12]  682 	mov	r0,#_i
      0003C8 B6 04 04         [24]  683 	cjne	@r0,#0x04,00107$
      0003CB 75 82 FF         [24]  684 	mov	dpl,#0xFF
      0003CE 22               [24]  685 	ret
      0003CF                        686 00107$:
                                    687 ;	preemptive.c:91: bitmap[i] = 1;
      0003CF 78 2C            [12]  688 	mov	r0,#_i
      0003D1 E6               [12]  689 	mov	a,@r0
      0003D2 24 24            [12]  690 	add	a,#_bitmap
      0003D4 F8               [12]  691 	mov	r0,a
      0003D5 76 01            [12]  692 	mov	@r0,#0x01
                                    693 ;	preemptive.c:92: temp1 = SP;
      0003D7 78 2A            [12]  694 	mov	r0,#_temp1
      0003D9 A6 81            [24]  695 	mov	@r0,_SP
                                    696 ;	preemptive.c:93: SP = 0x3F + i*0x10;
      0003DB 78 2C            [12]  697 	mov	r0,#_i
      0003DD E6               [12]  698 	mov	a,@r0
      0003DE C4               [12]  699 	swap	a
      0003DF 54 F0            [12]  700 	anl	a,#0xF0
      0003E1 FF               [12]  701 	mov	r7,a
      0003E2 24 3F            [12]  702 	add	a,#0x3F
      0003E4 F5 81            [12]  703 	mov	_SP,a
                                    704 ;	preemptive.c:108: __endasm;
      0003E6 E5 82            [12]  705 	mov a,DPL
      0003E8 85 83 F0         [24]  706 	mov b,DPH
      0003EB 90 04 6E         [24]  707 	mov dptr,#_ThreadExit
      0003EE C0 82            [24]  708 	push DPL
      0003F0 C0 83            [24]  709 	push DPH
      0003F2 C0 E0            [24]  710 	push a
      0003F4 C0 F0            [24]  711 	push b
      0003F6 74 00            [12]  712 	mov a,#0x00
      0003F8 C0 E0            [24]  713 	push a
      0003FA C0 E0            [24]  714 	push a
      0003FC C0 E0            [24]  715 	push a
      0003FE C0 E0            [24]  716 	push a
                                    717 ;	preemptive.c:109: temp2 = i<<3;
      000400 78 2C            [12]  718 	mov	r0,#_i
      000402 79 2B            [12]  719 	mov	r1,#_temp2
      000404 E6               [12]  720 	mov	a,@r0
      000405 C4               [12]  721 	swap	a
      000406 03               [12]  722 	rr	a
      000407 54 F8            [12]  723 	anl	a,#0xF8
      000409 F7               [12]  724 	mov	@r1,a
                                    725 ;	preemptive.c:112: __endasm;
      00040A C0 2B            [24]  726 	push _temp2
                                    727 ;	preemptive.c:114: ssp[i] = SP;
      00040C 78 2C            [12]  728 	mov	r0,#_i
      00040E E6               [12]  729 	mov	a,@r0
      00040F 24 20            [12]  730 	add	a,#_ssp
      000411 F8               [12]  731 	mov	r0,a
      000412 A6 81            [24]  732 	mov	@r0,_SP
                                    733 ;	preemptive.c:115: SP = temp1;
      000414 78 2A            [12]  734 	mov	r0,#_temp1
      000416 86 81            [24]  735 	mov	_SP,@r0
                                    736 ;	preemptive.c:116: EA = 1;
      000418 D2 AF            [12]  737 	setb	_EA
                                    738 ;	preemptive.c:117: return i;
      00041A 78 2C            [12]  739 	mov	r0,#_i
      00041C 86 82            [24]  740 	mov	dpl,@r0
      00041E 22               [24]  741 	ret
                                    742 ;------------------------------------------------------------
                                    743 ;Allocation info for local variables in function 'ThreadYield'
                                    744 ;------------------------------------------------------------
                                    745 ;	preemptive.c:120: void ThreadYield(void) {
                                    746 ;	-----------------------------------------
                                    747 ;	 function ThreadYield
                                    748 ;	-----------------------------------------
      00041F                        749 _ThreadYield:
                                    750 ;	preemptive.c:121: EA = 0;
      00041F C2 AF            [12]  751 	clr	_EA
                                    752 ;	preemptive.c:122: SAVESTATE;
      000421 C0 E0            [24]  753 	push ACC 
      000423 C0 F0            [24]  754 	push B 
      000425 C0 82            [24]  755 	push DPL 
      000427 C0 83            [24]  756 	push DPH 
      000429 C0 D0            [24]  757 	push PSW 
      00042B C2 D4            [12]  758 	clr RS1 
      00042D C2 D3            [12]  759 	clr RS0 
      00042F 78 28            [12]  760 	mov	r0,#_ID
      000431 E6               [12]  761 	mov	a,@r0
      000432 24 20            [12]  762 	add	a,#_ssp
      000434 F8               [12]  763 	mov	r0,a
      000435 A6 81            [24]  764 	mov	@r0,_SP
                                    765 ;	preemptive.c:123: do {
      000437                        766 00106$:
                                    767 ;	preemptive.c:124: if(ID==MAXTHREADS-1) ID = 1;
      000437 78 28            [12]  768 	mov	r0,#_ID
      000439 B6 03 06         [24]  769 	cjne	@r0,#0x03,00102$
      00043C 78 28            [12]  770 	mov	r0,#_ID
      00043E 76 01            [12]  771 	mov	@r0,#0x01
      000440 80 03            [24]  772 	sjmp	00103$
      000442                        773 00102$:
                                    774 ;	preemptive.c:125: else ID++;
      000442 78 28            [12]  775 	mov	r0,#_ID
      000444 06               [12]  776 	inc	@r0
      000445                        777 00103$:
                                    778 ;	preemptive.c:126: if(bitmap[ID]>0) break;
      000445 78 28            [12]  779 	mov	r0,#_ID
      000447 E6               [12]  780 	mov	a,@r0
      000448 24 24            [12]  781 	add	a,#_bitmap
      00044A F9               [12]  782 	mov	r1,a
      00044B 87 07            [24]  783 	mov	ar7,@r1
      00044D C3               [12]  784 	clr	c
      00044E 74 80            [12]  785 	mov	a,#(0x00 ^ 0x80)
      000450 8F F0            [24]  786 	mov	b,r7
      000452 63 F0 80         [24]  787 	xrl	b,#0x80
      000455 95 F0            [12]  788 	subb	a,b
      000457 50 DE            [24]  789 	jnc	00106$
                                    790 ;	preemptive.c:128: RESTORESTATE;
      000459 78 28            [12]  791 	mov	r0,#_ID
      00045B E6               [12]  792 	mov	a,@r0
      00045C 24 20            [12]  793 	add	a,#_ssp
      00045E F9               [12]  794 	mov	r1,a
      00045F 87 81            [24]  795 	mov	_SP,@r1
      000461 D0 D0            [24]  796 	pop PSW 
      000463 D0 83            [24]  797 	pop DPH 
      000465 D0 82            [24]  798 	pop DPL 
      000467 D0 F0            [24]  799 	pop B 
      000469 D0 E0            [24]  800 	pop ACC 
                                    801 ;	preemptive.c:129: EA = 1;
      00046B D2 AF            [12]  802 	setb	_EA
      00046D 22               [24]  803 	ret
                                    804 ;------------------------------------------------------------
                                    805 ;Allocation info for local variables in function 'ThreadExit'
                                    806 ;------------------------------------------------------------
                                    807 ;	preemptive.c:132: void ThreadExit(void) {
                                    808 ;	-----------------------------------------
                                    809 ;	 function ThreadExit
                                    810 ;	-----------------------------------------
      00046E                        811 _ThreadExit:
                                    812 ;	preemptive.c:133: SemaphoreSignal(thread,th_tail);
      00046E C2 AF            [12]  813 	clr	_EA
      000470 78 3B            [12]  814 	mov	r0,#_thread
      000472 06               [12]  815 	inc	@r0
      000473 78 3B            [12]  816 	mov	r0,#_thread
      000475 C3               [12]  817 	clr	c
      000476 74 80            [12]  818 	mov	a,#(0x00 ^ 0x80)
      000478 86 F0            [24]  819 	mov	b,@r0
      00047A 63 F0 80         [24]  820 	xrl	b,#0x80
      00047D 95 F0            [12]  821 	subb	a,b
      00047F 40 0B            [24]  822 	jc	00102$
      000481 A9 3D            [24]  823 	mov	r1,_th_tail
      000483 E7               [12]  824 	mov	a,@r1
      000484 FF               [12]  825 	mov	r7,a
      000485 24 24            [12]  826 	add	a,#_bitmap
      000487 F8               [12]  827 	mov	r0,a
      000488 76 01            [12]  828 	mov	@r0,#0x01
      00048A 15 3D            [12]  829 	dec	_th_tail
      00048C                        830 00102$:
      00048C D2 AF            [12]  831 	setb	_EA
                                    832 ;	preemptive.c:134: EA = 0;
      00048E C2 AF            [12]  833 	clr	_EA
                                    834 ;	preemptive.c:135: bitmap[ID] = 0;
      000490 78 28            [12]  835 	mov	r0,#_ID
      000492 E6               [12]  836 	mov	a,@r0
      000493 24 24            [12]  837 	add	a,#_bitmap
      000495 F8               [12]  838 	mov	r0,a
      000496 76 00            [12]  839 	mov	@r0,#0x00
                                    840 ;	preemptive.c:136: do {
      000498                        841 00108$:
                                    842 ;	preemptive.c:137: if(ID==MAXTHREADS-1) ID = 1;
      000498 78 28            [12]  843 	mov	r0,#_ID
      00049A B6 03 06         [24]  844 	cjne	@r0,#0x03,00104$
      00049D 78 28            [12]  845 	mov	r0,#_ID
      00049F 76 01            [12]  846 	mov	@r0,#0x01
      0004A1 80 03            [24]  847 	sjmp	00105$
      0004A3                        848 00104$:
                                    849 ;	preemptive.c:138: else ID++;
      0004A3 78 28            [12]  850 	mov	r0,#_ID
      0004A5 06               [12]  851 	inc	@r0
      0004A6                        852 00105$:
                                    853 ;	preemptive.c:139: if(bitmap[ID]>0) break;
      0004A6 78 28            [12]  854 	mov	r0,#_ID
      0004A8 E6               [12]  855 	mov	a,@r0
      0004A9 24 24            [12]  856 	add	a,#_bitmap
      0004AB F9               [12]  857 	mov	r1,a
      0004AC 87 07            [24]  858 	mov	ar7,@r1
      0004AE C3               [12]  859 	clr	c
      0004AF 74 80            [12]  860 	mov	a,#(0x00 ^ 0x80)
      0004B1 8F F0            [24]  861 	mov	b,r7
      0004B3 63 F0 80         [24]  862 	xrl	b,#0x80
      0004B6 95 F0            [12]  863 	subb	a,b
      0004B8 50 DE            [24]  864 	jnc	00108$
                                    865 ;	preemptive.c:141: RESTORESTATE;
      0004BA 78 28            [12]  866 	mov	r0,#_ID
      0004BC E6               [12]  867 	mov	a,@r0
      0004BD 24 20            [12]  868 	add	a,#_ssp
      0004BF F9               [12]  869 	mov	r1,a
      0004C0 87 81            [24]  870 	mov	_SP,@r1
      0004C2 D0 D0            [24]  871 	pop PSW 
      0004C4 D0 83            [24]  872 	pop DPH 
      0004C6 D0 82            [24]  873 	pop DPL 
      0004C8 D0 F0            [24]  874 	pop B 
      0004CA D0 E0            [24]  875 	pop ACC 
                                    876 ;	preemptive.c:142: EA = 1;
      0004CC D2 AF            [12]  877 	setb	_EA
      0004CE 22               [24]  878 	ret
                                    879 	.area CSEG    (CODE)
                                    880 	.area CONST   (CODE)
                                    881 	.area XINIT   (CODE)
                                    882 	.area CABS    (ABS,CODE)
