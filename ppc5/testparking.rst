                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Mon Jan 14 18:58:00 2019
                                      5 ;--------------------------------------------------------
                                      6 	.module testparking
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _timer0_ISR
                                     13 	.globl __mcs51_genXRAMCLEAR
                                     14 	.globl __mcs51_genXINIT
                                     15 	.globl __mcs51_genRAMCLEAR
                                     16 	.globl __sdcc_gsinit_startup
                                     17 	.globl _main
                                     18 	.globl _Printer
                                     19 	.globl _Car2
                                     20 	.globl _Car1
                                     21 	.globl _ThreadYield
                                     22 	.globl _ThreadCreate
                                     23 	.globl _delay
                                     24 	.globl _now
                                     25 	.globl _CY
                                     26 	.globl _AC
                                     27 	.globl _F0
                                     28 	.globl _RS1
                                     29 	.globl _RS0
                                     30 	.globl _OV
                                     31 	.globl _F1
                                     32 	.globl _P
                                     33 	.globl _PS
                                     34 	.globl _PT1
                                     35 	.globl _PX1
                                     36 	.globl _PT0
                                     37 	.globl _PX0
                                     38 	.globl _RD
                                     39 	.globl _WR
                                     40 	.globl _T1
                                     41 	.globl _T0
                                     42 	.globl _INT1
                                     43 	.globl _INT0
                                     44 	.globl _TXD
                                     45 	.globl _RXD
                                     46 	.globl _P3_7
                                     47 	.globl _P3_6
                                     48 	.globl _P3_5
                                     49 	.globl _P3_4
                                     50 	.globl _P3_3
                                     51 	.globl _P3_2
                                     52 	.globl _P3_1
                                     53 	.globl _P3_0
                                     54 	.globl _EA
                                     55 	.globl _ES
                                     56 	.globl _ET1
                                     57 	.globl _EX1
                                     58 	.globl _ET0
                                     59 	.globl _EX0
                                     60 	.globl _P2_7
                                     61 	.globl _P2_6
                                     62 	.globl _P2_5
                                     63 	.globl _P2_4
                                     64 	.globl _P2_3
                                     65 	.globl _P2_2
                                     66 	.globl _P2_1
                                     67 	.globl _P2_0
                                     68 	.globl _SM0
                                     69 	.globl _SM1
                                     70 	.globl _SM2
                                     71 	.globl _REN
                                     72 	.globl _TB8
                                     73 	.globl _RB8
                                     74 	.globl _TI
                                     75 	.globl _RI
                                     76 	.globl _P1_7
                                     77 	.globl _P1_6
                                     78 	.globl _P1_5
                                     79 	.globl _P1_4
                                     80 	.globl _P1_3
                                     81 	.globl _P1_2
                                     82 	.globl _P1_1
                                     83 	.globl _P1_0
                                     84 	.globl _TF1
                                     85 	.globl _TR1
                                     86 	.globl _TF0
                                     87 	.globl _TR0
                                     88 	.globl _IE1
                                     89 	.globl _IT1
                                     90 	.globl _IE0
                                     91 	.globl _IT0
                                     92 	.globl _P0_7
                                     93 	.globl _P0_6
                                     94 	.globl _P0_5
                                     95 	.globl _P0_4
                                     96 	.globl _P0_3
                                     97 	.globl _P0_2
                                     98 	.globl _P0_1
                                     99 	.globl _P0_0
                                    100 	.globl _B
                                    101 	.globl _ACC
                                    102 	.globl _PSW
                                    103 	.globl _IP
                                    104 	.globl _P3
                                    105 	.globl _IE
                                    106 	.globl _P2
                                    107 	.globl _SBUF
                                    108 	.globl _SCON
                                    109 	.globl _P1
                                    110 	.globl _TH1
                                    111 	.globl _TH0
                                    112 	.globl _TL1
                                    113 	.globl _TL0
                                    114 	.globl _TMOD
                                    115 	.globl _TCON
                                    116 	.globl _PCON
                                    117 	.globl _DPH
                                    118 	.globl _DPL
                                    119 	.globl _SP
                                    120 	.globl _P0
                                    121 	.globl _plot
                                    122 	.globl _thread
                                    123 	.globl _mutex
                                    124 	.globl _log
                                    125 	.globl _counter
                                    126 	.globl _time
                                    127 	.globl _D
                                    128 	.globl _i
                                    129 	.globl _temp2
                                    130 	.globl _temp1
                                    131 	.globl _car_temp
                                    132 	.globl _ID
                                    133 	.globl _bitmap
                                    134 	.globl _ssp
                                    135 	.globl _th_tail
                                    136 	.globl _m_tail
                                    137 ;--------------------------------------------------------
                                    138 ; special function registers
                                    139 ;--------------------------------------------------------
                                    140 	.area RSEG    (ABS,DATA)
      000000                        141 	.org 0x0000
                           000080   142 _P0	=	0x0080
                           000081   143 _SP	=	0x0081
                           000082   144 _DPL	=	0x0082
                           000083   145 _DPH	=	0x0083
                           000087   146 _PCON	=	0x0087
                           000088   147 _TCON	=	0x0088
                           000089   148 _TMOD	=	0x0089
                           00008A   149 _TL0	=	0x008a
                           00008B   150 _TL1	=	0x008b
                           00008C   151 _TH0	=	0x008c
                           00008D   152 _TH1	=	0x008d
                           000090   153 _P1	=	0x0090
                           000098   154 _SCON	=	0x0098
                           000099   155 _SBUF	=	0x0099
                           0000A0   156 _P2	=	0x00a0
                           0000A8   157 _IE	=	0x00a8
                           0000B0   158 _P3	=	0x00b0
                           0000B8   159 _IP	=	0x00b8
                           0000D0   160 _PSW	=	0x00d0
                           0000E0   161 _ACC	=	0x00e0
                           0000F0   162 _B	=	0x00f0
                                    163 ;--------------------------------------------------------
                                    164 ; special function bits
                                    165 ;--------------------------------------------------------
                                    166 	.area RSEG    (ABS,DATA)
      000000                        167 	.org 0x0000
                           000080   168 _P0_0	=	0x0080
                           000081   169 _P0_1	=	0x0081
                           000082   170 _P0_2	=	0x0082
                           000083   171 _P0_3	=	0x0083
                           000084   172 _P0_4	=	0x0084
                           000085   173 _P0_5	=	0x0085
                           000086   174 _P0_6	=	0x0086
                           000087   175 _P0_7	=	0x0087
                           000088   176 _IT0	=	0x0088
                           000089   177 _IE0	=	0x0089
                           00008A   178 _IT1	=	0x008a
                           00008B   179 _IE1	=	0x008b
                           00008C   180 _TR0	=	0x008c
                           00008D   181 _TF0	=	0x008d
                           00008E   182 _TR1	=	0x008e
                           00008F   183 _TF1	=	0x008f
                           000090   184 _P1_0	=	0x0090
                           000091   185 _P1_1	=	0x0091
                           000092   186 _P1_2	=	0x0092
                           000093   187 _P1_3	=	0x0093
                           000094   188 _P1_4	=	0x0094
                           000095   189 _P1_5	=	0x0095
                           000096   190 _P1_6	=	0x0096
                           000097   191 _P1_7	=	0x0097
                           000098   192 _RI	=	0x0098
                           000099   193 _TI	=	0x0099
                           00009A   194 _RB8	=	0x009a
                           00009B   195 _TB8	=	0x009b
                           00009C   196 _REN	=	0x009c
                           00009D   197 _SM2	=	0x009d
                           00009E   198 _SM1	=	0x009e
                           00009F   199 _SM0	=	0x009f
                           0000A0   200 _P2_0	=	0x00a0
                           0000A1   201 _P2_1	=	0x00a1
                           0000A2   202 _P2_2	=	0x00a2
                           0000A3   203 _P2_3	=	0x00a3
                           0000A4   204 _P2_4	=	0x00a4
                           0000A5   205 _P2_5	=	0x00a5
                           0000A6   206 _P2_6	=	0x00a6
                           0000A7   207 _P2_7	=	0x00a7
                           0000A8   208 _EX0	=	0x00a8
                           0000A9   209 _ET0	=	0x00a9
                           0000AA   210 _EX1	=	0x00aa
                           0000AB   211 _ET1	=	0x00ab
                           0000AC   212 _ES	=	0x00ac
                           0000AF   213 _EA	=	0x00af
                           0000B0   214 _P3_0	=	0x00b0
                           0000B1   215 _P3_1	=	0x00b1
                           0000B2   216 _P3_2	=	0x00b2
                           0000B3   217 _P3_3	=	0x00b3
                           0000B4   218 _P3_4	=	0x00b4
                           0000B5   219 _P3_5	=	0x00b5
                           0000B6   220 _P3_6	=	0x00b6
                           0000B7   221 _P3_7	=	0x00b7
                           0000B0   222 _RXD	=	0x00b0
                           0000B1   223 _TXD	=	0x00b1
                           0000B2   224 _INT0	=	0x00b2
                           0000B3   225 _INT1	=	0x00b3
                           0000B4   226 _T0	=	0x00b4
                           0000B5   227 _T1	=	0x00b5
                           0000B6   228 _WR	=	0x00b6
                           0000B7   229 _RD	=	0x00b7
                           0000B8   230 _PX0	=	0x00b8
                           0000B9   231 _PT0	=	0x00b9
                           0000BA   232 _PX1	=	0x00ba
                           0000BB   233 _PT1	=	0x00bb
                           0000BC   234 _PS	=	0x00bc
                           0000D0   235 _P	=	0x00d0
                           0000D1   236 _F1	=	0x00d1
                           0000D2   237 _OV	=	0x00d2
                           0000D3   238 _RS0	=	0x00d3
                           0000D4   239 _RS1	=	0x00d4
                           0000D5   240 _F0	=	0x00d5
                           0000D6   241 _AC	=	0x00d6
                           0000D7   242 _CY	=	0x00d7
                                    243 ;--------------------------------------------------------
                                    244 ; overlayable register banks
                                    245 ;--------------------------------------------------------
                                    246 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        247 	.ds 8
                                    248 ;--------------------------------------------------------
                                    249 ; internal ram data
                                    250 ;--------------------------------------------------------
                                    251 	.area DSEG    (DATA)
                           00003C   252 _m_tail	=	0x003c
                           00003D   253 _th_tail	=	0x003d
                                    254 ;--------------------------------------------------------
                                    255 ; overlayable items in internal ram 
                                    256 ;--------------------------------------------------------
                                    257 ;--------------------------------------------------------
                                    258 ; Stack segment in internal ram 
                                    259 ;--------------------------------------------------------
                                    260 	.area	SSEG
      000008                        261 __start__stack:
      000008                        262 	.ds	1
                                    263 
                                    264 ;--------------------------------------------------------
                                    265 ; indirectly addressable internal ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area ISEG    (DATA)
                           000020   268 _ssp	=	0x0020
                           000024   269 _bitmap	=	0x0024
                           000028   270 _ID	=	0x0028
                           000029   271 _car_temp	=	0x0029
                           00002A   272 _temp1	=	0x002a
                           00002B   273 _temp2	=	0x002b
                           00002C   274 _i	=	0x002c
                           00002C   275 _D	=	0x002c
                           00003F   276 _time	=	0x003f
                           00003E   277 _counter	=	0x003e
                           000030   278 _log	=	0x0030
                           00003A   279 _mutex	=	0x003a
                           00003B   280 _thread	=	0x003b
                           00004E   281 _plot	=	0x004e
                                    282 ;--------------------------------------------------------
                                    283 ; absolute internal ram data
                                    284 ;--------------------------------------------------------
                                    285 	.area IABS    (ABS,DATA)
                                    286 	.area IABS    (ABS,DATA)
                                    287 ;--------------------------------------------------------
                                    288 ; bit data
                                    289 ;--------------------------------------------------------
                                    290 	.area BSEG    (BIT)
                                    291 ;--------------------------------------------------------
                                    292 ; paged external ram data
                                    293 ;--------------------------------------------------------
                                    294 	.area PSEG    (PAG,XDATA)
                                    295 ;--------------------------------------------------------
                                    296 ; external ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area XSEG    (XDATA)
                                    299 ;--------------------------------------------------------
                                    300 ; absolute external ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area XABS    (ABS,XDATA)
                                    303 ;--------------------------------------------------------
                                    304 ; external initialized ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area XISEG   (XDATA)
                                    307 	.area HOME    (CODE)
                                    308 	.area GSINIT0 (CODE)
                                    309 	.area GSINIT1 (CODE)
                                    310 	.area GSINIT2 (CODE)
                                    311 	.area GSINIT3 (CODE)
                                    312 	.area GSINIT4 (CODE)
                                    313 	.area GSINIT5 (CODE)
                                    314 	.area GSINIT  (CODE)
                                    315 	.area GSFINAL (CODE)
                                    316 	.area CSEG    (CODE)
                                    317 ;--------------------------------------------------------
                                    318 ; interrupt vector 
                                    319 ;--------------------------------------------------------
                                    320 	.area HOME    (CODE)
      000000                        321 __interrupt_vect:
      000000 02 02 03         [24]  322 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  323 	reti
      000004                        324 	.ds	7
      00000B 02 02 0A         [24]  325 	ljmp	_timer0_ISR
                                    326 ;--------------------------------------------------------
                                    327 ; global & static initialisations
                                    328 ;--------------------------------------------------------
                                    329 	.area HOME    (CODE)
                                    330 	.area GSINIT  (CODE)
                                    331 	.area GSFINAL (CODE)
                                    332 	.area GSINIT  (CODE)
                                    333 	.globl __sdcc_gsinit_startup
                                    334 	.globl __sdcc_program_startup
                                    335 	.globl __start__stack
                                    336 	.globl __mcs51_genXINIT
                                    337 	.globl __mcs51_genXRAMCLEAR
                                    338 	.globl __mcs51_genRAMCLEAR
                                    339 	.area GSFINAL (CODE)
      000011 02 00 0E         [24]  340 	ljmp	__sdcc_program_startup
                                    341 ;--------------------------------------------------------
                                    342 ; Home
                                    343 ;--------------------------------------------------------
                                    344 	.area HOME    (CODE)
                                    345 	.area HOME    (CODE)
      00000E                        346 __sdcc_program_startup:
      00000E 02 01 DE         [24]  347 	ljmp	_main
                                    348 ;	return from main will return to caller
                                    349 ;--------------------------------------------------------
                                    350 ; code
                                    351 ;--------------------------------------------------------
                                    352 	.area CSEG    (CODE)
                                    353 ;------------------------------------------------------------
                                    354 ;Allocation info for local variables in function 'Car1'
                                    355 ;------------------------------------------------------------
                                    356 ;	testparking.c:4: void Car1(void) {
                                    357 ;	-----------------------------------------
                                    358 ;	 function Car1
                                    359 ;	-----------------------------------------
      000014                        360 _Car1:
                           000007   361 	ar7 = 0x07
                           000006   362 	ar6 = 0x06
                           000005   363 	ar5 = 0x05
                           000004   364 	ar4 = 0x04
                           000003   365 	ar3 = 0x03
                           000002   366 	ar2 = 0x02
                           000001   367 	ar1 = 0x01
                           000000   368 	ar0 = 0x00
                                    369 ;	testparking.c:5: log[0] = now();
      000014 12 02 0E         [24]  370 	lcall	_now
      000017 E5 82            [12]  371 	mov	a,dpl
      000019 78 30            [12]  372 	mov	r0,#_log
      00001B F6               [12]  373 	mov	@r0,a
                                    374 ;	testparking.c:6: SemaphoreWait(mutex,m_tail);
      00001C C2 AF            [12]  375 	clr	_EA
      00001E 78 3A            [12]  376 	mov	r0,#_mutex
      000020 16               [12]  377 	dec	@r0
      000021 78 3A            [12]  378 	mov	r0,#_mutex
      000023 E6               [12]  379 	mov	a,@r0
      000024 30 E7 13         [24]  380 	jnb	acc.7,00102$
      000027 05 3C            [12]  381 	inc	_m_tail
      000029 A9 3C            [24]  382 	mov	r1,_m_tail
      00002B 78 28            [12]  383 	mov	r0,#_ID
      00002D E6               [12]  384 	mov	a,@r0
      00002E F7               [12]  385 	mov	@r1,a
      00002F 78 28            [12]  386 	mov	r0,#_ID
      000031 E6               [12]  387 	mov	a,@r0
      000032 24 24            [12]  388 	add	a,#_bitmap
      000034 F8               [12]  389 	mov	r0,a
      000035 76 FF            [12]  390 	mov	@r0,#0xFF
      000037 12 04 1F         [24]  391 	lcall	_ThreadYield
      00003A                        392 00102$:
      00003A D2 AF            [12]  393 	setb	_EA
                                    394 ;	testparking.c:7: if(!plot[0]) {
      00003C 78 4E            [12]  395 	mov	r0,#_plot
      00003E E6               [12]  396 	mov	a,@r0
      00003F 70 10            [24]  397 	jnz	00104$
                                    398 ;	testparking.c:8: plot[0] = 1;
      000041 78 4E            [12]  399 	mov	r0,#_plot
      000043 76 01            [12]  400 	mov	@r0,#0x01
                                    401 ;	testparking.c:9: log[0] &= 0x7F;
      000045 78 30            [12]  402 	mov	r0,#_log
      000047 86 07            [24]  403 	mov	ar7,@r0
      000049 74 7F            [12]  404 	mov	a,#0x7F
      00004B 5F               [12]  405 	anl	a,r7
      00004C 78 30            [12]  406 	mov	r0,#_log
      00004E F6               [12]  407 	mov	@r0,a
      00004F 80 0E            [24]  408 	sjmp	00105$
      000051                        409 00104$:
                                    410 ;	testparking.c:12: plot[1] = 1;
      000051 78 4F            [12]  411 	mov	r0,#(_plot + 0x0001)
      000053 76 01            [12]  412 	mov	@r0,#0x01
                                    413 ;	testparking.c:13: log[0] |= 0x80;
      000055 78 30            [12]  414 	mov	r0,#_log
      000057 86 07            [24]  415 	mov	ar7,@r0
      000059 74 80            [12]  416 	mov	a,#0x80
      00005B 4F               [12]  417 	orl	a,r7
      00005C 78 30            [12]  418 	mov	r0,#_log
      00005E F6               [12]  419 	mov	@r0,a
      00005F                        420 00105$:
                                    421 ;	testparking.c:15: SemaphoreSignal(mutex,m_tail);
      00005F C2 AF            [12]  422 	clr	_EA
      000061 78 3A            [12]  423 	mov	r0,#_mutex
      000063 06               [12]  424 	inc	@r0
      000064 78 3A            [12]  425 	mov	r0,#_mutex
      000066 C3               [12]  426 	clr	c
      000067 74 80            [12]  427 	mov	a,#(0x00 ^ 0x80)
      000069 86 F0            [24]  428 	mov	b,@r0
      00006B 63 F0 80         [24]  429 	xrl	b,#0x80
      00006E 95 F0            [12]  430 	subb	a,b
      000070 40 0B            [24]  431 	jc	00107$
      000072 A9 3C            [24]  432 	mov	r1,_m_tail
      000074 E7               [12]  433 	mov	a,@r1
      000075 FF               [12]  434 	mov	r7,a
      000076 24 24            [12]  435 	add	a,#_bitmap
      000078 F8               [12]  436 	mov	r0,a
      000079 76 01            [12]  437 	mov	@r0,#0x01
      00007B 15 3C            [12]  438 	dec	_m_tail
      00007D                        439 00107$:
      00007D D2 AF            [12]  440 	setb	_EA
                                    441 ;	testparking.c:16: delay(1);
      00007F 75 82 01         [24]  442 	mov	dpl,#0x01
      000082 12 02 13         [24]  443 	lcall	_delay
                                    444 ;	testparking.c:17: log[1] = now();
      000085 12 02 0E         [24]  445 	lcall	_now
      000088 E5 82            [12]  446 	mov	a,dpl
      00008A 78 31            [12]  447 	mov	r0,#(_log + 0x0001)
      00008C F6               [12]  448 	mov	@r0,a
                                    449 ;	testparking.c:18: SemaphoreWait(mutex,m_tail);
      00008D C2 AF            [12]  450 	clr	_EA
      00008F 78 3A            [12]  451 	mov	r0,#_mutex
      000091 16               [12]  452 	dec	@r0
      000092 78 3A            [12]  453 	mov	r0,#_mutex
      000094 E6               [12]  454 	mov	a,@r0
      000095 30 E7 13         [24]  455 	jnb	acc.7,00109$
      000098 05 3C            [12]  456 	inc	_m_tail
      00009A A9 3C            [24]  457 	mov	r1,_m_tail
      00009C 78 28            [12]  458 	mov	r0,#_ID
      00009E E6               [12]  459 	mov	a,@r0
      00009F F7               [12]  460 	mov	@r1,a
      0000A0 78 28            [12]  461 	mov	r0,#_ID
      0000A2 E6               [12]  462 	mov	a,@r0
      0000A3 24 24            [12]  463 	add	a,#_bitmap
      0000A5 F8               [12]  464 	mov	r0,a
      0000A6 76 FF            [12]  465 	mov	@r0,#0xFF
      0000A8 12 04 1F         [24]  466 	lcall	_ThreadYield
      0000AB                        467 00109$:
      0000AB D2 AF            [12]  468 	setb	_EA
                                    469 ;	testparking.c:19: if(plot[0]==1) {
      0000AD 78 4E            [12]  470 	mov	r0,#_plot
      0000AF 86 07            [24]  471 	mov	ar7,@r0
      0000B1 BF 01 10         [24]  472 	cjne	r7,#0x01,00111$
                                    473 ;	testparking.c:20: plot[0] = 0;
      0000B4 78 4E            [12]  474 	mov	r0,#_plot
      0000B6 76 00            [12]  475 	mov	@r0,#0x00
                                    476 ;	testparking.c:21: log[1] &= 0x7F;
      0000B8 78 31            [12]  477 	mov	r0,#(_log + 0x0001)
      0000BA 86 07            [24]  478 	mov	ar7,@r0
      0000BC 74 7F            [12]  479 	mov	a,#0x7F
      0000BE 5F               [12]  480 	anl	a,r7
      0000BF 78 31            [12]  481 	mov	r0,#(_log + 0x0001)
      0000C1 F6               [12]  482 	mov	@r0,a
      0000C2 80 0E            [24]  483 	sjmp	00112$
      0000C4                        484 00111$:
                                    485 ;	testparking.c:24: plot[1] = 0;
      0000C4 78 4F            [12]  486 	mov	r0,#(_plot + 0x0001)
      0000C6 76 00            [12]  487 	mov	@r0,#0x00
                                    488 ;	testparking.c:25: log[1] |= 0x80;
      0000C8 78 31            [12]  489 	mov	r0,#(_log + 0x0001)
      0000CA 86 07            [24]  490 	mov	ar7,@r0
      0000CC 74 80            [12]  491 	mov	a,#0x80
      0000CE 4F               [12]  492 	orl	a,r7
      0000CF 78 31            [12]  493 	mov	r0,#(_log + 0x0001)
      0000D1 F6               [12]  494 	mov	@r0,a
      0000D2                        495 00112$:
                                    496 ;	testparking.c:27: SemaphoreSignal(mutex,m_tail);
      0000D2 C2 AF            [12]  497 	clr	_EA
      0000D4 78 3A            [12]  498 	mov	r0,#_mutex
      0000D6 06               [12]  499 	inc	@r0
      0000D7 78 3A            [12]  500 	mov	r0,#_mutex
      0000D9 C3               [12]  501 	clr	c
      0000DA 74 80            [12]  502 	mov	a,#(0x00 ^ 0x80)
      0000DC 86 F0            [24]  503 	mov	b,@r0
      0000DE 63 F0 80         [24]  504 	xrl	b,#0x80
      0000E1 95 F0            [12]  505 	subb	a,b
      0000E3 40 0B            [24]  506 	jc	00114$
      0000E5 A9 3C            [24]  507 	mov	r1,_m_tail
      0000E7 E7               [12]  508 	mov	a,@r1
      0000E8 FF               [12]  509 	mov	r7,a
      0000E9 24 24            [12]  510 	add	a,#_bitmap
      0000EB F8               [12]  511 	mov	r0,a
      0000EC 76 01            [12]  512 	mov	@r0,#0x01
      0000EE 15 3C            [12]  513 	dec	_m_tail
      0000F0                        514 00114$:
      0000F0 D2 AF            [12]  515 	setb	_EA
      0000F2 22               [24]  516 	ret
                                    517 ;------------------------------------------------------------
                                    518 ;Allocation info for local variables in function 'Car2'
                                    519 ;------------------------------------------------------------
                                    520 ;	testparking.c:29: void Car2(void) {
                                    521 ;	-----------------------------------------
                                    522 ;	 function Car2
                                    523 ;	-----------------------------------------
      0000F3                        524 _Car2:
                                    525 ;	testparking.c:30: log[2] = now();
      0000F3 12 02 0E         [24]  526 	lcall	_now
      0000F6 E5 82            [12]  527 	mov	a,dpl
      0000F8 78 32            [12]  528 	mov	r0,#(_log + 0x0002)
      0000FA F6               [12]  529 	mov	@r0,a
                                    530 ;	testparking.c:31: SemaphoreWait(mutex,m_tail);
      0000FB C2 AF            [12]  531 	clr	_EA
      0000FD 78 3A            [12]  532 	mov	r0,#_mutex
      0000FF 16               [12]  533 	dec	@r0
      000100 78 3A            [12]  534 	mov	r0,#_mutex
      000102 E6               [12]  535 	mov	a,@r0
      000103 30 E7 13         [24]  536 	jnb	acc.7,00102$
      000106 05 3C            [12]  537 	inc	_m_tail
      000108 A9 3C            [24]  538 	mov	r1,_m_tail
      00010A 78 28            [12]  539 	mov	r0,#_ID
      00010C E6               [12]  540 	mov	a,@r0
      00010D F7               [12]  541 	mov	@r1,a
      00010E 78 28            [12]  542 	mov	r0,#_ID
      000110 E6               [12]  543 	mov	a,@r0
      000111 24 24            [12]  544 	add	a,#_bitmap
      000113 F8               [12]  545 	mov	r0,a
      000114 76 FF            [12]  546 	mov	@r0,#0xFF
      000116 12 04 1F         [24]  547 	lcall	_ThreadYield
      000119                        548 00102$:
      000119 D2 AF            [12]  549 	setb	_EA
                                    550 ;	testparking.c:32: if(!plot[0]) {
      00011B 78 4E            [12]  551 	mov	r0,#_plot
      00011D E6               [12]  552 	mov	a,@r0
      00011E 70 10            [24]  553 	jnz	00104$
                                    554 ;	testparking.c:33: plot[0] = 2;
      000120 78 4E            [12]  555 	mov	r0,#_plot
      000122 76 02            [12]  556 	mov	@r0,#0x02
                                    557 ;	testparking.c:34: log[2] &= 0x7F;
      000124 78 32            [12]  558 	mov	r0,#(_log + 0x0002)
      000126 86 07            [24]  559 	mov	ar7,@r0
      000128 74 7F            [12]  560 	mov	a,#0x7F
      00012A 5F               [12]  561 	anl	a,r7
      00012B 78 32            [12]  562 	mov	r0,#(_log + 0x0002)
      00012D F6               [12]  563 	mov	@r0,a
      00012E 80 0E            [24]  564 	sjmp	00105$
      000130                        565 00104$:
                                    566 ;	testparking.c:37: plot[1] = 2;
      000130 78 4F            [12]  567 	mov	r0,#(_plot + 0x0001)
      000132 76 02            [12]  568 	mov	@r0,#0x02
                                    569 ;	testparking.c:38: log[2] |= 0x80;
      000134 78 32            [12]  570 	mov	r0,#(_log + 0x0002)
      000136 86 07            [24]  571 	mov	ar7,@r0
      000138 74 80            [12]  572 	mov	a,#0x80
      00013A 4F               [12]  573 	orl	a,r7
      00013B 78 32            [12]  574 	mov	r0,#(_log + 0x0002)
      00013D F6               [12]  575 	mov	@r0,a
      00013E                        576 00105$:
                                    577 ;	testparking.c:40: SemaphoreSignal(mutex,m_tail);
      00013E C2 AF            [12]  578 	clr	_EA
      000140 78 3A            [12]  579 	mov	r0,#_mutex
      000142 06               [12]  580 	inc	@r0
      000143 78 3A            [12]  581 	mov	r0,#_mutex
      000145 C3               [12]  582 	clr	c
      000146 74 80            [12]  583 	mov	a,#(0x00 ^ 0x80)
      000148 86 F0            [24]  584 	mov	b,@r0
      00014A 63 F0 80         [24]  585 	xrl	b,#0x80
      00014D 95 F0            [12]  586 	subb	a,b
      00014F 40 0B            [24]  587 	jc	00107$
      000151 A9 3C            [24]  588 	mov	r1,_m_tail
      000153 E7               [12]  589 	mov	a,@r1
      000154 FF               [12]  590 	mov	r7,a
      000155 24 24            [12]  591 	add	a,#_bitmap
      000157 F8               [12]  592 	mov	r0,a
      000158 76 01            [12]  593 	mov	@r0,#0x01
      00015A 15 3C            [12]  594 	dec	_m_tail
      00015C                        595 00107$:
      00015C D2 AF            [12]  596 	setb	_EA
                                    597 ;	testparking.c:41: delay(2);
      00015E 75 82 02         [24]  598 	mov	dpl,#0x02
      000161 12 02 13         [24]  599 	lcall	_delay
                                    600 ;	testparking.c:42: log[3] = now();
      000164 12 02 0E         [24]  601 	lcall	_now
      000167 E5 82            [12]  602 	mov	a,dpl
      000169 78 33            [12]  603 	mov	r0,#(_log + 0x0003)
      00016B F6               [12]  604 	mov	@r0,a
                                    605 ;	testparking.c:43: SemaphoreWait(mutex,m_tail);
      00016C C2 AF            [12]  606 	clr	_EA
      00016E 78 3A            [12]  607 	mov	r0,#_mutex
      000170 16               [12]  608 	dec	@r0
      000171 78 3A            [12]  609 	mov	r0,#_mutex
      000173 E6               [12]  610 	mov	a,@r0
      000174 30 E7 13         [24]  611 	jnb	acc.7,00109$
      000177 05 3C            [12]  612 	inc	_m_tail
      000179 A9 3C            [24]  613 	mov	r1,_m_tail
      00017B 78 28            [12]  614 	mov	r0,#_ID
      00017D E6               [12]  615 	mov	a,@r0
      00017E F7               [12]  616 	mov	@r1,a
      00017F 78 28            [12]  617 	mov	r0,#_ID
      000181 E6               [12]  618 	mov	a,@r0
      000182 24 24            [12]  619 	add	a,#_bitmap
      000184 F8               [12]  620 	mov	r0,a
      000185 76 FF            [12]  621 	mov	@r0,#0xFF
      000187 12 04 1F         [24]  622 	lcall	_ThreadYield
      00018A                        623 00109$:
      00018A D2 AF            [12]  624 	setb	_EA
                                    625 ;	testparking.c:44: if(plot[0]==2) {
      00018C 78 4E            [12]  626 	mov	r0,#_plot
      00018E 86 07            [24]  627 	mov	ar7,@r0
      000190 BF 02 10         [24]  628 	cjne	r7,#0x02,00111$
                                    629 ;	testparking.c:45: plot[0] = 0;
      000193 78 4E            [12]  630 	mov	r0,#_plot
      000195 76 00            [12]  631 	mov	@r0,#0x00
                                    632 ;	testparking.c:46: log[3] &= 0x7F;
      000197 78 33            [12]  633 	mov	r0,#(_log + 0x0003)
      000199 86 07            [24]  634 	mov	ar7,@r0
      00019B 74 7F            [12]  635 	mov	a,#0x7F
      00019D 5F               [12]  636 	anl	a,r7
      00019E 78 33            [12]  637 	mov	r0,#(_log + 0x0003)
      0001A0 F6               [12]  638 	mov	@r0,a
      0001A1 80 0E            [24]  639 	sjmp	00112$
      0001A3                        640 00111$:
                                    641 ;	testparking.c:49: plot[1] = 0;
      0001A3 78 4F            [12]  642 	mov	r0,#(_plot + 0x0001)
      0001A5 76 00            [12]  643 	mov	@r0,#0x00
                                    644 ;	testparking.c:50: log[3] |= 0x80;
      0001A7 78 33            [12]  645 	mov	r0,#(_log + 0x0003)
      0001A9 86 07            [24]  646 	mov	ar7,@r0
      0001AB 74 80            [12]  647 	mov	a,#0x80
      0001AD 4F               [12]  648 	orl	a,r7
      0001AE 78 33            [12]  649 	mov	r0,#(_log + 0x0003)
      0001B0 F6               [12]  650 	mov	@r0,a
      0001B1                        651 00112$:
                                    652 ;	testparking.c:52: SemaphoreSignal(mutex,m_tail);
      0001B1 C2 AF            [12]  653 	clr	_EA
      0001B3 78 3A            [12]  654 	mov	r0,#_mutex
      0001B5 06               [12]  655 	inc	@r0
      0001B6 78 3A            [12]  656 	mov	r0,#_mutex
      0001B8 C3               [12]  657 	clr	c
      0001B9 74 80            [12]  658 	mov	a,#(0x00 ^ 0x80)
      0001BB 86 F0            [24]  659 	mov	b,@r0
      0001BD 63 F0 80         [24]  660 	xrl	b,#0x80
      0001C0 95 F0            [12]  661 	subb	a,b
      0001C2 40 0B            [24]  662 	jc	00114$
      0001C4 A9 3C            [24]  663 	mov	r1,_m_tail
      0001C6 E7               [12]  664 	mov	a,@r1
      0001C7 FF               [12]  665 	mov	r7,a
      0001C8 24 24            [12]  666 	add	a,#_bitmap
      0001CA F8               [12]  667 	mov	r0,a
      0001CB 76 01            [12]  668 	mov	@r0,#0x01
      0001CD 15 3C            [12]  669 	dec	_m_tail
      0001CF                        670 00114$:
      0001CF D2 AF            [12]  671 	setb	_EA
      0001D1 22               [24]  672 	ret
                                    673 ;------------------------------------------------------------
                                    674 ;Allocation info for local variables in function 'Printer'
                                    675 ;------------------------------------------------------------
                                    676 ;	testparking.c:54: void Printer(void) {
                                    677 ;	-----------------------------------------
                                    678 ;	 function Printer
                                    679 ;	-----------------------------------------
      0001D2                        680 _Printer:
                                    681 ;	testparking.c:55: TMOD |= 0x20;
      0001D2 43 89 20         [24]  682 	orl	_TMOD,#0x20
                                    683 ;	testparking.c:56: TH1 = -6;
      0001D5 75 8D FA         [24]  684 	mov	_TH1,#0xFA
                                    685 ;	testparking.c:57: SCON = 0x50;
      0001D8 75 98 50         [24]  686 	mov	_SCON,#0x50
                                    687 ;	testparking.c:58: TR1 = 1;
      0001DB D2 8E            [12]  688 	setb	_TR1
      0001DD 22               [24]  689 	ret
                                    690 ;------------------------------------------------------------
                                    691 ;Allocation info for local variables in function 'main'
                                    692 ;------------------------------------------------------------
                                    693 ;	testparking.c:61: void main(void) {
                                    694 ;	-----------------------------------------
                                    695 ;	 function main
                                    696 ;	-----------------------------------------
      0001DE                        697 _main:
                                    698 ;	testparking.c:63: plot[0] = plot[1] = 0;
      0001DE 78 4F            [12]  699 	mov	r0,#(_plot + 0x0001)
      0001E0 76 00            [12]  700 	mov	@r0,#0x00
      0001E2 78 4E            [12]  701 	mov	r0,#_plot
      0001E4 76 00            [12]  702 	mov	@r0,#0x00
                                    703 ;	testparking.c:65: SemaphoreCreate(mutex, 1);
      0001E6 78 3A            [12]  704 	mov	r0,#_mutex
      0001E8 76 01            [12]  705 	mov	@r0,#0x01
                                    706 ;	testparking.c:68: __endasm;
      0001EA 75 3C 6C         [24]  707 	mov _m_tail,#0x6C
                                    708 ;	testparking.c:70: car_temp = 0;
      0001ED 78 29            [12]  709 	mov	r0,#_car_temp
      0001EF 76 00            [12]  710 	mov	@r0,#0x00
                                    711 ;	testparking.c:72: ThreadCreate(Car1);
      0001F1 90 00 14         [24]  712 	mov	dptr,#_Car1
      0001F4 12 03 88         [24]  713 	lcall	_ThreadCreate
                                    714 ;	testparking.c:73: ThreadCreate(Car2);
      0001F7 90 00 F3         [24]  715 	mov	dptr,#_Car2
      0001FA 12 03 88         [24]  716 	lcall	_ThreadCreate
                                    717 ;	testparking.c:77: ThreadCreate(Printer);
      0001FD 90 01 D2         [24]  718 	mov	dptr,#_Printer
      000200 02 03 88         [24]  719 	ljmp	_ThreadCreate
                                    720 ;------------------------------------------------------------
                                    721 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    722 ;------------------------------------------------------------
                                    723 ;	testparking.c:80: void _sdcc_gsinit_startup(void) {
                                    724 ;	-----------------------------------------
                                    725 ;	 function _sdcc_gsinit_startup
                                    726 ;	-----------------------------------------
      000203                        727 __sdcc_gsinit_startup:
                                    728 ;	testparking.c:83: __endasm;
      000203 02 03 45         [24]  729 	ljmp _Bootstrap
      000206 22               [24]  730 	ret
                                    731 ;------------------------------------------------------------
                                    732 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    733 ;------------------------------------------------------------
                                    734 ;	testparking.c:86: void _mcs51_genRAMCLEAR(void) {}
                                    735 ;	-----------------------------------------
                                    736 ;	 function _mcs51_genRAMCLEAR
                                    737 ;	-----------------------------------------
      000207                        738 __mcs51_genRAMCLEAR:
      000207 22               [24]  739 	ret
                                    740 ;------------------------------------------------------------
                                    741 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    742 ;------------------------------------------------------------
                                    743 ;	testparking.c:87: void _mcs51_genXINIT(void) {}
                                    744 ;	-----------------------------------------
                                    745 ;	 function _mcs51_genXINIT
                                    746 ;	-----------------------------------------
      000208                        747 __mcs51_genXINIT:
      000208 22               [24]  748 	ret
                                    749 ;------------------------------------------------------------
                                    750 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    751 ;------------------------------------------------------------
                                    752 ;	testparking.c:88: void _mcs51_genXRAMCLEAR(void) {}
                                    753 ;	-----------------------------------------
                                    754 ;	 function _mcs51_genXRAMCLEAR
                                    755 ;	-----------------------------------------
      000209                        756 __mcs51_genXRAMCLEAR:
      000209 22               [24]  757 	ret
                                    758 ;------------------------------------------------------------
                                    759 ;Allocation info for local variables in function 'timer0_ISR'
                                    760 ;------------------------------------------------------------
                                    761 ;	testparking.c:89: void timer0_ISR(void) __interrupt(1) {
                                    762 ;	-----------------------------------------
                                    763 ;	 function timer0_ISR
                                    764 ;	-----------------------------------------
      00020A                        765 _timer0_ISR:
                                    766 ;	testparking.c:92: __endasm;
      00020A 02 02 96         [24]  767 	ljmp _myTimer0Handler
      00020D 32               [24]  768 	reti
                                    769 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    770 ;	eliminated unneeded push/pop psw
                                    771 ;	eliminated unneeded push/pop dpl
                                    772 ;	eliminated unneeded push/pop dph
                                    773 ;	eliminated unneeded push/pop b
                                    774 ;	eliminated unneeded push/pop acc
                                    775 	.area CSEG    (CODE)
                                    776 	.area CONST   (CODE)
                                    777 	.area XINIT   (CODE)
                                    778 	.area CABS    (ABS,CODE)
