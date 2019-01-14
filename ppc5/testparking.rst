                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Tue Jan 15 02:58:35 2019
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
                                     19 	.globl _Car5
                                     20 	.globl _Car4
                                     21 	.globl _Car3
                                     22 	.globl _Car2
                                     23 	.globl _Car1
                                     24 	.globl _ThreadYield
                                     25 	.globl _ThreadCreate
                                     26 	.globl _delay
                                     27 	.globl _now
                                     28 	.globl _CY
                                     29 	.globl _AC
                                     30 	.globl _F0
                                     31 	.globl _RS1
                                     32 	.globl _RS0
                                     33 	.globl _OV
                                     34 	.globl _F1
                                     35 	.globl _P
                                     36 	.globl _PS
                                     37 	.globl _PT1
                                     38 	.globl _PX1
                                     39 	.globl _PT0
                                     40 	.globl _PX0
                                     41 	.globl _RD
                                     42 	.globl _WR
                                     43 	.globl _T1
                                     44 	.globl _T0
                                     45 	.globl _INT1
                                     46 	.globl _INT0
                                     47 	.globl _TXD
                                     48 	.globl _RXD
                                     49 	.globl _P3_7
                                     50 	.globl _P3_6
                                     51 	.globl _P3_5
                                     52 	.globl _P3_4
                                     53 	.globl _P3_3
                                     54 	.globl _P3_2
                                     55 	.globl _P3_1
                                     56 	.globl _P3_0
                                     57 	.globl _EA
                                     58 	.globl _ES
                                     59 	.globl _ET1
                                     60 	.globl _EX1
                                     61 	.globl _ET0
                                     62 	.globl _EX0
                                     63 	.globl _P2_7
                                     64 	.globl _P2_6
                                     65 	.globl _P2_5
                                     66 	.globl _P2_4
                                     67 	.globl _P2_3
                                     68 	.globl _P2_2
                                     69 	.globl _P2_1
                                     70 	.globl _P2_0
                                     71 	.globl _SM0
                                     72 	.globl _SM1
                                     73 	.globl _SM2
                                     74 	.globl _REN
                                     75 	.globl _TB8
                                     76 	.globl _RB8
                                     77 	.globl _TI
                                     78 	.globl _RI
                                     79 	.globl _P1_7
                                     80 	.globl _P1_6
                                     81 	.globl _P1_5
                                     82 	.globl _P1_4
                                     83 	.globl _P1_3
                                     84 	.globl _P1_2
                                     85 	.globl _P1_1
                                     86 	.globl _P1_0
                                     87 	.globl _TF1
                                     88 	.globl _TR1
                                     89 	.globl _TF0
                                     90 	.globl _TR0
                                     91 	.globl _IE1
                                     92 	.globl _IT1
                                     93 	.globl _IE0
                                     94 	.globl _IT0
                                     95 	.globl _P0_7
                                     96 	.globl _P0_6
                                     97 	.globl _P0_5
                                     98 	.globl _P0_4
                                     99 	.globl _P0_3
                                    100 	.globl _P0_2
                                    101 	.globl _P0_1
                                    102 	.globl _P0_0
                                    103 	.globl _B
                                    104 	.globl _ACC
                                    105 	.globl _PSW
                                    106 	.globl _IP
                                    107 	.globl _P3
                                    108 	.globl _IE
                                    109 	.globl _P2
                                    110 	.globl _SBUF
                                    111 	.globl _SCON
                                    112 	.globl _P1
                                    113 	.globl _TH1
                                    114 	.globl _TH0
                                    115 	.globl _TL1
                                    116 	.globl _TL0
                                    117 	.globl _TMOD
                                    118 	.globl _TCON
                                    119 	.globl _PCON
                                    120 	.globl _DPH
                                    121 	.globl _DPL
                                    122 	.globl _SP
                                    123 	.globl _P0
                                    124 	.globl _print
                                    125 	.globl _c_temp3
                                    126 	.globl _c_temp2
                                    127 	.globl _flag
                                    128 	.globl _current
                                    129 	.globl _j
                                    130 	.globl _plot
                                    131 	.globl _thread
                                    132 	.globl _mutex
                                    133 	.globl _log
                                    134 	.globl _counter
                                    135 	.globl _time
                                    136 	.globl _D
                                    137 	.globl _i
                                    138 	.globl _temp2
                                    139 	.globl _temp1
                                    140 	.globl _c_temp
                                    141 	.globl _ID
                                    142 	.globl _bitmap
                                    143 	.globl _ssp
                                    144 	.globl _p_tail
                                    145 	.globl _th_tail
                                    146 	.globl _m_tail
                                    147 ;--------------------------------------------------------
                                    148 ; special function registers
                                    149 ;--------------------------------------------------------
                                    150 	.area RSEG    (ABS,DATA)
      000000                        151 	.org 0x0000
                           000080   152 _P0	=	0x0080
                           000081   153 _SP	=	0x0081
                           000082   154 _DPL	=	0x0082
                           000083   155 _DPH	=	0x0083
                           000087   156 _PCON	=	0x0087
                           000088   157 _TCON	=	0x0088
                           000089   158 _TMOD	=	0x0089
                           00008A   159 _TL0	=	0x008a
                           00008B   160 _TL1	=	0x008b
                           00008C   161 _TH0	=	0x008c
                           00008D   162 _TH1	=	0x008d
                           000090   163 _P1	=	0x0090
                           000098   164 _SCON	=	0x0098
                           000099   165 _SBUF	=	0x0099
                           0000A0   166 _P2	=	0x00a0
                           0000A8   167 _IE	=	0x00a8
                           0000B0   168 _P3	=	0x00b0
                           0000B8   169 _IP	=	0x00b8
                           0000D0   170 _PSW	=	0x00d0
                           0000E0   171 _ACC	=	0x00e0
                           0000F0   172 _B	=	0x00f0
                                    173 ;--------------------------------------------------------
                                    174 ; special function bits
                                    175 ;--------------------------------------------------------
                                    176 	.area RSEG    (ABS,DATA)
      000000                        177 	.org 0x0000
                           000080   178 _P0_0	=	0x0080
                           000081   179 _P0_1	=	0x0081
                           000082   180 _P0_2	=	0x0082
                           000083   181 _P0_3	=	0x0083
                           000084   182 _P0_4	=	0x0084
                           000085   183 _P0_5	=	0x0085
                           000086   184 _P0_6	=	0x0086
                           000087   185 _P0_7	=	0x0087
                           000088   186 _IT0	=	0x0088
                           000089   187 _IE0	=	0x0089
                           00008A   188 _IT1	=	0x008a
                           00008B   189 _IE1	=	0x008b
                           00008C   190 _TR0	=	0x008c
                           00008D   191 _TF0	=	0x008d
                           00008E   192 _TR1	=	0x008e
                           00008F   193 _TF1	=	0x008f
                           000090   194 _P1_0	=	0x0090
                           000091   195 _P1_1	=	0x0091
                           000092   196 _P1_2	=	0x0092
                           000093   197 _P1_3	=	0x0093
                           000094   198 _P1_4	=	0x0094
                           000095   199 _P1_5	=	0x0095
                           000096   200 _P1_6	=	0x0096
                           000097   201 _P1_7	=	0x0097
                           000098   202 _RI	=	0x0098
                           000099   203 _TI	=	0x0099
                           00009A   204 _RB8	=	0x009a
                           00009B   205 _TB8	=	0x009b
                           00009C   206 _REN	=	0x009c
                           00009D   207 _SM2	=	0x009d
                           00009E   208 _SM1	=	0x009e
                           00009F   209 _SM0	=	0x009f
                           0000A0   210 _P2_0	=	0x00a0
                           0000A1   211 _P2_1	=	0x00a1
                           0000A2   212 _P2_2	=	0x00a2
                           0000A3   213 _P2_3	=	0x00a3
                           0000A4   214 _P2_4	=	0x00a4
                           0000A5   215 _P2_5	=	0x00a5
                           0000A6   216 _P2_6	=	0x00a6
                           0000A7   217 _P2_7	=	0x00a7
                           0000A8   218 _EX0	=	0x00a8
                           0000A9   219 _ET0	=	0x00a9
                           0000AA   220 _EX1	=	0x00aa
                           0000AB   221 _ET1	=	0x00ab
                           0000AC   222 _ES	=	0x00ac
                           0000AF   223 _EA	=	0x00af
                           0000B0   224 _P3_0	=	0x00b0
                           0000B1   225 _P3_1	=	0x00b1
                           0000B2   226 _P3_2	=	0x00b2
                           0000B3   227 _P3_3	=	0x00b3
                           0000B4   228 _P3_4	=	0x00b4
                           0000B5   229 _P3_5	=	0x00b5
                           0000B6   230 _P3_6	=	0x00b6
                           0000B7   231 _P3_7	=	0x00b7
                           0000B0   232 _RXD	=	0x00b0
                           0000B1   233 _TXD	=	0x00b1
                           0000B2   234 _INT0	=	0x00b2
                           0000B3   235 _INT1	=	0x00b3
                           0000B4   236 _T0	=	0x00b4
                           0000B5   237 _T1	=	0x00b5
                           0000B6   238 _WR	=	0x00b6
                           0000B7   239 _RD	=	0x00b7
                           0000B8   240 _PX0	=	0x00b8
                           0000B9   241 _PT0	=	0x00b9
                           0000BA   242 _PX1	=	0x00ba
                           0000BB   243 _PT1	=	0x00bb
                           0000BC   244 _PS	=	0x00bc
                           0000D0   245 _P	=	0x00d0
                           0000D1   246 _F1	=	0x00d1
                           0000D2   247 _OV	=	0x00d2
                           0000D3   248 _RS0	=	0x00d3
                           0000D4   249 _RS1	=	0x00d4
                           0000D5   250 _F0	=	0x00d5
                           0000D6   251 _AC	=	0x00d6
                           0000D7   252 _CY	=	0x00d7
                                    253 ;--------------------------------------------------------
                                    254 ; overlayable register banks
                                    255 ;--------------------------------------------------------
                                    256 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        257 	.ds 8
                                    258 ;--------------------------------------------------------
                                    259 ; internal ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area DSEG    (DATA)
                           00003C   262 _m_tail	=	0x003c
                           00003D   263 _th_tail	=	0x003d
                           00006C   264 _p_tail	=	0x006c
                                    265 ;--------------------------------------------------------
                                    266 ; overlayable items in internal ram 
                                    267 ;--------------------------------------------------------
                                    268 ;--------------------------------------------------------
                                    269 ; Stack segment in internal ram 
                                    270 ;--------------------------------------------------------
                                    271 	.area	SSEG
      000008                        272 __start__stack:
      000008                        273 	.ds	1
                                    274 
                                    275 ;--------------------------------------------------------
                                    276 ; indirectly addressable internal ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area ISEG    (DATA)
                           000020   279 _ssp	=	0x0020
                           000024   280 _bitmap	=	0x0024
                           000028   281 _ID	=	0x0028
                           000029   282 _c_temp	=	0x0029
                           00002A   283 _temp1	=	0x002a
                           00002B   284 _temp2	=	0x002b
                           00002C   285 _i	=	0x002c
                           00002C   286 _D	=	0x002c
                           00003F   287 _time	=	0x003f
                           00003E   288 _counter	=	0x003e
                           000030   289 _log	=	0x0030
                           00003A   290 _mutex	=	0x003a
                           00003B   291 _thread	=	0x003b
                           00004E   292 _plot	=	0x004e
                           00004D   293 _j	=	0x004d
                           00004C   294 _current	=	0x004c
                           00004B   295 _flag	=	0x004b
                           00004A   296 _c_temp2	=	0x004a
                           00005C   297 _c_temp3	=	0x005c
                           00005B   298 _print	=	0x005b
                                    299 ;--------------------------------------------------------
                                    300 ; absolute internal ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area IABS    (ABS,DATA)
                                    303 	.area IABS    (ABS,DATA)
                                    304 ;--------------------------------------------------------
                                    305 ; bit data
                                    306 ;--------------------------------------------------------
                                    307 	.area BSEG    (BIT)
                                    308 ;--------------------------------------------------------
                                    309 ; paged external ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area PSEG    (PAG,XDATA)
                                    312 ;--------------------------------------------------------
                                    313 ; external ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area XSEG    (XDATA)
                                    316 ;--------------------------------------------------------
                                    317 ; absolute external ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area XABS    (ABS,XDATA)
                                    320 ;--------------------------------------------------------
                                    321 ; external initialized ram data
                                    322 ;--------------------------------------------------------
                                    323 	.area XISEG   (XDATA)
                                    324 	.area HOME    (CODE)
                                    325 	.area GSINIT0 (CODE)
                                    326 	.area GSINIT1 (CODE)
                                    327 	.area GSINIT2 (CODE)
                                    328 	.area GSINIT3 (CODE)
                                    329 	.area GSINIT4 (CODE)
                                    330 	.area GSINIT5 (CODE)
                                    331 	.area GSINIT  (CODE)
                                    332 	.area GSFINAL (CODE)
                                    333 	.area CSEG    (CODE)
                                    334 ;--------------------------------------------------------
                                    335 ; interrupt vector 
                                    336 ;--------------------------------------------------------
                                    337 	.area HOME    (CODE)
      000000                        338 __interrupt_vect:
      000000 02 08 73         [24]  339 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  340 	reti
      000004                        341 	.ds	7
      00000B 02 08 7A         [24]  342 	ljmp	_timer0_ISR
                                    343 ;--------------------------------------------------------
                                    344 ; global & static initialisations
                                    345 ;--------------------------------------------------------
                                    346 	.area HOME    (CODE)
                                    347 	.area GSINIT  (CODE)
                                    348 	.area GSFINAL (CODE)
                                    349 	.area GSINIT  (CODE)
                                    350 	.globl __sdcc_gsinit_startup
                                    351 	.globl __sdcc_program_startup
                                    352 	.globl __start__stack
                                    353 	.globl __mcs51_genXINIT
                                    354 	.globl __mcs51_genXRAMCLEAR
                                    355 	.globl __mcs51_genRAMCLEAR
                                    356 	.area GSFINAL (CODE)
      000011 02 00 0E         [24]  357 	ljmp	__sdcc_program_startup
                                    358 ;--------------------------------------------------------
                                    359 ; Home
                                    360 ;--------------------------------------------------------
                                    361 	.area HOME    (CODE)
                                    362 	.area HOME    (CODE)
      00000E                        363 __sdcc_program_startup:
      00000E 02 08 39         [24]  364 	ljmp	_main
                                    365 ;	return from main will return to caller
                                    366 ;--------------------------------------------------------
                                    367 ; code
                                    368 ;--------------------------------------------------------
                                    369 	.area CSEG    (CODE)
                                    370 ;------------------------------------------------------------
                                    371 ;Allocation info for local variables in function 'Car1'
                                    372 ;------------------------------------------------------------
                                    373 ;	testparking.c:4: void Car1(void) {
                                    374 ;	-----------------------------------------
                                    375 ;	 function Car1
                                    376 ;	-----------------------------------------
      000014                        377 _Car1:
                           000007   378 	ar7 = 0x07
                           000006   379 	ar6 = 0x06
                           000005   380 	ar5 = 0x05
                           000004   381 	ar4 = 0x04
                           000003   382 	ar3 = 0x03
                           000002   383 	ar2 = 0x02
                           000001   384 	ar1 = 0x01
                           000000   385 	ar0 = 0x00
                                    386 ;	testparking.c:5: log[0] = now();
      000014 12 08 7E         [24]  387 	lcall	_now
      000017 E5 82            [12]  388 	mov	a,dpl
      000019 78 30            [12]  389 	mov	r0,#_log
      00001B F6               [12]  390 	mov	@r0,a
                                    391 ;	testparking.c:6: SemaphoreWait(mutex,m_tail);
      00001C C2 AF            [12]  392 	clr	_EA
      00001E 78 3A            [12]  393 	mov	r0,#_mutex
      000020 16               [12]  394 	dec	@r0
      000021 78 3A            [12]  395 	mov	r0,#_mutex
      000023 E6               [12]  396 	mov	a,@r0
      000024 30 E7 13         [24]  397 	jnb	acc.7,00102$
      000027 05 3C            [12]  398 	inc	_m_tail
      000029 A9 3C            [24]  399 	mov	r1,_m_tail
      00002B 78 28            [12]  400 	mov	r0,#_ID
      00002D E6               [12]  401 	mov	a,@r0
      00002E F7               [12]  402 	mov	@r1,a
      00002F 78 28            [12]  403 	mov	r0,#_ID
      000031 E6               [12]  404 	mov	a,@r0
      000032 24 24            [12]  405 	add	a,#_bitmap
      000034 F8               [12]  406 	mov	r0,a
      000035 76 FF            [12]  407 	mov	@r0,#0xFF
      000037 12 0A B1         [24]  408 	lcall	_ThreadYield
      00003A                        409 00102$:
      00003A D2 AF            [12]  410 	setb	_EA
                                    411 ;	testparking.c:7: if(!plot[0]) {
      00003C 78 4E            [12]  412 	mov	r0,#_plot
      00003E E6               [12]  413 	mov	a,@r0
      00003F 70 0E            [24]  414 	jnz	00104$
                                    415 ;	testparking.c:8: plot[0] = 1;
      000041 78 4E            [12]  416 	mov	r0,#_plot
      000043 76 01            [12]  417 	mov	@r0,#0x01
                                    418 ;	testparking.c:16: __endasm;
      000045 78 30            [12]  419 	mov r0,#(_log + 0x0000)
      000047 E6               [12]  420 	mov a,@r0
      000048 FF               [12]  421 	mov r7,a
      000049 74 7F            [12]  422 	mov a,#0x7F
      00004B 5F               [12]  423 	anl a,r7
      00004C F6               [12]  424 	mov @r0,a
      00004D 80 0C            [24]  425 	sjmp	00105$
      00004F                        426 00104$:
                                    427 ;	testparking.c:19: plot[1] = 1;
      00004F 78 4F            [12]  428 	mov	r0,#(_plot + 0x0001)
      000051 76 01            [12]  429 	mov	@r0,#0x01
                                    430 ;	testparking.c:27: __endasm;
      000053 78 30            [12]  431 	mov r0,#(_log + 0x0000)
      000055 E6               [12]  432 	mov a,@r0
      000056 FF               [12]  433 	mov r7,a
      000057 74 80            [12]  434 	mov a,#0x80
      000059 4F               [12]  435 	orl a,r7
      00005A F6               [12]  436 	mov @r0,a
      00005B                        437 00105$:
                                    438 ;	testparking.c:29: SemaphoreSignal(mutex,m_tail);
      00005B C2 AF            [12]  439 	clr	_EA
      00005D 78 3A            [12]  440 	mov	r0,#_mutex
      00005F 06               [12]  441 	inc	@r0
      000060 78 3A            [12]  442 	mov	r0,#_mutex
      000062 C3               [12]  443 	clr	c
      000063 74 80            [12]  444 	mov	a,#(0x00 ^ 0x80)
      000065 86 F0            [24]  445 	mov	b,@r0
      000067 63 F0 80         [24]  446 	xrl	b,#0x80
      00006A 95 F0            [12]  447 	subb	a,b
      00006C 40 0B            [24]  448 	jc	00107$
      00006E A9 3C            [24]  449 	mov	r1,_m_tail
      000070 E7               [12]  450 	mov	a,@r1
      000071 FF               [12]  451 	mov	r7,a
      000072 24 24            [12]  452 	add	a,#_bitmap
      000074 F8               [12]  453 	mov	r0,a
      000075 76 01            [12]  454 	mov	@r0,#0x01
      000077 15 3C            [12]  455 	dec	_m_tail
      000079                        456 00107$:
      000079 D2 AF            [12]  457 	setb	_EA
                                    458 ;	testparking.c:30: SemaphoreSignal(print,p_tail);
      00007B C2 AF            [12]  459 	clr	_EA
      00007D 78 5B            [12]  460 	mov	r0,#_print
      00007F 06               [12]  461 	inc	@r0
      000080 78 5B            [12]  462 	mov	r0,#_print
      000082 C3               [12]  463 	clr	c
      000083 74 80            [12]  464 	mov	a,#(0x00 ^ 0x80)
      000085 86 F0            [24]  465 	mov	b,@r0
      000087 63 F0 80         [24]  466 	xrl	b,#0x80
      00008A 95 F0            [12]  467 	subb	a,b
      00008C 40 0B            [24]  468 	jc	00109$
      00008E A9 6C            [24]  469 	mov	r1,_p_tail
      000090 E7               [12]  470 	mov	a,@r1
      000091 FF               [12]  471 	mov	r7,a
      000092 24 24            [12]  472 	add	a,#_bitmap
      000094 F8               [12]  473 	mov	r0,a
      000095 76 01            [12]  474 	mov	@r0,#0x01
      000097 15 6C            [12]  475 	dec	_p_tail
      000099                        476 00109$:
      000099 D2 AF            [12]  477 	setb	_EA
                                    478 ;	testparking.c:31: delay(1);
      00009B 75 82 01         [24]  479 	mov	dpl,#0x01
      00009E 12 08 83         [24]  480 	lcall	_delay
                                    481 ;	testparking.c:32: log[1] = now();
      0000A1 12 08 7E         [24]  482 	lcall	_now
      0000A4 E5 82            [12]  483 	mov	a,dpl
      0000A6 78 31            [12]  484 	mov	r0,#(_log + 0x0001)
      0000A8 F6               [12]  485 	mov	@r0,a
                                    486 ;	testparking.c:33: SemaphoreWait(mutex,m_tail);
      0000A9 C2 AF            [12]  487 	clr	_EA
      0000AB 78 3A            [12]  488 	mov	r0,#_mutex
      0000AD 16               [12]  489 	dec	@r0
      0000AE 78 3A            [12]  490 	mov	r0,#_mutex
      0000B0 E6               [12]  491 	mov	a,@r0
      0000B1 30 E7 13         [24]  492 	jnb	acc.7,00111$
      0000B4 05 3C            [12]  493 	inc	_m_tail
      0000B6 A9 3C            [24]  494 	mov	r1,_m_tail
      0000B8 78 28            [12]  495 	mov	r0,#_ID
      0000BA E6               [12]  496 	mov	a,@r0
      0000BB F7               [12]  497 	mov	@r1,a
      0000BC 78 28            [12]  498 	mov	r0,#_ID
      0000BE E6               [12]  499 	mov	a,@r0
      0000BF 24 24            [12]  500 	add	a,#_bitmap
      0000C1 F8               [12]  501 	mov	r0,a
      0000C2 76 FF            [12]  502 	mov	@r0,#0xFF
      0000C4 12 0A B1         [24]  503 	lcall	_ThreadYield
      0000C7                        504 00111$:
      0000C7 D2 AF            [12]  505 	setb	_EA
                                    506 ;	testparking.c:34: if(!(plot[0]-1)) {
      0000C9 78 4E            [12]  507 	mov	r0,#_plot
      0000CB E6               [12]  508 	mov	a,@r0
      0000CC FF               [12]  509 	mov	r7,a
      0000CD 33               [12]  510 	rlc	a
      0000CE 95 E0            [12]  511 	subb	a,acc
      0000D0 FE               [12]  512 	mov	r6,a
      0000D1 1F               [12]  513 	dec	r7
      0000D2 BF FF 01         [24]  514 	cjne	r7,#0xFF,00150$
      0000D5 1E               [12]  515 	dec	r6
      0000D6                        516 00150$:
      0000D6 EF               [12]  517 	mov	a,r7
      0000D7 4E               [12]  518 	orl	a,r6
                                    519 ;	testparking.c:35: plot[0] = 0;
      0000D8 70 0D            [24]  520 	jnz	00113$
      0000DA 78 4E            [12]  521 	mov	r0,#_plot
      0000DC F6               [12]  522 	mov	@r0,a
                                    523 ;	testparking.c:43: __endasm;
      0000DD 78 31            [12]  524 	mov r0,#(_log + 0x0001)
      0000DF E6               [12]  525 	mov a,@r0
      0000E0 FF               [12]  526 	mov r7,a
      0000E1 74 7F            [12]  527 	mov a,#0x7F
      0000E3 5F               [12]  528 	anl a,r7
      0000E4 F6               [12]  529 	mov @r0,a
      0000E5 80 0C            [24]  530 	sjmp	00114$
      0000E7                        531 00113$:
                                    532 ;	testparking.c:46: plot[1] = 0;
      0000E7 78 4F            [12]  533 	mov	r0,#(_plot + 0x0001)
      0000E9 76 00            [12]  534 	mov	@r0,#0x00
                                    535 ;	testparking.c:54: __endasm;
      0000EB 78 31            [12]  536 	mov r0,#(_log + 0x0001)
      0000ED E6               [12]  537 	mov a,@r0
      0000EE FF               [12]  538 	mov r7,a
      0000EF 74 80            [12]  539 	mov a,#0x80
      0000F1 4F               [12]  540 	orl a,r7
      0000F2 F6               [12]  541 	mov @r0,a
      0000F3                        542 00114$:
                                    543 ;	testparking.c:56: SemaphoreSignal(mutex,m_tail);
      0000F3 C2 AF            [12]  544 	clr	_EA
      0000F5 78 3A            [12]  545 	mov	r0,#_mutex
      0000F7 06               [12]  546 	inc	@r0
      0000F8 78 3A            [12]  547 	mov	r0,#_mutex
      0000FA C3               [12]  548 	clr	c
      0000FB 74 80            [12]  549 	mov	a,#(0x00 ^ 0x80)
      0000FD 86 F0            [24]  550 	mov	b,@r0
      0000FF 63 F0 80         [24]  551 	xrl	b,#0x80
      000102 95 F0            [12]  552 	subb	a,b
      000104 40 0B            [24]  553 	jc	00116$
      000106 A9 3C            [24]  554 	mov	r1,_m_tail
      000108 E7               [12]  555 	mov	a,@r1
      000109 FF               [12]  556 	mov	r7,a
      00010A 24 24            [12]  557 	add	a,#_bitmap
      00010C F8               [12]  558 	mov	r0,a
      00010D 76 01            [12]  559 	mov	@r0,#0x01
      00010F 15 3C            [12]  560 	dec	_m_tail
      000111                        561 00116$:
      000111 D2 AF            [12]  562 	setb	_EA
                                    563 ;	testparking.c:57: SemaphoreSignal(print,p_tail);
      000113 C2 AF            [12]  564 	clr	_EA
      000115 78 5B            [12]  565 	mov	r0,#_print
      000117 06               [12]  566 	inc	@r0
      000118 78 5B            [12]  567 	mov	r0,#_print
      00011A C3               [12]  568 	clr	c
      00011B 74 80            [12]  569 	mov	a,#(0x00 ^ 0x80)
      00011D 86 F0            [24]  570 	mov	b,@r0
      00011F 63 F0 80         [24]  571 	xrl	b,#0x80
      000122 95 F0            [12]  572 	subb	a,b
      000124 40 0B            [24]  573 	jc	00118$
      000126 A9 6C            [24]  574 	mov	r1,_p_tail
      000128 E7               [12]  575 	mov	a,@r1
      000129 FF               [12]  576 	mov	r7,a
      00012A 24 24            [12]  577 	add	a,#_bitmap
      00012C F8               [12]  578 	mov	r0,a
      00012D 76 01            [12]  579 	mov	@r0,#0x01
      00012F 15 6C            [12]  580 	dec	_p_tail
      000131                        581 00118$:
      000131 D2 AF            [12]  582 	setb	_EA
      000133 22               [24]  583 	ret
                                    584 ;------------------------------------------------------------
                                    585 ;Allocation info for local variables in function 'Car2'
                                    586 ;------------------------------------------------------------
                                    587 ;	testparking.c:60: void Car2(void) {
                                    588 ;	-----------------------------------------
                                    589 ;	 function Car2
                                    590 ;	-----------------------------------------
      000134                        591 _Car2:
                                    592 ;	testparking.c:61: log[2] = now();
      000134 12 08 7E         [24]  593 	lcall	_now
      000137 E5 82            [12]  594 	mov	a,dpl
      000139 78 32            [12]  595 	mov	r0,#(_log + 0x0002)
      00013B F6               [12]  596 	mov	@r0,a
                                    597 ;	testparking.c:62: SemaphoreWait(mutex,m_tail);
      00013C C2 AF            [12]  598 	clr	_EA
      00013E 78 3A            [12]  599 	mov	r0,#_mutex
      000140 16               [12]  600 	dec	@r0
      000141 78 3A            [12]  601 	mov	r0,#_mutex
      000143 E6               [12]  602 	mov	a,@r0
      000144 30 E7 13         [24]  603 	jnb	acc.7,00102$
      000147 05 3C            [12]  604 	inc	_m_tail
      000149 A9 3C            [24]  605 	mov	r1,_m_tail
      00014B 78 28            [12]  606 	mov	r0,#_ID
      00014D E6               [12]  607 	mov	a,@r0
      00014E F7               [12]  608 	mov	@r1,a
      00014F 78 28            [12]  609 	mov	r0,#_ID
      000151 E6               [12]  610 	mov	a,@r0
      000152 24 24            [12]  611 	add	a,#_bitmap
      000154 F8               [12]  612 	mov	r0,a
      000155 76 FF            [12]  613 	mov	@r0,#0xFF
      000157 12 0A B1         [24]  614 	lcall	_ThreadYield
      00015A                        615 00102$:
      00015A D2 AF            [12]  616 	setb	_EA
                                    617 ;	testparking.c:63: if(!plot[0]) {
      00015C 78 4E            [12]  618 	mov	r0,#_plot
      00015E E6               [12]  619 	mov	a,@r0
      00015F 70 0E            [24]  620 	jnz	00104$
                                    621 ;	testparking.c:64: plot[0] = 2;
      000161 78 4E            [12]  622 	mov	r0,#_plot
      000163 76 02            [12]  623 	mov	@r0,#0x02
                                    624 ;	testparking.c:72: __endasm;
      000165 78 32            [12]  625 	mov r0,#(_log + 0x0002)
      000167 E6               [12]  626 	mov a,@r0
      000168 FF               [12]  627 	mov r7,a
      000169 74 7F            [12]  628 	mov a,#0x7F
      00016B 5F               [12]  629 	anl a,r7
      00016C F6               [12]  630 	mov @r0,a
      00016D 80 0C            [24]  631 	sjmp	00105$
      00016F                        632 00104$:
                                    633 ;	testparking.c:75: plot[1] = 2;
      00016F 78 4F            [12]  634 	mov	r0,#(_plot + 0x0001)
      000171 76 02            [12]  635 	mov	@r0,#0x02
                                    636 ;	testparking.c:83: __endasm;
      000173 78 32            [12]  637 	mov r0,#(_log + 0x0002)
      000175 E6               [12]  638 	mov a,@r0
      000176 FF               [12]  639 	mov r7,a
      000177 74 80            [12]  640 	mov a,#0x80
      000179 4F               [12]  641 	orl a,r7
      00017A F6               [12]  642 	mov @r0,a
      00017B                        643 00105$:
                                    644 ;	testparking.c:85: SemaphoreSignal(mutex,m_tail);
      00017B C2 AF            [12]  645 	clr	_EA
      00017D 78 3A            [12]  646 	mov	r0,#_mutex
      00017F 06               [12]  647 	inc	@r0
      000180 78 3A            [12]  648 	mov	r0,#_mutex
      000182 C3               [12]  649 	clr	c
      000183 74 80            [12]  650 	mov	a,#(0x00 ^ 0x80)
      000185 86 F0            [24]  651 	mov	b,@r0
      000187 63 F0 80         [24]  652 	xrl	b,#0x80
      00018A 95 F0            [12]  653 	subb	a,b
      00018C 40 0B            [24]  654 	jc	00107$
      00018E A9 3C            [24]  655 	mov	r1,_m_tail
      000190 E7               [12]  656 	mov	a,@r1
      000191 FF               [12]  657 	mov	r7,a
      000192 24 24            [12]  658 	add	a,#_bitmap
      000194 F8               [12]  659 	mov	r0,a
      000195 76 01            [12]  660 	mov	@r0,#0x01
      000197 15 3C            [12]  661 	dec	_m_tail
      000199                        662 00107$:
      000199 D2 AF            [12]  663 	setb	_EA
                                    664 ;	testparking.c:86: SemaphoreSignal(print,p_tail);
      00019B C2 AF            [12]  665 	clr	_EA
      00019D 78 5B            [12]  666 	mov	r0,#_print
      00019F 06               [12]  667 	inc	@r0
      0001A0 78 5B            [12]  668 	mov	r0,#_print
      0001A2 C3               [12]  669 	clr	c
      0001A3 74 80            [12]  670 	mov	a,#(0x00 ^ 0x80)
      0001A5 86 F0            [24]  671 	mov	b,@r0
      0001A7 63 F0 80         [24]  672 	xrl	b,#0x80
      0001AA 95 F0            [12]  673 	subb	a,b
      0001AC 40 0B            [24]  674 	jc	00109$
      0001AE A9 6C            [24]  675 	mov	r1,_p_tail
      0001B0 E7               [12]  676 	mov	a,@r1
      0001B1 FF               [12]  677 	mov	r7,a
      0001B2 24 24            [12]  678 	add	a,#_bitmap
      0001B4 F8               [12]  679 	mov	r0,a
      0001B5 76 01            [12]  680 	mov	@r0,#0x01
      0001B7 15 6C            [12]  681 	dec	_p_tail
      0001B9                        682 00109$:
      0001B9 D2 AF            [12]  683 	setb	_EA
                                    684 ;	testparking.c:87: delay(2);
      0001BB 75 82 02         [24]  685 	mov	dpl,#0x02
      0001BE 12 08 83         [24]  686 	lcall	_delay
                                    687 ;	testparking.c:88: log[3] = now();
      0001C1 12 08 7E         [24]  688 	lcall	_now
      0001C4 E5 82            [12]  689 	mov	a,dpl
      0001C6 78 33            [12]  690 	mov	r0,#(_log + 0x0003)
      0001C8 F6               [12]  691 	mov	@r0,a
                                    692 ;	testparking.c:89: SemaphoreWait(mutex,m_tail);
      0001C9 C2 AF            [12]  693 	clr	_EA
      0001CB 78 3A            [12]  694 	mov	r0,#_mutex
      0001CD 16               [12]  695 	dec	@r0
      0001CE 78 3A            [12]  696 	mov	r0,#_mutex
      0001D0 E6               [12]  697 	mov	a,@r0
      0001D1 30 E7 13         [24]  698 	jnb	acc.7,00111$
      0001D4 05 3C            [12]  699 	inc	_m_tail
      0001D6 A9 3C            [24]  700 	mov	r1,_m_tail
      0001D8 78 28            [12]  701 	mov	r0,#_ID
      0001DA E6               [12]  702 	mov	a,@r0
      0001DB F7               [12]  703 	mov	@r1,a
      0001DC 78 28            [12]  704 	mov	r0,#_ID
      0001DE E6               [12]  705 	mov	a,@r0
      0001DF 24 24            [12]  706 	add	a,#_bitmap
      0001E1 F8               [12]  707 	mov	r0,a
      0001E2 76 FF            [12]  708 	mov	@r0,#0xFF
      0001E4 12 0A B1         [24]  709 	lcall	_ThreadYield
      0001E7                        710 00111$:
      0001E7 D2 AF            [12]  711 	setb	_EA
                                    712 ;	testparking.c:90: if(!(plot[0]-2)) {
      0001E9 78 4E            [12]  713 	mov	r0,#_plot
      0001EB E6               [12]  714 	mov	a,@r0
      0001EC FF               [12]  715 	mov	r7,a
      0001ED 33               [12]  716 	rlc	a
      0001EE 95 E0            [12]  717 	subb	a,acc
      0001F0 FE               [12]  718 	mov	r6,a
      0001F1 EF               [12]  719 	mov	a,r7
      0001F2 24 FE            [12]  720 	add	a,#0xFE
      0001F4 FF               [12]  721 	mov	r7,a
      0001F5 EE               [12]  722 	mov	a,r6
      0001F6 34 FF            [12]  723 	addc	a,#0xFF
      0001F8 FE               [12]  724 	mov	r6,a
      0001F9 4F               [12]  725 	orl	a,r7
                                    726 ;	testparking.c:91: plot[0] = 0;
      0001FA 70 0D            [24]  727 	jnz	00113$
      0001FC 78 4E            [12]  728 	mov	r0,#_plot
      0001FE F6               [12]  729 	mov	@r0,a
                                    730 ;	testparking.c:99: __endasm;
      0001FF 78 33            [12]  731 	mov r0,#(_log + 0x0003)
      000201 E6               [12]  732 	mov a,@r0
      000202 FF               [12]  733 	mov r7,a
      000203 74 7F            [12]  734 	mov a,#0x7F
      000205 5F               [12]  735 	anl a,r7
      000206 F6               [12]  736 	mov @r0,a
      000207 80 0C            [24]  737 	sjmp	00114$
      000209                        738 00113$:
                                    739 ;	testparking.c:102: plot[1] = 0;
      000209 78 4F            [12]  740 	mov	r0,#(_plot + 0x0001)
      00020B 76 00            [12]  741 	mov	@r0,#0x00
                                    742 ;	testparking.c:110: __endasm;
      00020D 78 33            [12]  743 	mov r0,#(_log + 0x0003)
      00020F E6               [12]  744 	mov a,@r0
      000210 FF               [12]  745 	mov r7,a
      000211 74 80            [12]  746 	mov a,#0x80
      000213 4F               [12]  747 	orl a,r7
      000214 F6               [12]  748 	mov @r0,a
      000215                        749 00114$:
                                    750 ;	testparking.c:112: SemaphoreSignal(mutex,m_tail);
      000215 C2 AF            [12]  751 	clr	_EA
      000217 78 3A            [12]  752 	mov	r0,#_mutex
      000219 06               [12]  753 	inc	@r0
      00021A 78 3A            [12]  754 	mov	r0,#_mutex
      00021C C3               [12]  755 	clr	c
      00021D 74 80            [12]  756 	mov	a,#(0x00 ^ 0x80)
      00021F 86 F0            [24]  757 	mov	b,@r0
      000221 63 F0 80         [24]  758 	xrl	b,#0x80
      000224 95 F0            [12]  759 	subb	a,b
      000226 40 0B            [24]  760 	jc	00116$
      000228 A9 3C            [24]  761 	mov	r1,_m_tail
      00022A E7               [12]  762 	mov	a,@r1
      00022B FF               [12]  763 	mov	r7,a
      00022C 24 24            [12]  764 	add	a,#_bitmap
      00022E F8               [12]  765 	mov	r0,a
      00022F 76 01            [12]  766 	mov	@r0,#0x01
      000231 15 3C            [12]  767 	dec	_m_tail
      000233                        768 00116$:
      000233 D2 AF            [12]  769 	setb	_EA
                                    770 ;	testparking.c:113: SemaphoreSignal(print,p_tail);
      000235 C2 AF            [12]  771 	clr	_EA
      000237 78 5B            [12]  772 	mov	r0,#_print
      000239 06               [12]  773 	inc	@r0
      00023A 78 5B            [12]  774 	mov	r0,#_print
      00023C C3               [12]  775 	clr	c
      00023D 74 80            [12]  776 	mov	a,#(0x00 ^ 0x80)
      00023F 86 F0            [24]  777 	mov	b,@r0
      000241 63 F0 80         [24]  778 	xrl	b,#0x80
      000244 95 F0            [12]  779 	subb	a,b
      000246 40 0B            [24]  780 	jc	00118$
      000248 A9 6C            [24]  781 	mov	r1,_p_tail
      00024A E7               [12]  782 	mov	a,@r1
      00024B FF               [12]  783 	mov	r7,a
      00024C 24 24            [12]  784 	add	a,#_bitmap
      00024E F8               [12]  785 	mov	r0,a
      00024F 76 01            [12]  786 	mov	@r0,#0x01
      000251 15 6C            [12]  787 	dec	_p_tail
      000253                        788 00118$:
      000253 D2 AF            [12]  789 	setb	_EA
      000255 22               [24]  790 	ret
                                    791 ;------------------------------------------------------------
                                    792 ;Allocation info for local variables in function 'Car3'
                                    793 ;------------------------------------------------------------
                                    794 ;	testparking.c:116: void Car3(void) {
                                    795 ;	-----------------------------------------
                                    796 ;	 function Car3
                                    797 ;	-----------------------------------------
      000256                        798 _Car3:
                                    799 ;	testparking.c:117: log[4] = now();
      000256 12 08 7E         [24]  800 	lcall	_now
      000259 E5 82            [12]  801 	mov	a,dpl
      00025B 78 34            [12]  802 	mov	r0,#(_log + 0x0004)
      00025D F6               [12]  803 	mov	@r0,a
                                    804 ;	testparking.c:118: SemaphoreWait(mutex,m_tail);
      00025E C2 AF            [12]  805 	clr	_EA
      000260 78 3A            [12]  806 	mov	r0,#_mutex
      000262 16               [12]  807 	dec	@r0
      000263 78 3A            [12]  808 	mov	r0,#_mutex
      000265 E6               [12]  809 	mov	a,@r0
      000266 30 E7 13         [24]  810 	jnb	acc.7,00102$
      000269 05 3C            [12]  811 	inc	_m_tail
      00026B A9 3C            [24]  812 	mov	r1,_m_tail
      00026D 78 28            [12]  813 	mov	r0,#_ID
      00026F E6               [12]  814 	mov	a,@r0
      000270 F7               [12]  815 	mov	@r1,a
      000271 78 28            [12]  816 	mov	r0,#_ID
      000273 E6               [12]  817 	mov	a,@r0
      000274 24 24            [12]  818 	add	a,#_bitmap
      000276 F8               [12]  819 	mov	r0,a
      000277 76 FF            [12]  820 	mov	@r0,#0xFF
      000279 12 0A B1         [24]  821 	lcall	_ThreadYield
      00027C                        822 00102$:
      00027C D2 AF            [12]  823 	setb	_EA
                                    824 ;	testparking.c:119: if(!plot[0]) {
      00027E 78 4E            [12]  825 	mov	r0,#_plot
      000280 E6               [12]  826 	mov	a,@r0
      000281 70 0E            [24]  827 	jnz	00104$
                                    828 ;	testparking.c:120: plot[0] = 3;
      000283 78 4E            [12]  829 	mov	r0,#_plot
      000285 76 03            [12]  830 	mov	@r0,#0x03
                                    831 ;	testparking.c:128: __endasm;
      000287 78 34            [12]  832 	mov r0,#(_log + 0x0004)
      000289 E6               [12]  833 	mov a,@r0
      00028A FF               [12]  834 	mov r7,a
      00028B 74 7F            [12]  835 	mov a,#0x7F
      00028D 5F               [12]  836 	anl a,r7
      00028E F6               [12]  837 	mov @r0,a
      00028F 80 0C            [24]  838 	sjmp	00105$
      000291                        839 00104$:
                                    840 ;	testparking.c:131: plot[1] = 3;
      000291 78 4F            [12]  841 	mov	r0,#(_plot + 0x0001)
      000293 76 03            [12]  842 	mov	@r0,#0x03
                                    843 ;	testparking.c:139: __endasm;
      000295 78 34            [12]  844 	mov r0,#(_log + 0x0004)
      000297 E6               [12]  845 	mov a,@r0
      000298 FF               [12]  846 	mov r7,a
      000299 74 80            [12]  847 	mov a,#0x80
      00029B 4F               [12]  848 	orl a,r7
      00029C F6               [12]  849 	mov @r0,a
      00029D                        850 00105$:
                                    851 ;	testparking.c:141: SemaphoreSignal(mutex,m_tail);
      00029D C2 AF            [12]  852 	clr	_EA
      00029F 78 3A            [12]  853 	mov	r0,#_mutex
      0002A1 06               [12]  854 	inc	@r0
      0002A2 78 3A            [12]  855 	mov	r0,#_mutex
      0002A4 C3               [12]  856 	clr	c
      0002A5 74 80            [12]  857 	mov	a,#(0x00 ^ 0x80)
      0002A7 86 F0            [24]  858 	mov	b,@r0
      0002A9 63 F0 80         [24]  859 	xrl	b,#0x80
      0002AC 95 F0            [12]  860 	subb	a,b
      0002AE 40 0B            [24]  861 	jc	00107$
      0002B0 A9 3C            [24]  862 	mov	r1,_m_tail
      0002B2 E7               [12]  863 	mov	a,@r1
      0002B3 FF               [12]  864 	mov	r7,a
      0002B4 24 24            [12]  865 	add	a,#_bitmap
      0002B6 F8               [12]  866 	mov	r0,a
      0002B7 76 01            [12]  867 	mov	@r0,#0x01
      0002B9 15 3C            [12]  868 	dec	_m_tail
      0002BB                        869 00107$:
      0002BB D2 AF            [12]  870 	setb	_EA
                                    871 ;	testparking.c:142: SemaphoreSignal(print,p_tail);
      0002BD C2 AF            [12]  872 	clr	_EA
      0002BF 78 5B            [12]  873 	mov	r0,#_print
      0002C1 06               [12]  874 	inc	@r0
      0002C2 78 5B            [12]  875 	mov	r0,#_print
      0002C4 C3               [12]  876 	clr	c
      0002C5 74 80            [12]  877 	mov	a,#(0x00 ^ 0x80)
      0002C7 86 F0            [24]  878 	mov	b,@r0
      0002C9 63 F0 80         [24]  879 	xrl	b,#0x80
      0002CC 95 F0            [12]  880 	subb	a,b
      0002CE 40 0B            [24]  881 	jc	00109$
      0002D0 A9 6C            [24]  882 	mov	r1,_p_tail
      0002D2 E7               [12]  883 	mov	a,@r1
      0002D3 FF               [12]  884 	mov	r7,a
      0002D4 24 24            [12]  885 	add	a,#_bitmap
      0002D6 F8               [12]  886 	mov	r0,a
      0002D7 76 01            [12]  887 	mov	@r0,#0x01
      0002D9 15 6C            [12]  888 	dec	_p_tail
      0002DB                        889 00109$:
      0002DB D2 AF            [12]  890 	setb	_EA
                                    891 ;	testparking.c:143: delay(2);
      0002DD 75 82 02         [24]  892 	mov	dpl,#0x02
      0002E0 12 08 83         [24]  893 	lcall	_delay
                                    894 ;	testparking.c:144: log[5] = now();
      0002E3 12 08 7E         [24]  895 	lcall	_now
      0002E6 E5 82            [12]  896 	mov	a,dpl
      0002E8 78 35            [12]  897 	mov	r0,#(_log + 0x0005)
      0002EA F6               [12]  898 	mov	@r0,a
                                    899 ;	testparking.c:145: SemaphoreWait(mutex,m_tail);
      0002EB C2 AF            [12]  900 	clr	_EA
      0002ED 78 3A            [12]  901 	mov	r0,#_mutex
      0002EF 16               [12]  902 	dec	@r0
      0002F0 78 3A            [12]  903 	mov	r0,#_mutex
      0002F2 E6               [12]  904 	mov	a,@r0
      0002F3 30 E7 13         [24]  905 	jnb	acc.7,00111$
      0002F6 05 3C            [12]  906 	inc	_m_tail
      0002F8 A9 3C            [24]  907 	mov	r1,_m_tail
      0002FA 78 28            [12]  908 	mov	r0,#_ID
      0002FC E6               [12]  909 	mov	a,@r0
      0002FD F7               [12]  910 	mov	@r1,a
      0002FE 78 28            [12]  911 	mov	r0,#_ID
      000300 E6               [12]  912 	mov	a,@r0
      000301 24 24            [12]  913 	add	a,#_bitmap
      000303 F8               [12]  914 	mov	r0,a
      000304 76 FF            [12]  915 	mov	@r0,#0xFF
      000306 12 0A B1         [24]  916 	lcall	_ThreadYield
      000309                        917 00111$:
      000309 D2 AF            [12]  918 	setb	_EA
                                    919 ;	testparking.c:146: if(!(plot[0]-3)) {
      00030B 78 4E            [12]  920 	mov	r0,#_plot
      00030D E6               [12]  921 	mov	a,@r0
      00030E FF               [12]  922 	mov	r7,a
      00030F 33               [12]  923 	rlc	a
      000310 95 E0            [12]  924 	subb	a,acc
      000312 FE               [12]  925 	mov	r6,a
      000313 EF               [12]  926 	mov	a,r7
      000314 24 FD            [12]  927 	add	a,#0xFD
      000316 FF               [12]  928 	mov	r7,a
      000317 EE               [12]  929 	mov	a,r6
      000318 34 FF            [12]  930 	addc	a,#0xFF
      00031A FE               [12]  931 	mov	r6,a
      00031B 4F               [12]  932 	orl	a,r7
                                    933 ;	testparking.c:147: plot[0] = 0;
      00031C 70 0D            [24]  934 	jnz	00113$
      00031E 78 4E            [12]  935 	mov	r0,#_plot
      000320 F6               [12]  936 	mov	@r0,a
                                    937 ;	testparking.c:155: __endasm;
      000321 78 35            [12]  938 	mov r0,#(_log + 0x0005)
      000323 E6               [12]  939 	mov a,@r0
      000324 FF               [12]  940 	mov r7,a
      000325 74 7F            [12]  941 	mov a,#0x7F
      000327 5F               [12]  942 	anl a,r7
      000328 F6               [12]  943 	mov @r0,a
      000329 80 0C            [24]  944 	sjmp	00114$
      00032B                        945 00113$:
                                    946 ;	testparking.c:158: plot[1] = 0;
      00032B 78 4F            [12]  947 	mov	r0,#(_plot + 0x0001)
      00032D 76 00            [12]  948 	mov	@r0,#0x00
                                    949 ;	testparking.c:166: __endasm;
      00032F 78 35            [12]  950 	mov r0,#(_log + 0x0005)
      000331 E6               [12]  951 	mov a,@r0
      000332 FF               [12]  952 	mov r7,a
      000333 74 80            [12]  953 	mov a,#0x80
      000335 4F               [12]  954 	orl a,r7
      000336 F6               [12]  955 	mov @r0,a
      000337                        956 00114$:
                                    957 ;	testparking.c:168: SemaphoreSignal(mutex,m_tail);
      000337 C2 AF            [12]  958 	clr	_EA
      000339 78 3A            [12]  959 	mov	r0,#_mutex
      00033B 06               [12]  960 	inc	@r0
      00033C 78 3A            [12]  961 	mov	r0,#_mutex
      00033E C3               [12]  962 	clr	c
      00033F 74 80            [12]  963 	mov	a,#(0x00 ^ 0x80)
      000341 86 F0            [24]  964 	mov	b,@r0
      000343 63 F0 80         [24]  965 	xrl	b,#0x80
      000346 95 F0            [12]  966 	subb	a,b
      000348 40 0B            [24]  967 	jc	00116$
      00034A A9 3C            [24]  968 	mov	r1,_m_tail
      00034C E7               [12]  969 	mov	a,@r1
      00034D FF               [12]  970 	mov	r7,a
      00034E 24 24            [12]  971 	add	a,#_bitmap
      000350 F8               [12]  972 	mov	r0,a
      000351 76 01            [12]  973 	mov	@r0,#0x01
      000353 15 3C            [12]  974 	dec	_m_tail
      000355                        975 00116$:
      000355 D2 AF            [12]  976 	setb	_EA
                                    977 ;	testparking.c:169: SemaphoreSignal(print,p_tail);
      000357 C2 AF            [12]  978 	clr	_EA
      000359 78 5B            [12]  979 	mov	r0,#_print
      00035B 06               [12]  980 	inc	@r0
      00035C 78 5B            [12]  981 	mov	r0,#_print
      00035E C3               [12]  982 	clr	c
      00035F 74 80            [12]  983 	mov	a,#(0x00 ^ 0x80)
      000361 86 F0            [24]  984 	mov	b,@r0
      000363 63 F0 80         [24]  985 	xrl	b,#0x80
      000366 95 F0            [12]  986 	subb	a,b
      000368 40 0B            [24]  987 	jc	00118$
      00036A A9 6C            [24]  988 	mov	r1,_p_tail
      00036C E7               [12]  989 	mov	a,@r1
      00036D FF               [12]  990 	mov	r7,a
      00036E 24 24            [12]  991 	add	a,#_bitmap
      000370 F8               [12]  992 	mov	r0,a
      000371 76 01            [12]  993 	mov	@r0,#0x01
      000373 15 6C            [12]  994 	dec	_p_tail
      000375                        995 00118$:
      000375 D2 AF            [12]  996 	setb	_EA
      000377 22               [24]  997 	ret
                                    998 ;------------------------------------------------------------
                                    999 ;Allocation info for local variables in function 'Car4'
                                   1000 ;------------------------------------------------------------
                                   1001 ;	testparking.c:172: void Car4(void) {
                                   1002 ;	-----------------------------------------
                                   1003 ;	 function Car4
                                   1004 ;	-----------------------------------------
      000378                       1005 _Car4:
                                   1006 ;	testparking.c:173: log[6] = now();
      000378 12 08 7E         [24] 1007 	lcall	_now
      00037B E5 82            [12] 1008 	mov	a,dpl
      00037D 78 36            [12] 1009 	mov	r0,#(_log + 0x0006)
      00037F F6               [12] 1010 	mov	@r0,a
                                   1011 ;	testparking.c:174: SemaphoreWait(mutex,m_tail);
      000380 C2 AF            [12] 1012 	clr	_EA
      000382 78 3A            [12] 1013 	mov	r0,#_mutex
      000384 16               [12] 1014 	dec	@r0
      000385 78 3A            [12] 1015 	mov	r0,#_mutex
      000387 E6               [12] 1016 	mov	a,@r0
      000388 30 E7 13         [24] 1017 	jnb	acc.7,00102$
      00038B 05 3C            [12] 1018 	inc	_m_tail
      00038D A9 3C            [24] 1019 	mov	r1,_m_tail
      00038F 78 28            [12] 1020 	mov	r0,#_ID
      000391 E6               [12] 1021 	mov	a,@r0
      000392 F7               [12] 1022 	mov	@r1,a
      000393 78 28            [12] 1023 	mov	r0,#_ID
      000395 E6               [12] 1024 	mov	a,@r0
      000396 24 24            [12] 1025 	add	a,#_bitmap
      000398 F8               [12] 1026 	mov	r0,a
      000399 76 FF            [12] 1027 	mov	@r0,#0xFF
      00039B 12 0A B1         [24] 1028 	lcall	_ThreadYield
      00039E                       1029 00102$:
      00039E D2 AF            [12] 1030 	setb	_EA
                                   1031 ;	testparking.c:175: if(!plot[0]) {
      0003A0 78 4E            [12] 1032 	mov	r0,#_plot
      0003A2 E6               [12] 1033 	mov	a,@r0
      0003A3 70 0E            [24] 1034 	jnz	00104$
                                   1035 ;	testparking.c:176: plot[0] = 4;
      0003A5 78 4E            [12] 1036 	mov	r0,#_plot
      0003A7 76 04            [12] 1037 	mov	@r0,#0x04
                                   1038 ;	testparking.c:184: __endasm;
      0003A9 78 36            [12] 1039 	mov r0,#(_log + 0x0006)
      0003AB E6               [12] 1040 	mov a,@r0
      0003AC FF               [12] 1041 	mov r7,a
      0003AD 74 7F            [12] 1042 	mov a,#0x7F
      0003AF 5F               [12] 1043 	anl a,r7
      0003B0 F6               [12] 1044 	mov @r0,a
      0003B1 80 0C            [24] 1045 	sjmp	00105$
      0003B3                       1046 00104$:
                                   1047 ;	testparking.c:187: plot[1] = 4;
      0003B3 78 4F            [12] 1048 	mov	r0,#(_plot + 0x0001)
      0003B5 76 04            [12] 1049 	mov	@r0,#0x04
                                   1050 ;	testparking.c:195: __endasm;
      0003B7 78 36            [12] 1051 	mov r0,#(_log + 0x0006)
      0003B9 E6               [12] 1052 	mov a,@r0
      0003BA FF               [12] 1053 	mov r7,a
      0003BB 74 80            [12] 1054 	mov a,#0x80
      0003BD 4F               [12] 1055 	orl a,r7
      0003BE F6               [12] 1056 	mov @r0,a
      0003BF                       1057 00105$:
                                   1058 ;	testparking.c:197: SemaphoreSignal(mutex,m_tail);
      0003BF C2 AF            [12] 1059 	clr	_EA
      0003C1 78 3A            [12] 1060 	mov	r0,#_mutex
      0003C3 06               [12] 1061 	inc	@r0
      0003C4 78 3A            [12] 1062 	mov	r0,#_mutex
      0003C6 C3               [12] 1063 	clr	c
      0003C7 74 80            [12] 1064 	mov	a,#(0x00 ^ 0x80)
      0003C9 86 F0            [24] 1065 	mov	b,@r0
      0003CB 63 F0 80         [24] 1066 	xrl	b,#0x80
      0003CE 95 F0            [12] 1067 	subb	a,b
      0003D0 40 0B            [24] 1068 	jc	00107$
      0003D2 A9 3C            [24] 1069 	mov	r1,_m_tail
      0003D4 E7               [12] 1070 	mov	a,@r1
      0003D5 FF               [12] 1071 	mov	r7,a
      0003D6 24 24            [12] 1072 	add	a,#_bitmap
      0003D8 F8               [12] 1073 	mov	r0,a
      0003D9 76 01            [12] 1074 	mov	@r0,#0x01
      0003DB 15 3C            [12] 1075 	dec	_m_tail
      0003DD                       1076 00107$:
      0003DD D2 AF            [12] 1077 	setb	_EA
                                   1078 ;	testparking.c:198: SemaphoreSignal(print,p_tail);
      0003DF C2 AF            [12] 1079 	clr	_EA
      0003E1 78 5B            [12] 1080 	mov	r0,#_print
      0003E3 06               [12] 1081 	inc	@r0
      0003E4 78 5B            [12] 1082 	mov	r0,#_print
      0003E6 C3               [12] 1083 	clr	c
      0003E7 74 80            [12] 1084 	mov	a,#(0x00 ^ 0x80)
      0003E9 86 F0            [24] 1085 	mov	b,@r0
      0003EB 63 F0 80         [24] 1086 	xrl	b,#0x80
      0003EE 95 F0            [12] 1087 	subb	a,b
      0003F0 40 0B            [24] 1088 	jc	00109$
      0003F2 A9 6C            [24] 1089 	mov	r1,_p_tail
      0003F4 E7               [12] 1090 	mov	a,@r1
      0003F5 FF               [12] 1091 	mov	r7,a
      0003F6 24 24            [12] 1092 	add	a,#_bitmap
      0003F8 F8               [12] 1093 	mov	r0,a
      0003F9 76 01            [12] 1094 	mov	@r0,#0x01
      0003FB 15 6C            [12] 1095 	dec	_p_tail
      0003FD                       1096 00109$:
      0003FD D2 AF            [12] 1097 	setb	_EA
                                   1098 ;	testparking.c:199: delay(2);
      0003FF 75 82 02         [24] 1099 	mov	dpl,#0x02
      000402 12 08 83         [24] 1100 	lcall	_delay
                                   1101 ;	testparking.c:200: log[7] = now();
      000405 12 08 7E         [24] 1102 	lcall	_now
      000408 E5 82            [12] 1103 	mov	a,dpl
      00040A 78 37            [12] 1104 	mov	r0,#(_log + 0x0007)
      00040C F6               [12] 1105 	mov	@r0,a
                                   1106 ;	testparking.c:201: SemaphoreWait(mutex,m_tail);
      00040D C2 AF            [12] 1107 	clr	_EA
      00040F 78 3A            [12] 1108 	mov	r0,#_mutex
      000411 16               [12] 1109 	dec	@r0
      000412 78 3A            [12] 1110 	mov	r0,#_mutex
      000414 E6               [12] 1111 	mov	a,@r0
      000415 30 E7 13         [24] 1112 	jnb	acc.7,00111$
      000418 05 3C            [12] 1113 	inc	_m_tail
      00041A A9 3C            [24] 1114 	mov	r1,_m_tail
      00041C 78 28            [12] 1115 	mov	r0,#_ID
      00041E E6               [12] 1116 	mov	a,@r0
      00041F F7               [12] 1117 	mov	@r1,a
      000420 78 28            [12] 1118 	mov	r0,#_ID
      000422 E6               [12] 1119 	mov	a,@r0
      000423 24 24            [12] 1120 	add	a,#_bitmap
      000425 F8               [12] 1121 	mov	r0,a
      000426 76 FF            [12] 1122 	mov	@r0,#0xFF
      000428 12 0A B1         [24] 1123 	lcall	_ThreadYield
      00042B                       1124 00111$:
      00042B D2 AF            [12] 1125 	setb	_EA
                                   1126 ;	testparking.c:202: if(!(plot[0]-4)) {
      00042D 78 4E            [12] 1127 	mov	r0,#_plot
      00042F E6               [12] 1128 	mov	a,@r0
      000430 FF               [12] 1129 	mov	r7,a
      000431 33               [12] 1130 	rlc	a
      000432 95 E0            [12] 1131 	subb	a,acc
      000434 FE               [12] 1132 	mov	r6,a
      000435 EF               [12] 1133 	mov	a,r7
      000436 24 FC            [12] 1134 	add	a,#0xFC
      000438 FF               [12] 1135 	mov	r7,a
      000439 EE               [12] 1136 	mov	a,r6
      00043A 34 FF            [12] 1137 	addc	a,#0xFF
      00043C FE               [12] 1138 	mov	r6,a
      00043D 4F               [12] 1139 	orl	a,r7
                                   1140 ;	testparking.c:203: plot[0] = 0;
      00043E 70 0D            [24] 1141 	jnz	00113$
      000440 78 4E            [12] 1142 	mov	r0,#_plot
      000442 F6               [12] 1143 	mov	@r0,a
                                   1144 ;	testparking.c:211: __endasm;
      000443 78 37            [12] 1145 	mov r0,#(_log + 0x0007)
      000445 E6               [12] 1146 	mov a,@r0
      000446 FF               [12] 1147 	mov r7,a
      000447 74 7F            [12] 1148 	mov a,#0x7F
      000449 5F               [12] 1149 	anl a,r7
      00044A F6               [12] 1150 	mov @r0,a
      00044B 80 0C            [24] 1151 	sjmp	00114$
      00044D                       1152 00113$:
                                   1153 ;	testparking.c:214: plot[1] = 0;
      00044D 78 4F            [12] 1154 	mov	r0,#(_plot + 0x0001)
      00044F 76 00            [12] 1155 	mov	@r0,#0x00
                                   1156 ;	testparking.c:222: __endasm;
      000451 78 37            [12] 1157 	mov r0,#(_log + 0x0007)
      000453 E6               [12] 1158 	mov a,@r0
      000454 FF               [12] 1159 	mov r7,a
      000455 74 80            [12] 1160 	mov a,#0x80
      000457 4F               [12] 1161 	orl a,r7
      000458 F6               [12] 1162 	mov @r0,a
      000459                       1163 00114$:
                                   1164 ;	testparking.c:224: SemaphoreSignal(mutex,m_tail);
      000459 C2 AF            [12] 1165 	clr	_EA
      00045B 78 3A            [12] 1166 	mov	r0,#_mutex
      00045D 06               [12] 1167 	inc	@r0
      00045E 78 3A            [12] 1168 	mov	r0,#_mutex
      000460 C3               [12] 1169 	clr	c
      000461 74 80            [12] 1170 	mov	a,#(0x00 ^ 0x80)
      000463 86 F0            [24] 1171 	mov	b,@r0
      000465 63 F0 80         [24] 1172 	xrl	b,#0x80
      000468 95 F0            [12] 1173 	subb	a,b
      00046A 40 0B            [24] 1174 	jc	00116$
      00046C A9 3C            [24] 1175 	mov	r1,_m_tail
      00046E E7               [12] 1176 	mov	a,@r1
      00046F FF               [12] 1177 	mov	r7,a
      000470 24 24            [12] 1178 	add	a,#_bitmap
      000472 F8               [12] 1179 	mov	r0,a
      000473 76 01            [12] 1180 	mov	@r0,#0x01
      000475 15 3C            [12] 1181 	dec	_m_tail
      000477                       1182 00116$:
      000477 D2 AF            [12] 1183 	setb	_EA
                                   1184 ;	testparking.c:225: SemaphoreSignal(print,p_tail);
      000479 C2 AF            [12] 1185 	clr	_EA
      00047B 78 5B            [12] 1186 	mov	r0,#_print
      00047D 06               [12] 1187 	inc	@r0
      00047E 78 5B            [12] 1188 	mov	r0,#_print
      000480 C3               [12] 1189 	clr	c
      000481 74 80            [12] 1190 	mov	a,#(0x00 ^ 0x80)
      000483 86 F0            [24] 1191 	mov	b,@r0
      000485 63 F0 80         [24] 1192 	xrl	b,#0x80
      000488 95 F0            [12] 1193 	subb	a,b
      00048A 40 0B            [24] 1194 	jc	00118$
      00048C A9 6C            [24] 1195 	mov	r1,_p_tail
      00048E E7               [12] 1196 	mov	a,@r1
      00048F FF               [12] 1197 	mov	r7,a
      000490 24 24            [12] 1198 	add	a,#_bitmap
      000492 F8               [12] 1199 	mov	r0,a
      000493 76 01            [12] 1200 	mov	@r0,#0x01
      000495 15 6C            [12] 1201 	dec	_p_tail
      000497                       1202 00118$:
      000497 D2 AF            [12] 1203 	setb	_EA
      000499 22               [24] 1204 	ret
                                   1205 ;------------------------------------------------------------
                                   1206 ;Allocation info for local variables in function 'Car5'
                                   1207 ;------------------------------------------------------------
                                   1208 ;	testparking.c:228: void Car5(void) {
                                   1209 ;	-----------------------------------------
                                   1210 ;	 function Car5
                                   1211 ;	-----------------------------------------
      00049A                       1212 _Car5:
                                   1213 ;	testparking.c:229: log[8] = now();
      00049A 12 08 7E         [24] 1214 	lcall	_now
      00049D E5 82            [12] 1215 	mov	a,dpl
      00049F 78 38            [12] 1216 	mov	r0,#(_log + 0x0008)
      0004A1 F6               [12] 1217 	mov	@r0,a
                                   1218 ;	testparking.c:230: SemaphoreWait(mutex,m_tail);
      0004A2 C2 AF            [12] 1219 	clr	_EA
      0004A4 78 3A            [12] 1220 	mov	r0,#_mutex
      0004A6 16               [12] 1221 	dec	@r0
      0004A7 78 3A            [12] 1222 	mov	r0,#_mutex
      0004A9 E6               [12] 1223 	mov	a,@r0
      0004AA 30 E7 13         [24] 1224 	jnb	acc.7,00102$
      0004AD 05 3C            [12] 1225 	inc	_m_tail
      0004AF A9 3C            [24] 1226 	mov	r1,_m_tail
      0004B1 78 28            [12] 1227 	mov	r0,#_ID
      0004B3 E6               [12] 1228 	mov	a,@r0
      0004B4 F7               [12] 1229 	mov	@r1,a
      0004B5 78 28            [12] 1230 	mov	r0,#_ID
      0004B7 E6               [12] 1231 	mov	a,@r0
      0004B8 24 24            [12] 1232 	add	a,#_bitmap
      0004BA F8               [12] 1233 	mov	r0,a
      0004BB 76 FF            [12] 1234 	mov	@r0,#0xFF
      0004BD 12 0A B1         [24] 1235 	lcall	_ThreadYield
      0004C0                       1236 00102$:
      0004C0 D2 AF            [12] 1237 	setb	_EA
                                   1238 ;	testparking.c:231: if(!plot[0]) {
      0004C2 78 4E            [12] 1239 	mov	r0,#_plot
      0004C4 E6               [12] 1240 	mov	a,@r0
      0004C5 70 0E            [24] 1241 	jnz	00104$
                                   1242 ;	testparking.c:232: plot[0] = 5;
      0004C7 78 4E            [12] 1243 	mov	r0,#_plot
      0004C9 76 05            [12] 1244 	mov	@r0,#0x05
                                   1245 ;	testparking.c:240: __endasm;
      0004CB 78 38            [12] 1246 	mov r0,#(_log + 0x0008)
      0004CD E6               [12] 1247 	mov a,@r0
      0004CE FF               [12] 1248 	mov r7,a
      0004CF 74 7F            [12] 1249 	mov a,#0x7F
      0004D1 5F               [12] 1250 	anl a,r7
      0004D2 F6               [12] 1251 	mov @r0,a
      0004D3 80 0C            [24] 1252 	sjmp	00105$
      0004D5                       1253 00104$:
                                   1254 ;	testparking.c:243: plot[1] = 5;
      0004D5 78 4F            [12] 1255 	mov	r0,#(_plot + 0x0001)
      0004D7 76 05            [12] 1256 	mov	@r0,#0x05
                                   1257 ;	testparking.c:251: __endasm;
      0004D9 78 38            [12] 1258 	mov r0,#(_log + 0x0008)
      0004DB E6               [12] 1259 	mov a,@r0
      0004DC FF               [12] 1260 	mov r7,a
      0004DD 74 80            [12] 1261 	mov a,#0x80
      0004DF 4F               [12] 1262 	orl a,r7
      0004E0 F6               [12] 1263 	mov @r0,a
      0004E1                       1264 00105$:
                                   1265 ;	testparking.c:253: SemaphoreSignal(mutex,m_tail);
      0004E1 C2 AF            [12] 1266 	clr	_EA
      0004E3 78 3A            [12] 1267 	mov	r0,#_mutex
      0004E5 06               [12] 1268 	inc	@r0
      0004E6 78 3A            [12] 1269 	mov	r0,#_mutex
      0004E8 C3               [12] 1270 	clr	c
      0004E9 74 80            [12] 1271 	mov	a,#(0x00 ^ 0x80)
      0004EB 86 F0            [24] 1272 	mov	b,@r0
      0004ED 63 F0 80         [24] 1273 	xrl	b,#0x80
      0004F0 95 F0            [12] 1274 	subb	a,b
      0004F2 40 0B            [24] 1275 	jc	00107$
      0004F4 A9 3C            [24] 1276 	mov	r1,_m_tail
      0004F6 E7               [12] 1277 	mov	a,@r1
      0004F7 FF               [12] 1278 	mov	r7,a
      0004F8 24 24            [12] 1279 	add	a,#_bitmap
      0004FA F8               [12] 1280 	mov	r0,a
      0004FB 76 01            [12] 1281 	mov	@r0,#0x01
      0004FD 15 3C            [12] 1282 	dec	_m_tail
      0004FF                       1283 00107$:
      0004FF D2 AF            [12] 1284 	setb	_EA
                                   1285 ;	testparking.c:254: SemaphoreSignal(print,p_tail);
      000501 C2 AF            [12] 1286 	clr	_EA
      000503 78 5B            [12] 1287 	mov	r0,#_print
      000505 06               [12] 1288 	inc	@r0
      000506 78 5B            [12] 1289 	mov	r0,#_print
      000508 C3               [12] 1290 	clr	c
      000509 74 80            [12] 1291 	mov	a,#(0x00 ^ 0x80)
      00050B 86 F0            [24] 1292 	mov	b,@r0
      00050D 63 F0 80         [24] 1293 	xrl	b,#0x80
      000510 95 F0            [12] 1294 	subb	a,b
      000512 40 0B            [24] 1295 	jc	00109$
      000514 A9 6C            [24] 1296 	mov	r1,_p_tail
      000516 E7               [12] 1297 	mov	a,@r1
      000517 FF               [12] 1298 	mov	r7,a
      000518 24 24            [12] 1299 	add	a,#_bitmap
      00051A F8               [12] 1300 	mov	r0,a
      00051B 76 01            [12] 1301 	mov	@r0,#0x01
      00051D 15 6C            [12] 1302 	dec	_p_tail
      00051F                       1303 00109$:
      00051F D2 AF            [12] 1304 	setb	_EA
                                   1305 ;	testparking.c:255: delay(2);
      000521 75 82 02         [24] 1306 	mov	dpl,#0x02
      000524 12 08 83         [24] 1307 	lcall	_delay
                                   1308 ;	testparking.c:256: log[9] = now();
      000527 12 08 7E         [24] 1309 	lcall	_now
      00052A E5 82            [12] 1310 	mov	a,dpl
      00052C 78 39            [12] 1311 	mov	r0,#(_log + 0x0009)
      00052E F6               [12] 1312 	mov	@r0,a
                                   1313 ;	testparking.c:257: SemaphoreWait(mutex,m_tail);
      00052F C2 AF            [12] 1314 	clr	_EA
      000531 78 3A            [12] 1315 	mov	r0,#_mutex
      000533 16               [12] 1316 	dec	@r0
      000534 78 3A            [12] 1317 	mov	r0,#_mutex
      000536 E6               [12] 1318 	mov	a,@r0
      000537 30 E7 13         [24] 1319 	jnb	acc.7,00111$
      00053A 05 3C            [12] 1320 	inc	_m_tail
      00053C A9 3C            [24] 1321 	mov	r1,_m_tail
      00053E 78 28            [12] 1322 	mov	r0,#_ID
      000540 E6               [12] 1323 	mov	a,@r0
      000541 F7               [12] 1324 	mov	@r1,a
      000542 78 28            [12] 1325 	mov	r0,#_ID
      000544 E6               [12] 1326 	mov	a,@r0
      000545 24 24            [12] 1327 	add	a,#_bitmap
      000547 F8               [12] 1328 	mov	r0,a
      000548 76 FF            [12] 1329 	mov	@r0,#0xFF
      00054A 12 0A B1         [24] 1330 	lcall	_ThreadYield
      00054D                       1331 00111$:
      00054D D2 AF            [12] 1332 	setb	_EA
                                   1333 ;	testparking.c:258: if(!(plot[0]-5)) {
      00054F 78 4E            [12] 1334 	mov	r0,#_plot
      000551 E6               [12] 1335 	mov	a,@r0
      000552 FF               [12] 1336 	mov	r7,a
      000553 33               [12] 1337 	rlc	a
      000554 95 E0            [12] 1338 	subb	a,acc
      000556 FE               [12] 1339 	mov	r6,a
      000557 EF               [12] 1340 	mov	a,r7
      000558 24 FB            [12] 1341 	add	a,#0xFB
      00055A FF               [12] 1342 	mov	r7,a
      00055B EE               [12] 1343 	mov	a,r6
      00055C 34 FF            [12] 1344 	addc	a,#0xFF
      00055E FE               [12] 1345 	mov	r6,a
      00055F 4F               [12] 1346 	orl	a,r7
                                   1347 ;	testparking.c:259: plot[0] = 0;
      000560 70 0D            [24] 1348 	jnz	00113$
      000562 78 4E            [12] 1349 	mov	r0,#_plot
      000564 F6               [12] 1350 	mov	@r0,a
                                   1351 ;	testparking.c:267: __endasm;
      000565 78 39            [12] 1352 	mov r0,#(_log + 0x0009)
      000567 E6               [12] 1353 	mov a,@r0
      000568 FF               [12] 1354 	mov r7,a
      000569 74 7F            [12] 1355 	mov a,#0x7F
      00056B 5F               [12] 1356 	anl a,r7
      00056C F6               [12] 1357 	mov @r0,a
      00056D 80 0C            [24] 1358 	sjmp	00114$
      00056F                       1359 00113$:
                                   1360 ;	testparking.c:270: plot[1] = 0;
      00056F 78 4F            [12] 1361 	mov	r0,#(_plot + 0x0001)
      000571 76 00            [12] 1362 	mov	@r0,#0x00
                                   1363 ;	testparking.c:278: __endasm;
      000573 78 39            [12] 1364 	mov r0,#(_log + 0x0009)
      000575 E6               [12] 1365 	mov a,@r0
      000576 FF               [12] 1366 	mov r7,a
      000577 74 80            [12] 1367 	mov a,#0x80
      000579 4F               [12] 1368 	orl a,r7
      00057A F6               [12] 1369 	mov @r0,a
      00057B                       1370 00114$:
                                   1371 ;	testparking.c:280: SemaphoreSignal(mutex,m_tail);
      00057B C2 AF            [12] 1372 	clr	_EA
      00057D 78 3A            [12] 1373 	mov	r0,#_mutex
      00057F 06               [12] 1374 	inc	@r0
      000580 78 3A            [12] 1375 	mov	r0,#_mutex
      000582 C3               [12] 1376 	clr	c
      000583 74 80            [12] 1377 	mov	a,#(0x00 ^ 0x80)
      000585 86 F0            [24] 1378 	mov	b,@r0
      000587 63 F0 80         [24] 1379 	xrl	b,#0x80
      00058A 95 F0            [12] 1380 	subb	a,b
      00058C 40 0B            [24] 1381 	jc	00116$
      00058E A9 3C            [24] 1382 	mov	r1,_m_tail
      000590 E7               [12] 1383 	mov	a,@r1
      000591 FF               [12] 1384 	mov	r7,a
      000592 24 24            [12] 1385 	add	a,#_bitmap
      000594 F8               [12] 1386 	mov	r0,a
      000595 76 01            [12] 1387 	mov	@r0,#0x01
      000597 15 3C            [12] 1388 	dec	_m_tail
      000599                       1389 00116$:
      000599 D2 AF            [12] 1390 	setb	_EA
                                   1391 ;	testparking.c:281: SemaphoreSignal(print,p_tail);
      00059B C2 AF            [12] 1392 	clr	_EA
      00059D 78 5B            [12] 1393 	mov	r0,#_print
      00059F 06               [12] 1394 	inc	@r0
      0005A0 78 5B            [12] 1395 	mov	r0,#_print
      0005A2 C3               [12] 1396 	clr	c
      0005A3 74 80            [12] 1397 	mov	a,#(0x00 ^ 0x80)
      0005A5 86 F0            [24] 1398 	mov	b,@r0
      0005A7 63 F0 80         [24] 1399 	xrl	b,#0x80
      0005AA 95 F0            [12] 1400 	subb	a,b
      0005AC 40 0B            [24] 1401 	jc	00118$
      0005AE A9 6C            [24] 1402 	mov	r1,_p_tail
      0005B0 E7               [12] 1403 	mov	a,@r1
      0005B1 FF               [12] 1404 	mov	r7,a
      0005B2 24 24            [12] 1405 	add	a,#_bitmap
      0005B4 F8               [12] 1406 	mov	r0,a
      0005B5 76 01            [12] 1407 	mov	@r0,#0x01
      0005B7 15 6C            [12] 1408 	dec	_p_tail
      0005B9                       1409 00118$:
      0005B9 D2 AF            [12] 1410 	setb	_EA
      0005BB 22               [24] 1411 	ret
                                   1412 ;------------------------------------------------------------
                                   1413 ;Allocation info for local variables in function 'Printer'
                                   1414 ;------------------------------------------------------------
                                   1415 ;	testparking.c:284: void Printer(void) {
                                   1416 ;	-----------------------------------------
                                   1417 ;	 function Printer
                                   1418 ;	-----------------------------------------
      0005BC                       1419 _Printer:
                                   1420 ;	testparking.c:285: TMOD |= 0x20;
      0005BC 43 89 20         [24] 1421 	orl	_TMOD,#0x20
                                   1422 ;	testparking.c:286: TH1 = -6;
      0005BF 75 8D FA         [24] 1423 	mov	_TH1,#0xFA
                                   1424 ;	testparking.c:287: SCON = 0x50;
      0005C2 75 98 50         [24] 1425 	mov	_SCON,#0x50
                                   1426 ;	testparking.c:288: TR1 = 1;
      0005C5 D2 8E            [12] 1427 	setb	_TR1
                                   1428 ;	testparking.c:290: SemaphoreWait(print,p_tail);
      0005C7 C2 AF            [12] 1429 	clr	_EA
      0005C9 78 5B            [12] 1430 	mov	r0,#_print
      0005CB 16               [12] 1431 	dec	@r0
      0005CC 78 5B            [12] 1432 	mov	r0,#_print
      0005CE E6               [12] 1433 	mov	a,@r0
      0005CF 30 E7 13         [24] 1434 	jnb	acc.7,00102$
      0005D2 05 6C            [12] 1435 	inc	_p_tail
      0005D4 A9 6C            [24] 1436 	mov	r1,_p_tail
      0005D6 78 28            [12] 1437 	mov	r0,#_ID
      0005D8 E6               [12] 1438 	mov	a,@r0
      0005D9 F7               [12] 1439 	mov	@r1,a
      0005DA 78 28            [12] 1440 	mov	r0,#_ID
      0005DC E6               [12] 1441 	mov	a,@r0
      0005DD 24 24            [12] 1442 	add	a,#_bitmap
      0005DF F8               [12] 1443 	mov	r0,a
      0005E0 76 FF            [12] 1444 	mov	@r0,#0xFF
      0005E2 12 0A B1         [24] 1445 	lcall	_ThreadYield
      0005E5                       1446 00102$:
      0005E5 D2 AF            [12] 1447 	setb	_EA
                                   1448 ;	testparking.c:291: SemaphoreWait(print,p_tail);
      0005E7 C2 AF            [12] 1449 	clr	_EA
      0005E9 78 5B            [12] 1450 	mov	r0,#_print
      0005EB 16               [12] 1451 	dec	@r0
      0005EC 78 5B            [12] 1452 	mov	r0,#_print
      0005EE E6               [12] 1453 	mov	a,@r0
      0005EF 30 E7 13         [24] 1454 	jnb	acc.7,00104$
      0005F2 05 6C            [12] 1455 	inc	_p_tail
      0005F4 A9 6C            [24] 1456 	mov	r1,_p_tail
      0005F6 78 28            [12] 1457 	mov	r0,#_ID
      0005F8 E6               [12] 1458 	mov	a,@r0
      0005F9 F7               [12] 1459 	mov	@r1,a
      0005FA 78 28            [12] 1460 	mov	r0,#_ID
      0005FC E6               [12] 1461 	mov	a,@r0
      0005FD 24 24            [12] 1462 	add	a,#_bitmap
      0005FF F8               [12] 1463 	mov	r0,a
      000600 76 FF            [12] 1464 	mov	@r0,#0xFF
      000602 12 0A B1         [24] 1465 	lcall	_ThreadYield
      000605                       1466 00104$:
      000605 D2 AF            [12] 1467 	setb	_EA
                                   1468 ;	testparking.c:292: SemaphoreWait(print,p_tail);
      000607 C2 AF            [12] 1469 	clr	_EA
      000609 78 5B            [12] 1470 	mov	r0,#_print
      00060B 16               [12] 1471 	dec	@r0
      00060C 78 5B            [12] 1472 	mov	r0,#_print
      00060E E6               [12] 1473 	mov	a,@r0
      00060F 30 E7 13         [24] 1474 	jnb	acc.7,00106$
      000612 05 6C            [12] 1475 	inc	_p_tail
      000614 A9 6C            [24] 1476 	mov	r1,_p_tail
      000616 78 28            [12] 1477 	mov	r0,#_ID
      000618 E6               [12] 1478 	mov	a,@r0
      000619 F7               [12] 1479 	mov	@r1,a
      00061A 78 28            [12] 1480 	mov	r0,#_ID
      00061C E6               [12] 1481 	mov	a,@r0
      00061D 24 24            [12] 1482 	add	a,#_bitmap
      00061F F8               [12] 1483 	mov	r0,a
      000620 76 FF            [12] 1484 	mov	@r0,#0xFF
      000622 12 0A B1         [24] 1485 	lcall	_ThreadYield
      000625                       1486 00106$:
      000625 D2 AF            [12] 1487 	setb	_EA
                                   1488 ;	testparking.c:293: SemaphoreWait(print,p_tail);
      000627 C2 AF            [12] 1489 	clr	_EA
      000629 78 5B            [12] 1490 	mov	r0,#_print
      00062B 16               [12] 1491 	dec	@r0
      00062C 78 5B            [12] 1492 	mov	r0,#_print
      00062E E6               [12] 1493 	mov	a,@r0
      00062F 30 E7 13         [24] 1494 	jnb	acc.7,00108$
      000632 05 6C            [12] 1495 	inc	_p_tail
      000634 A9 6C            [24] 1496 	mov	r1,_p_tail
      000636 78 28            [12] 1497 	mov	r0,#_ID
      000638 E6               [12] 1498 	mov	a,@r0
      000639 F7               [12] 1499 	mov	@r1,a
      00063A 78 28            [12] 1500 	mov	r0,#_ID
      00063C E6               [12] 1501 	mov	a,@r0
      00063D 24 24            [12] 1502 	add	a,#_bitmap
      00063F F8               [12] 1503 	mov	r0,a
      000640 76 FF            [12] 1504 	mov	@r0,#0xFF
      000642 12 0A B1         [24] 1505 	lcall	_ThreadYield
      000645                       1506 00108$:
      000645 D2 AF            [12] 1507 	setb	_EA
                                   1508 ;	testparking.c:294: SemaphoreWait(print,p_tail);
      000647 C2 AF            [12] 1509 	clr	_EA
      000649 78 5B            [12] 1510 	mov	r0,#_print
      00064B 16               [12] 1511 	dec	@r0
      00064C 78 5B            [12] 1512 	mov	r0,#_print
      00064E E6               [12] 1513 	mov	a,@r0
      00064F 30 E7 13         [24] 1514 	jnb	acc.7,00110$
      000652 05 6C            [12] 1515 	inc	_p_tail
      000654 A9 6C            [24] 1516 	mov	r1,_p_tail
      000656 78 28            [12] 1517 	mov	r0,#_ID
      000658 E6               [12] 1518 	mov	a,@r0
      000659 F7               [12] 1519 	mov	@r1,a
      00065A 78 28            [12] 1520 	mov	r0,#_ID
      00065C E6               [12] 1521 	mov	a,@r0
      00065D 24 24            [12] 1522 	add	a,#_bitmap
      00065F F8               [12] 1523 	mov	r0,a
      000660 76 FF            [12] 1524 	mov	@r0,#0xFF
      000662 12 0A B1         [24] 1525 	lcall	_ThreadYield
      000665                       1526 00110$:
      000665 D2 AF            [12] 1527 	setb	_EA
                                   1528 ;	testparking.c:295: SemaphoreWait(print,p_tail);
      000667 C2 AF            [12] 1529 	clr	_EA
      000669 78 5B            [12] 1530 	mov	r0,#_print
      00066B 16               [12] 1531 	dec	@r0
      00066C 78 5B            [12] 1532 	mov	r0,#_print
      00066E E6               [12] 1533 	mov	a,@r0
      00066F 30 E7 13         [24] 1534 	jnb	acc.7,00112$
      000672 05 6C            [12] 1535 	inc	_p_tail
      000674 A9 6C            [24] 1536 	mov	r1,_p_tail
      000676 78 28            [12] 1537 	mov	r0,#_ID
      000678 E6               [12] 1538 	mov	a,@r0
      000679 F7               [12] 1539 	mov	@r1,a
      00067A 78 28            [12] 1540 	mov	r0,#_ID
      00067C E6               [12] 1541 	mov	a,@r0
      00067D 24 24            [12] 1542 	add	a,#_bitmap
      00067F F8               [12] 1543 	mov	r0,a
      000680 76 FF            [12] 1544 	mov	@r0,#0xFF
      000682 12 0A B1         [24] 1545 	lcall	_ThreadYield
      000685                       1546 00112$:
      000685 D2 AF            [12] 1547 	setb	_EA
                                   1548 ;	testparking.c:296: SemaphoreWait(print,p_tail);
      000687 C2 AF            [12] 1549 	clr	_EA
      000689 78 5B            [12] 1550 	mov	r0,#_print
      00068B 16               [12] 1551 	dec	@r0
      00068C 78 5B            [12] 1552 	mov	r0,#_print
      00068E E6               [12] 1553 	mov	a,@r0
      00068F 30 E7 13         [24] 1554 	jnb	acc.7,00114$
      000692 05 6C            [12] 1555 	inc	_p_tail
      000694 A9 6C            [24] 1556 	mov	r1,_p_tail
      000696 78 28            [12] 1557 	mov	r0,#_ID
      000698 E6               [12] 1558 	mov	a,@r0
      000699 F7               [12] 1559 	mov	@r1,a
      00069A 78 28            [12] 1560 	mov	r0,#_ID
      00069C E6               [12] 1561 	mov	a,@r0
      00069D 24 24            [12] 1562 	add	a,#_bitmap
      00069F F8               [12] 1563 	mov	r0,a
      0006A0 76 FF            [12] 1564 	mov	@r0,#0xFF
      0006A2 12 0A B1         [24] 1565 	lcall	_ThreadYield
      0006A5                       1566 00114$:
      0006A5 D2 AF            [12] 1567 	setb	_EA
                                   1568 ;	testparking.c:297: SemaphoreWait(print,p_tail);
      0006A7 C2 AF            [12] 1569 	clr	_EA
      0006A9 78 5B            [12] 1570 	mov	r0,#_print
      0006AB 16               [12] 1571 	dec	@r0
      0006AC 78 5B            [12] 1572 	mov	r0,#_print
      0006AE E6               [12] 1573 	mov	a,@r0
      0006AF 30 E7 13         [24] 1574 	jnb	acc.7,00116$
      0006B2 05 6C            [12] 1575 	inc	_p_tail
      0006B4 A9 6C            [24] 1576 	mov	r1,_p_tail
      0006B6 78 28            [12] 1577 	mov	r0,#_ID
      0006B8 E6               [12] 1578 	mov	a,@r0
      0006B9 F7               [12] 1579 	mov	@r1,a
      0006BA 78 28            [12] 1580 	mov	r0,#_ID
      0006BC E6               [12] 1581 	mov	a,@r0
      0006BD 24 24            [12] 1582 	add	a,#_bitmap
      0006BF F8               [12] 1583 	mov	r0,a
      0006C0 76 FF            [12] 1584 	mov	@r0,#0xFF
      0006C2 12 0A B1         [24] 1585 	lcall	_ThreadYield
      0006C5                       1586 00116$:
      0006C5 D2 AF            [12] 1587 	setb	_EA
                                   1588 ;	testparking.c:298: SemaphoreWait(print,p_tail);
      0006C7 C2 AF            [12] 1589 	clr	_EA
      0006C9 78 5B            [12] 1590 	mov	r0,#_print
      0006CB 16               [12] 1591 	dec	@r0
      0006CC 78 5B            [12] 1592 	mov	r0,#_print
      0006CE E6               [12] 1593 	mov	a,@r0
      0006CF 30 E7 13         [24] 1594 	jnb	acc.7,00118$
      0006D2 05 6C            [12] 1595 	inc	_p_tail
      0006D4 A9 6C            [24] 1596 	mov	r1,_p_tail
      0006D6 78 28            [12] 1597 	mov	r0,#_ID
      0006D8 E6               [12] 1598 	mov	a,@r0
      0006D9 F7               [12] 1599 	mov	@r1,a
      0006DA 78 28            [12] 1600 	mov	r0,#_ID
      0006DC E6               [12] 1601 	mov	a,@r0
      0006DD 24 24            [12] 1602 	add	a,#_bitmap
      0006DF F8               [12] 1603 	mov	r0,a
      0006E0 76 FF            [12] 1604 	mov	@r0,#0xFF
      0006E2 12 0A B1         [24] 1605 	lcall	_ThreadYield
      0006E5                       1606 00118$:
      0006E5 D2 AF            [12] 1607 	setb	_EA
                                   1608 ;	testparking.c:299: SemaphoreWait(print,p_tail);
      0006E7 C2 AF            [12] 1609 	clr	_EA
      0006E9 78 5B            [12] 1610 	mov	r0,#_print
      0006EB 16               [12] 1611 	dec	@r0
      0006EC 78 5B            [12] 1612 	mov	r0,#_print
      0006EE E6               [12] 1613 	mov	a,@r0
      0006EF 30 E7 13         [24] 1614 	jnb	acc.7,00120$
      0006F2 05 6C            [12] 1615 	inc	_p_tail
      0006F4 A9 6C            [24] 1616 	mov	r1,_p_tail
      0006F6 78 28            [12] 1617 	mov	r0,#_ID
      0006F8 E6               [12] 1618 	mov	a,@r0
      0006F9 F7               [12] 1619 	mov	@r1,a
      0006FA 78 28            [12] 1620 	mov	r0,#_ID
      0006FC E6               [12] 1621 	mov	a,@r0
      0006FD 24 24            [12] 1622 	add	a,#_bitmap
      0006FF F8               [12] 1623 	mov	r0,a
      000700 76 FF            [12] 1624 	mov	@r0,#0xFF
      000702 12 0A B1         [24] 1625 	lcall	_ThreadYield
      000705                       1626 00120$:
      000705 D2 AF            [12] 1627 	setb	_EA
                                   1628 ;	testparking.c:300: c_temp = 0;
      000707 78 29            [12] 1629 	mov	r0,#_c_temp
      000709 76 00            [12] 1630 	mov	@r0,#0x00
                                   1631 ;	testparking.c:301: current = 1;
      00070B 78 4C            [12] 1632 	mov	r0,#_current
      00070D 76 01            [12] 1633 	mov	@r0,#0x01
                                   1634 ;	testparking.c:302: while(c_temp<4){
      00070F                       1635 00190$:
      00070F 78 29            [12] 1636 	mov	r0,#_c_temp
      000711 C3               [12] 1637 	clr	c
      000712 E6               [12] 1638 	mov	a,@r0
      000713 64 80            [12] 1639 	xrl	a,#0x80
      000715 94 84            [12] 1640 	subb	a,#0x84
      000717 40 01            [24] 1641 	jc	00382$
      000719 22               [24] 1642 	ret
      00071A                       1643 00382$:
                                   1644 ;	testparking.c:303: for(j=0;j<10;j++){
      00071A 78 4D            [12] 1645 	mov	r0,#_j
      00071C 76 00            [12] 1646 	mov	@r0,#0x00
      00071E                       1647 00194$:
      00071E 78 4D            [12] 1648 	mov	r0,#_j
      000720 C3               [12] 1649 	clr	c
      000721 E6               [12] 1650 	mov	a,@r0
      000722 64 80            [12] 1651 	xrl	a,#0x80
      000724 94 8A            [12] 1652 	subb	a,#0x8a
      000726 40 03            [24] 1653 	jc	00383$
      000728 02 08 33         [24] 1654 	ljmp	00189$
      00072B                       1655 00383$:
                                   1656 ;	testparking.c:304: c_temp2 = log[j];
      00072B 78 4D            [12] 1657 	mov	r0,#_j
      00072D E6               [12] 1658 	mov	a,@r0
      00072E 24 30            [12] 1659 	add	a,#_log
      000730 F9               [12] 1660 	mov	r1,a
      000731 78 4A            [12] 1661 	mov	r0,#_c_temp2
      000733 E7               [12] 1662 	mov	a,@r1
      000734 F6               [12] 1663 	mov	@r0,a
                                   1664 ;	testparking.c:305: c_temp3 = c_temp2&0x7F;
      000735 78 4A            [12] 1665 	mov	r0,#_c_temp2
      000737 79 5C            [12] 1666 	mov	r1,#_c_temp3
      000739 74 7F            [12] 1667 	mov	a,#0x7F
      00073B 56               [12] 1668 	anl	a,@r0
      00073C F7               [12] 1669 	mov	@r1,a
                                   1670 ;	testparking.c:306: if(c_temp3==current){
      00073D 78 5C            [12] 1671 	mov	r0,#_c_temp3
      00073F 79 4C            [12] 1672 	mov	r1,#_current
      000741 86 F0            [24] 1673 	mov	b,@r0
      000743 E7               [12] 1674 	mov	a,@r1
      000744 B5 F0 02         [24] 1675 	cjne	a,b,00384$
      000747 80 03            [24] 1676 	sjmp	00385$
      000749                       1677 00384$:
      000749 02 08 2D         [24] 1678 	ljmp	00195$
      00074C                       1679 00385$:
                                   1680 ;	testparking.c:307: SBUF = 'c';
      00074C 75 99 63         [24] 1681 	mov	_SBUF,#0x63
                                   1682 ;	testparking.c:308: while (!TI) { }
      00074F                       1683 00121$:
                                   1684 ;	testparking.c:309: TI = 0;
      00074F 10 99 02         [24] 1685 	jbc	_TI,00386$
      000752 80 FB            [24] 1686 	sjmp	00121$
      000754                       1687 00386$:
                                   1688 ;	testparking.c:310: SBUF = 'a';
      000754 75 99 61         [24] 1689 	mov	_SBUF,#0x61
                                   1690 ;	testparking.c:311: while (!TI) { }
      000757                       1691 00124$:
                                   1692 ;	testparking.c:312: TI = 0;
      000757 10 99 02         [24] 1693 	jbc	_TI,00387$
      00075A 80 FB            [24] 1694 	sjmp	00124$
      00075C                       1695 00387$:
                                   1696 ;	testparking.c:313: SBUF = 'r';
      00075C 75 99 72         [24] 1697 	mov	_SBUF,#0x72
                                   1698 ;	testparking.c:314: while (!TI) { }
      00075F                       1699 00127$:
                                   1700 ;	testparking.c:315: TI = 0;
      00075F 10 99 02         [24] 1701 	jbc	_TI,00388$
      000762 80 FB            [24] 1702 	sjmp	00127$
      000764                       1703 00388$:
                                   1704 ;	testparking.c:316: SBUF = '0' + j/2;
      000764 78 4D            [12] 1705 	mov	r0,#_j
      000766 C2 D5            [12] 1706 	clr	F0
      000768 75 F0 02         [24] 1707 	mov	b,#0x02
      00076B E6               [12] 1708 	mov	a,@r0
      00076C 30 E7 04         [24] 1709 	jnb	acc.7,00389$
      00076F B2 D5            [12] 1710 	cpl	F0
      000771 F4               [12] 1711 	cpl	a
      000772 04               [12] 1712 	inc	a
      000773                       1713 00389$:
      000773 84               [48] 1714 	div	ab
      000774 30 D5 02         [24] 1715 	jnb	F0,00390$
      000777 F4               [12] 1716 	cpl	a
      000778 04               [12] 1717 	inc	a
      000779                       1718 00390$:
      000779 24 30            [12] 1719 	add	a,#0x30
      00077B F5 99            [12] 1720 	mov	_SBUF,a
                                   1721 ;	testparking.c:317: while (!TI) { }
      00077D                       1722 00130$:
                                   1723 ;	testparking.c:318: TI = 0;
      00077D 10 99 02         [24] 1724 	jbc	_TI,00391$
      000780 80 FB            [24] 1725 	sjmp	00130$
      000782                       1726 00391$:
                                   1727 ;	testparking.c:319: SBUF = ' ';
      000782 75 99 20         [24] 1728 	mov	_SBUF,#0x20
                                   1729 ;	testparking.c:320: while (!TI) { }
      000785                       1730 00133$:
                                   1731 ;	testparking.c:321: TI = 0;
      000785 10 99 02         [24] 1732 	jbc	_TI,00392$
      000788 80 FB            [24] 1733 	sjmp	00133$
      00078A                       1734 00392$:
                                   1735 ;	testparking.c:322: if(j%2){
      00078A 78 4D            [12] 1736 	mov	r0,#_j
      00078C E6               [12] 1737 	mov	a,@r0
      00078D A2 E7            [12] 1738 	mov	c,acc.7
      00078F 54 01            [12] 1739 	anl	a,#0x01
      000791 60 04            [24] 1740 	jz	00393$
      000793 50 02            [24] 1741 	jnc	00393$
      000795 44 FE            [12] 1742 	orl	a,#0xfe
      000797                       1743 00393$:
      000797 60 1A            [24] 1744 	jz	00152$
                                   1745 ;	testparking.c:323: SBUF = 'o';
      000799 75 99 6F         [24] 1746 	mov	_SBUF,#0x6F
                                   1747 ;	testparking.c:324: while (!TI) { }
      00079C                       1748 00136$:
                                   1749 ;	testparking.c:325: TI = 0;
      00079C 10 99 02         [24] 1750 	jbc	_TI,00395$
      00079F 80 FB            [24] 1751 	sjmp	00136$
      0007A1                       1752 00395$:
                                   1753 ;	testparking.c:326: SBUF = 'u';
      0007A1 75 99 75         [24] 1754 	mov	_SBUF,#0x75
                                   1755 ;	testparking.c:327: while (!TI) { }
      0007A4                       1756 00139$:
                                   1757 ;	testparking.c:328: TI = 0;
      0007A4 10 99 02         [24] 1758 	jbc	_TI,00396$
      0007A7 80 FB            [24] 1759 	sjmp	00139$
      0007A9                       1760 00396$:
                                   1761 ;	testparking.c:329: SBUF = 't';
      0007A9 75 99 74         [24] 1762 	mov	_SBUF,#0x74
                                   1763 ;	testparking.c:330: while (!TI) { }
      0007AC                       1764 00142$:
                                   1765 ;	testparking.c:331: TI = 0;
      0007AC 10 99 02         [24] 1766 	jbc	_TI,00397$
      0007AF 80 FB            [24] 1767 	sjmp	00142$
      0007B1                       1768 00397$:
      0007B1 80 10            [24] 1769 	sjmp	00153$
      0007B3                       1770 00152$:
                                   1771 ;	testparking.c:334: SBUF = 'i';
      0007B3 75 99 69         [24] 1772 	mov	_SBUF,#0x69
                                   1773 ;	testparking.c:335: while (!TI) { }
      0007B6                       1774 00145$:
                                   1775 ;	testparking.c:336: TI = 0;
      0007B6 10 99 02         [24] 1776 	jbc	_TI,00398$
      0007B9 80 FB            [24] 1777 	sjmp	00145$
      0007BB                       1778 00398$:
                                   1779 ;	testparking.c:337: SBUF = 'n';
      0007BB 75 99 6E         [24] 1780 	mov	_SBUF,#0x6E
                                   1781 ;	testparking.c:338: while (!TI) { }
      0007BE                       1782 00148$:
                                   1783 ;	testparking.c:339: TI = 0;
      0007BE 10 99 02         [24] 1784 	jbc	_TI,00399$
      0007C1 80 FB            [24] 1785 	sjmp	00148$
      0007C3                       1786 00399$:
      0007C3                       1787 00153$:
                                   1788 ;	testparking.c:341: SBUF = ' ';
      0007C3 75 99 20         [24] 1789 	mov	_SBUF,#0x20
                                   1790 ;	testparking.c:342: while (!TI) { }
      0007C6                       1791 00154$:
                                   1792 ;	testparking.c:343: TI = 0;
      0007C6 10 99 02         [24] 1793 	jbc	_TI,00400$
      0007C9 80 FB            [24] 1794 	sjmp	00154$
      0007CB                       1795 00400$:
                                   1796 ;	testparking.c:344: SBUF = 'p';
      0007CB 75 99 70         [24] 1797 	mov	_SBUF,#0x70
                                   1798 ;	testparking.c:345: while (!TI) { }
      0007CE                       1799 00157$:
                                   1800 ;	testparking.c:346: TI = 0;
      0007CE 10 99 02         [24] 1801 	jbc	_TI,00401$
      0007D1 80 FB            [24] 1802 	sjmp	00157$
      0007D3                       1803 00401$:
                                   1804 ;	testparking.c:347: SBUF = 'l';
      0007D3 75 99 6C         [24] 1805 	mov	_SBUF,#0x6C
                                   1806 ;	testparking.c:348: while (!TI) { }
      0007D6                       1807 00160$:
                                   1808 ;	testparking.c:349: TI = 0;
      0007D6 10 99 02         [24] 1809 	jbc	_TI,00402$
      0007D9 80 FB            [24] 1810 	sjmp	00160$
      0007DB                       1811 00402$:
                                   1812 ;	testparking.c:350: SBUF = 'o';
      0007DB 75 99 6F         [24] 1813 	mov	_SBUF,#0x6F
                                   1814 ;	testparking.c:351: while (!TI) { }
      0007DE                       1815 00163$:
                                   1816 ;	testparking.c:352: TI = 0;
      0007DE 10 99 02         [24] 1817 	jbc	_TI,00403$
      0007E1 80 FB            [24] 1818 	sjmp	00163$
      0007E3                       1819 00403$:
                                   1820 ;	testparking.c:353: SBUF = 't';
      0007E3 75 99 74         [24] 1821 	mov	_SBUF,#0x74
                                   1822 ;	testparking.c:354: while (!TI) { }
      0007E6                       1823 00166$:
                                   1824 ;	testparking.c:355: TI = 0;
      0007E6 10 99 02         [24] 1825 	jbc	_TI,00404$
      0007E9 80 FB            [24] 1826 	sjmp	00166$
      0007EB                       1827 00404$:
                                   1828 ;	testparking.c:356: SBUF = '0' + c_temp2/0x80;
      0007EB 78 4A            [12] 1829 	mov	r0,#_c_temp2
      0007ED E6               [12] 1830 	mov	a,@r0
      0007EE 23               [12] 1831 	rl	a
      0007EF 54 01            [12] 1832 	anl	a,#0x01
      0007F1 FF               [12] 1833 	mov	r7,a
      0007F2 24 30            [12] 1834 	add	a,#0x30
      0007F4 F5 99            [12] 1835 	mov	_SBUF,a
                                   1836 ;	testparking.c:357: while (!TI) { }
      0007F6                       1837 00169$:
                                   1838 ;	testparking.c:358: TI = 0;
      0007F6 10 99 02         [24] 1839 	jbc	_TI,00405$
      0007F9 80 FB            [24] 1840 	sjmp	00169$
      0007FB                       1841 00405$:
                                   1842 ;	testparking.c:359: SBUF = ' ';
      0007FB 75 99 20         [24] 1843 	mov	_SBUF,#0x20
                                   1844 ;	testparking.c:360: while (!TI) { }
      0007FE                       1845 00172$:
                                   1846 ;	testparking.c:361: TI = 0;
      0007FE 10 99 02         [24] 1847 	jbc	_TI,00406$
      000801 80 FB            [24] 1848 	sjmp	00172$
      000803                       1849 00406$:
                                   1850 ;	testparking.c:362: SBUF = 'a';
      000803 75 99 61         [24] 1851 	mov	_SBUF,#0x61
                                   1852 ;	testparking.c:363: while (!TI) { }
      000806                       1853 00175$:
                                   1854 ;	testparking.c:364: TI = 0;
      000806 10 99 02         [24] 1855 	jbc	_TI,00407$
      000809 80 FB            [24] 1856 	sjmp	00175$
      00080B                       1857 00407$:
                                   1858 ;	testparking.c:365: SBUF = 't';
      00080B 75 99 74         [24] 1859 	mov	_SBUF,#0x74
                                   1860 ;	testparking.c:366: while (!TI) { }
      00080E                       1861 00178$:
                                   1862 ;	testparking.c:367: TI = 0;
      00080E 10 99 02         [24] 1863 	jbc	_TI,00408$
      000811 80 FB            [24] 1864 	sjmp	00178$
      000813                       1865 00408$:
                                   1866 ;	testparking.c:368: SBUF = '0' + (c_temp2&0x7F);
      000813 78 4A            [12] 1867 	mov	r0,#_c_temp2
      000815 74 7F            [12] 1868 	mov	a,#0x7F
      000817 56               [12] 1869 	anl	a,@r0
      000818 FF               [12] 1870 	mov	r7,a
      000819 24 30            [12] 1871 	add	a,#0x30
      00081B F5 99            [12] 1872 	mov	_SBUF,a
                                   1873 ;	testparking.c:369: while (!TI) { }
      00081D                       1874 00181$:
                                   1875 ;	testparking.c:370: TI = 0;
      00081D 10 99 02         [24] 1876 	jbc	_TI,00409$
      000820 80 FB            [24] 1877 	sjmp	00181$
      000822                       1878 00409$:
                                   1879 ;	testparking.c:371: SBUF = '\n';
      000822 75 99 0A         [24] 1880 	mov	_SBUF,#0x0A
                                   1881 ;	testparking.c:372: while (!TI) { }
      000825                       1882 00184$:
                                   1883 ;	testparking.c:373: TI = 0;
      000825 10 99 02         [24] 1884 	jbc	_TI,00410$
      000828 80 FB            [24] 1885 	sjmp	00184$
      00082A                       1886 00410$:
                                   1887 ;	testparking.c:374: c_temp++;
      00082A 78 29            [12] 1888 	mov	r0,#_c_temp
      00082C 06               [12] 1889 	inc	@r0
      00082D                       1890 00195$:
                                   1891 ;	testparking.c:303: for(j=0;j<10;j++){
      00082D 78 4D            [12] 1892 	mov	r0,#_j
      00082F 06               [12] 1893 	inc	@r0
      000830 02 07 1E         [24] 1894 	ljmp	00194$
      000833                       1895 00189$:
                                   1896 ;	testparking.c:377: current++;
      000833 78 4C            [12] 1897 	mov	r0,#_current
      000835 06               [12] 1898 	inc	@r0
      000836 02 07 0F         [24] 1899 	ljmp	00190$
                                   1900 ;------------------------------------------------------------
                                   1901 ;Allocation info for local variables in function 'main'
                                   1902 ;------------------------------------------------------------
                                   1903 ;	testparking.c:381: void main(void) {
                                   1904 ;	-----------------------------------------
                                   1905 ;	 function main
                                   1906 ;	-----------------------------------------
      000839                       1907 _main:
                                   1908 ;	testparking.c:383: plot[0] = plot[1] = 0;
      000839 78 4F            [12] 1909 	mov	r0,#(_plot + 0x0001)
      00083B 76 00            [12] 1910 	mov	@r0,#0x00
      00083D 78 4E            [12] 1911 	mov	r0,#_plot
      00083F 76 00            [12] 1912 	mov	@r0,#0x00
                                   1913 ;	testparking.c:385: SemaphoreCreate(mutex, 1);
      000841 78 3A            [12] 1914 	mov	r0,#_mutex
      000843 76 01            [12] 1915 	mov	@r0,#0x01
                                   1916 ;	testparking.c:386: SemaphoreCreate(print, 0);
      000845 78 5B            [12] 1917 	mov	r0,#_print
      000847 76 00            [12] 1918 	mov	@r0,#0x00
                                   1919 ;	testparking.c:390: __endasm;
      000849 75 6C 5C         [24] 1920 	mov _p_tail,#0x5C
      00084C 75 3C 6C         [24] 1921 	mov _m_tail,#0x6C
                                   1922 ;	testparking.c:392: ThreadCreate(Car1);
      00084F 90 00 14         [24] 1923 	mov	dptr,#_Car1
      000852 12 0A 1A         [24] 1924 	lcall	_ThreadCreate
                                   1925 ;	testparking.c:393: ThreadCreate(Car2);
      000855 90 01 34         [24] 1926 	mov	dptr,#_Car2
      000858 12 0A 1A         [24] 1927 	lcall	_ThreadCreate
                                   1928 ;	testparking.c:394: ThreadCreate(Car3);
      00085B 90 02 56         [24] 1929 	mov	dptr,#_Car3
      00085E 12 0A 1A         [24] 1930 	lcall	_ThreadCreate
                                   1931 ;	testparking.c:395: ThreadCreate(Car4);
      000861 90 03 78         [24] 1932 	mov	dptr,#_Car4
      000864 12 0A 1A         [24] 1933 	lcall	_ThreadCreate
                                   1934 ;	testparking.c:396: ThreadCreate(Car5);
      000867 90 04 9A         [24] 1935 	mov	dptr,#_Car5
      00086A 12 0A 1A         [24] 1936 	lcall	_ThreadCreate
                                   1937 ;	testparking.c:397: ThreadCreate(Printer);
      00086D 90 05 BC         [24] 1938 	mov	dptr,#_Printer
      000870 02 0A 1A         [24] 1939 	ljmp	_ThreadCreate
                                   1940 ;------------------------------------------------------------
                                   1941 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                   1942 ;------------------------------------------------------------
                                   1943 ;	testparking.c:400: void _sdcc_gsinit_startup(void) {
                                   1944 ;	-----------------------------------------
                                   1945 ;	 function _sdcc_gsinit_startup
                                   1946 ;	-----------------------------------------
      000873                       1947 __sdcc_gsinit_startup:
                                   1948 ;	testparking.c:403: __endasm;
      000873 02 09 CF         [24] 1949 	ljmp _Bootstrap
      000876 22               [24] 1950 	ret
                                   1951 ;------------------------------------------------------------
                                   1952 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                   1953 ;------------------------------------------------------------
                                   1954 ;	testparking.c:406: void _mcs51_genRAMCLEAR(void) {}
                                   1955 ;	-----------------------------------------
                                   1956 ;	 function _mcs51_genRAMCLEAR
                                   1957 ;	-----------------------------------------
      000877                       1958 __mcs51_genRAMCLEAR:
      000877 22               [24] 1959 	ret
                                   1960 ;------------------------------------------------------------
                                   1961 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                   1962 ;------------------------------------------------------------
                                   1963 ;	testparking.c:407: void _mcs51_genXINIT(void) {}
                                   1964 ;	-----------------------------------------
                                   1965 ;	 function _mcs51_genXINIT
                                   1966 ;	-----------------------------------------
      000878                       1967 __mcs51_genXINIT:
      000878 22               [24] 1968 	ret
                                   1969 ;------------------------------------------------------------
                                   1970 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                   1971 ;------------------------------------------------------------
                                   1972 ;	testparking.c:408: void _mcs51_genXRAMCLEAR(void) {}
                                   1973 ;	-----------------------------------------
                                   1974 ;	 function _mcs51_genXRAMCLEAR
                                   1975 ;	-----------------------------------------
      000879                       1976 __mcs51_genXRAMCLEAR:
      000879 22               [24] 1977 	ret
                                   1978 ;------------------------------------------------------------
                                   1979 ;Allocation info for local variables in function 'timer0_ISR'
                                   1980 ;------------------------------------------------------------
                                   1981 ;	testparking.c:409: void timer0_ISR(void) __interrupt(1) {
                                   1982 ;	-----------------------------------------
                                   1983 ;	 function timer0_ISR
                                   1984 ;	-----------------------------------------
      00087A                       1985 _timer0_ISR:
                                   1986 ;	testparking.c:412: __endasm;
      00087A 02 09 1B         [24] 1987 	ljmp _myTimer0Handler
      00087D 32               [24] 1988 	reti
                                   1989 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1990 ;	eliminated unneeded push/pop psw
                                   1991 ;	eliminated unneeded push/pop dpl
                                   1992 ;	eliminated unneeded push/pop dph
                                   1993 ;	eliminated unneeded push/pop b
                                   1994 ;	eliminated unneeded push/pop acc
                                   1995 	.area CSEG    (CODE)
                                   1996 	.area CONST   (CODE)
                                   1997 	.area XINIT   (CODE)
                                   1998 	.area CABS    (ABS,CODE)
