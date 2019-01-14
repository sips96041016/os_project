                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Tue Jan 15 03:45:40 2019
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
                                    124 	.globl _temp3
                                    125 	.globl _print
                                    126 	.globl _c_temp3
                                    127 	.globl _c_temp2
                                    128 	.globl _flag
                                    129 	.globl _current
                                    130 	.globl _j
                                    131 	.globl _plot
                                    132 	.globl _thread
                                    133 	.globl _mutex
                                    134 	.globl _log
                                    135 	.globl _counter
                                    136 	.globl _time
                                    137 	.globl _D
                                    138 	.globl _i
                                    139 	.globl _temp2
                                    140 	.globl _temp1
                                    141 	.globl _c_temp
                                    142 	.globl _ID
                                    143 	.globl _bitmap
                                    144 	.globl _ssp
                                    145 	.globl _p_tail
                                    146 	.globl _th_tail
                                    147 	.globl _m_tail
                                    148 ;--------------------------------------------------------
                                    149 ; special function registers
                                    150 ;--------------------------------------------------------
                                    151 	.area RSEG    (ABS,DATA)
      000000                        152 	.org 0x0000
                           000080   153 _P0	=	0x0080
                           000081   154 _SP	=	0x0081
                           000082   155 _DPL	=	0x0082
                           000083   156 _DPH	=	0x0083
                           000087   157 _PCON	=	0x0087
                           000088   158 _TCON	=	0x0088
                           000089   159 _TMOD	=	0x0089
                           00008A   160 _TL0	=	0x008a
                           00008B   161 _TL1	=	0x008b
                           00008C   162 _TH0	=	0x008c
                           00008D   163 _TH1	=	0x008d
                           000090   164 _P1	=	0x0090
                           000098   165 _SCON	=	0x0098
                           000099   166 _SBUF	=	0x0099
                           0000A0   167 _P2	=	0x00a0
                           0000A8   168 _IE	=	0x00a8
                           0000B0   169 _P3	=	0x00b0
                           0000B8   170 _IP	=	0x00b8
                           0000D0   171 _PSW	=	0x00d0
                           0000E0   172 _ACC	=	0x00e0
                           0000F0   173 _B	=	0x00f0
                                    174 ;--------------------------------------------------------
                                    175 ; special function bits
                                    176 ;--------------------------------------------------------
                                    177 	.area RSEG    (ABS,DATA)
      000000                        178 	.org 0x0000
                           000080   179 _P0_0	=	0x0080
                           000081   180 _P0_1	=	0x0081
                           000082   181 _P0_2	=	0x0082
                           000083   182 _P0_3	=	0x0083
                           000084   183 _P0_4	=	0x0084
                           000085   184 _P0_5	=	0x0085
                           000086   185 _P0_6	=	0x0086
                           000087   186 _P0_7	=	0x0087
                           000088   187 _IT0	=	0x0088
                           000089   188 _IE0	=	0x0089
                           00008A   189 _IT1	=	0x008a
                           00008B   190 _IE1	=	0x008b
                           00008C   191 _TR0	=	0x008c
                           00008D   192 _TF0	=	0x008d
                           00008E   193 _TR1	=	0x008e
                           00008F   194 _TF1	=	0x008f
                           000090   195 _P1_0	=	0x0090
                           000091   196 _P1_1	=	0x0091
                           000092   197 _P1_2	=	0x0092
                           000093   198 _P1_3	=	0x0093
                           000094   199 _P1_4	=	0x0094
                           000095   200 _P1_5	=	0x0095
                           000096   201 _P1_6	=	0x0096
                           000097   202 _P1_7	=	0x0097
                           000098   203 _RI	=	0x0098
                           000099   204 _TI	=	0x0099
                           00009A   205 _RB8	=	0x009a
                           00009B   206 _TB8	=	0x009b
                           00009C   207 _REN	=	0x009c
                           00009D   208 _SM2	=	0x009d
                           00009E   209 _SM1	=	0x009e
                           00009F   210 _SM0	=	0x009f
                           0000A0   211 _P2_0	=	0x00a0
                           0000A1   212 _P2_1	=	0x00a1
                           0000A2   213 _P2_2	=	0x00a2
                           0000A3   214 _P2_3	=	0x00a3
                           0000A4   215 _P2_4	=	0x00a4
                           0000A5   216 _P2_5	=	0x00a5
                           0000A6   217 _P2_6	=	0x00a6
                           0000A7   218 _P2_7	=	0x00a7
                           0000A8   219 _EX0	=	0x00a8
                           0000A9   220 _ET0	=	0x00a9
                           0000AA   221 _EX1	=	0x00aa
                           0000AB   222 _ET1	=	0x00ab
                           0000AC   223 _ES	=	0x00ac
                           0000AF   224 _EA	=	0x00af
                           0000B0   225 _P3_0	=	0x00b0
                           0000B1   226 _P3_1	=	0x00b1
                           0000B2   227 _P3_2	=	0x00b2
                           0000B3   228 _P3_3	=	0x00b3
                           0000B4   229 _P3_4	=	0x00b4
                           0000B5   230 _P3_5	=	0x00b5
                           0000B6   231 _P3_6	=	0x00b6
                           0000B7   232 _P3_7	=	0x00b7
                           0000B0   233 _RXD	=	0x00b0
                           0000B1   234 _TXD	=	0x00b1
                           0000B2   235 _INT0	=	0x00b2
                           0000B3   236 _INT1	=	0x00b3
                           0000B4   237 _T0	=	0x00b4
                           0000B5   238 _T1	=	0x00b5
                           0000B6   239 _WR	=	0x00b6
                           0000B7   240 _RD	=	0x00b7
                           0000B8   241 _PX0	=	0x00b8
                           0000B9   242 _PT0	=	0x00b9
                           0000BA   243 _PX1	=	0x00ba
                           0000BB   244 _PT1	=	0x00bb
                           0000BC   245 _PS	=	0x00bc
                           0000D0   246 _P	=	0x00d0
                           0000D1   247 _F1	=	0x00d1
                           0000D2   248 _OV	=	0x00d2
                           0000D3   249 _RS0	=	0x00d3
                           0000D4   250 _RS1	=	0x00d4
                           0000D5   251 _F0	=	0x00d5
                           0000D6   252 _AC	=	0x00d6
                           0000D7   253 _CY	=	0x00d7
                                    254 ;--------------------------------------------------------
                                    255 ; overlayable register banks
                                    256 ;--------------------------------------------------------
                                    257 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        258 	.ds 8
                                    259 ;--------------------------------------------------------
                                    260 ; internal ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area DSEG    (DATA)
                           00003C   263 _m_tail	=	0x003c
                           00003D   264 _th_tail	=	0x003d
                           00006C   265 _p_tail	=	0x006c
                                    266 ;--------------------------------------------------------
                                    267 ; overlayable items in internal ram 
                                    268 ;--------------------------------------------------------
                                    269 ;--------------------------------------------------------
                                    270 ; Stack segment in internal ram 
                                    271 ;--------------------------------------------------------
                                    272 	.area	SSEG
      000008                        273 __start__stack:
      000008                        274 	.ds	1
                                    275 
                                    276 ;--------------------------------------------------------
                                    277 ; indirectly addressable internal ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area ISEG    (DATA)
                           000020   280 _ssp	=	0x0020
                           000024   281 _bitmap	=	0x0024
                           000028   282 _ID	=	0x0028
                           000029   283 _c_temp	=	0x0029
                           00002A   284 _temp1	=	0x002a
                           00002B   285 _temp2	=	0x002b
                           00002C   286 _i	=	0x002c
                           00002C   287 _D	=	0x002c
                           00003F   288 _time	=	0x003f
                           00003E   289 _counter	=	0x003e
                           000030   290 _log	=	0x0030
                           00003A   291 _mutex	=	0x003a
                           00003B   292 _thread	=	0x003b
                           00004E   293 _plot	=	0x004e
                           00004D   294 _j	=	0x004d
                           00004C   295 _current	=	0x004c
                           00004B   296 _flag	=	0x004b
                           00004A   297 _c_temp2	=	0x004a
                           00005C   298 _c_temp3	=	0x005c
                           00005B   299 _print	=	0x005b
                           00006B   300 _temp3	=	0x006b
                                    301 ;--------------------------------------------------------
                                    302 ; absolute internal ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area IABS    (ABS,DATA)
                                    305 	.area IABS    (ABS,DATA)
                                    306 ;--------------------------------------------------------
                                    307 ; bit data
                                    308 ;--------------------------------------------------------
                                    309 	.area BSEG    (BIT)
                                    310 ;--------------------------------------------------------
                                    311 ; paged external ram data
                                    312 ;--------------------------------------------------------
                                    313 	.area PSEG    (PAG,XDATA)
                                    314 ;--------------------------------------------------------
                                    315 ; external ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area XSEG    (XDATA)
                                    318 ;--------------------------------------------------------
                                    319 ; absolute external ram data
                                    320 ;--------------------------------------------------------
                                    321 	.area XABS    (ABS,XDATA)
                                    322 ;--------------------------------------------------------
                                    323 ; external initialized ram data
                                    324 ;--------------------------------------------------------
                                    325 	.area XISEG   (XDATA)
                                    326 	.area HOME    (CODE)
                                    327 	.area GSINIT0 (CODE)
                                    328 	.area GSINIT1 (CODE)
                                    329 	.area GSINIT2 (CODE)
                                    330 	.area GSINIT3 (CODE)
                                    331 	.area GSINIT4 (CODE)
                                    332 	.area GSINIT5 (CODE)
                                    333 	.area GSINIT  (CODE)
                                    334 	.area GSFINAL (CODE)
                                    335 	.area CSEG    (CODE)
                                    336 ;--------------------------------------------------------
                                    337 ; interrupt vector 
                                    338 ;--------------------------------------------------------
                                    339 	.area HOME    (CODE)
      000000                        340 __interrupt_vect:
      000000 02 08 73         [24]  341 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  342 	reti
      000004                        343 	.ds	7
      00000B 02 08 7A         [24]  344 	ljmp	_timer0_ISR
                                    345 ;--------------------------------------------------------
                                    346 ; global & static initialisations
                                    347 ;--------------------------------------------------------
                                    348 	.area HOME    (CODE)
                                    349 	.area GSINIT  (CODE)
                                    350 	.area GSFINAL (CODE)
                                    351 	.area GSINIT  (CODE)
                                    352 	.globl __sdcc_gsinit_startup
                                    353 	.globl __sdcc_program_startup
                                    354 	.globl __start__stack
                                    355 	.globl __mcs51_genXINIT
                                    356 	.globl __mcs51_genXRAMCLEAR
                                    357 	.globl __mcs51_genRAMCLEAR
                                    358 	.area GSFINAL (CODE)
      000011 02 00 0E         [24]  359 	ljmp	__sdcc_program_startup
                                    360 ;--------------------------------------------------------
                                    361 ; Home
                                    362 ;--------------------------------------------------------
                                    363 	.area HOME    (CODE)
                                    364 	.area HOME    (CODE)
      00000E                        365 __sdcc_program_startup:
      00000E 02 08 39         [24]  366 	ljmp	_main
                                    367 ;	return from main will return to caller
                                    368 ;--------------------------------------------------------
                                    369 ; code
                                    370 ;--------------------------------------------------------
                                    371 	.area CSEG    (CODE)
                                    372 ;------------------------------------------------------------
                                    373 ;Allocation info for local variables in function 'Car1'
                                    374 ;------------------------------------------------------------
                                    375 ;	testparking.c:4: void Car1(void) {
                                    376 ;	-----------------------------------------
                                    377 ;	 function Car1
                                    378 ;	-----------------------------------------
      000014                        379 _Car1:
                           000007   380 	ar7 = 0x07
                           000006   381 	ar6 = 0x06
                           000005   382 	ar5 = 0x05
                           000004   383 	ar4 = 0x04
                           000003   384 	ar3 = 0x03
                           000002   385 	ar2 = 0x02
                           000001   386 	ar1 = 0x01
                           000000   387 	ar0 = 0x00
                                    388 ;	testparking.c:5: log[0] = now();
      000014 12 08 7E         [24]  389 	lcall	_now
      000017 E5 82            [12]  390 	mov	a,dpl
      000019 78 30            [12]  391 	mov	r0,#_log
      00001B F6               [12]  392 	mov	@r0,a
                                    393 ;	testparking.c:6: SemaphoreWait(mutex,m_tail);
      00001C C2 AF            [12]  394 	clr	_EA
      00001E 78 3A            [12]  395 	mov	r0,#_mutex
      000020 16               [12]  396 	dec	@r0
      000021 78 3A            [12]  397 	mov	r0,#_mutex
      000023 E6               [12]  398 	mov	a,@r0
      000024 30 E7 13         [24]  399 	jnb	acc.7,00102$
      000027 05 3C            [12]  400 	inc	_m_tail
      000029 A9 3C            [24]  401 	mov	r1,_m_tail
      00002B 78 28            [12]  402 	mov	r0,#_ID
      00002D E6               [12]  403 	mov	a,@r0
      00002E F7               [12]  404 	mov	@r1,a
      00002F 78 28            [12]  405 	mov	r0,#_ID
      000031 E6               [12]  406 	mov	a,@r0
      000032 24 24            [12]  407 	add	a,#_bitmap
      000034 F8               [12]  408 	mov	r0,a
      000035 76 FF            [12]  409 	mov	@r0,#0xFF
      000037 12 0A BA         [24]  410 	lcall	_ThreadYield
      00003A                        411 00102$:
      00003A D2 AF            [12]  412 	setb	_EA
                                    413 ;	testparking.c:7: if(!plot[0]) {
      00003C 78 4E            [12]  414 	mov	r0,#_plot
      00003E E6               [12]  415 	mov	a,@r0
      00003F 70 0E            [24]  416 	jnz	00104$
                                    417 ;	testparking.c:8: plot[0] = 1;
      000041 78 4E            [12]  418 	mov	r0,#_plot
      000043 76 01            [12]  419 	mov	@r0,#0x01
                                    420 ;	testparking.c:16: __endasm;
      000045 78 30            [12]  421 	mov r0,#(_log + 0x0000)
      000047 E6               [12]  422 	mov a,@r0
      000048 FF               [12]  423 	mov r7,a
      000049 74 7F            [12]  424 	mov a,#0x7F
      00004B 5F               [12]  425 	anl a,r7
      00004C F6               [12]  426 	mov @r0,a
      00004D 80 0C            [24]  427 	sjmp	00105$
      00004F                        428 00104$:
                                    429 ;	testparking.c:19: plot[1] = 1;
      00004F 78 4F            [12]  430 	mov	r0,#(_plot + 0x0001)
      000051 76 01            [12]  431 	mov	@r0,#0x01
                                    432 ;	testparking.c:27: __endasm;
      000053 78 30            [12]  433 	mov r0,#(_log + 0x0000)
      000055 E6               [12]  434 	mov a,@r0
      000056 FF               [12]  435 	mov r7,a
      000057 74 80            [12]  436 	mov a,#0x80
      000059 4F               [12]  437 	orl a,r7
      00005A F6               [12]  438 	mov @r0,a
      00005B                        439 00105$:
                                    440 ;	testparking.c:29: SemaphoreSignal(mutex,m_tail);
      00005B C2 AF            [12]  441 	clr	_EA
      00005D 78 3A            [12]  442 	mov	r0,#_mutex
      00005F 06               [12]  443 	inc	@r0
      000060 78 3A            [12]  444 	mov	r0,#_mutex
      000062 C3               [12]  445 	clr	c
      000063 74 80            [12]  446 	mov	a,#(0x00 ^ 0x80)
      000065 86 F0            [24]  447 	mov	b,@r0
      000067 63 F0 80         [24]  448 	xrl	b,#0x80
      00006A 95 F0            [12]  449 	subb	a,b
      00006C 40 0B            [24]  450 	jc	00107$
      00006E A9 3C            [24]  451 	mov	r1,_m_tail
      000070 E7               [12]  452 	mov	a,@r1
      000071 FF               [12]  453 	mov	r7,a
      000072 24 24            [12]  454 	add	a,#_bitmap
      000074 F8               [12]  455 	mov	r0,a
      000075 76 01            [12]  456 	mov	@r0,#0x01
      000077 15 3C            [12]  457 	dec	_m_tail
      000079                        458 00107$:
      000079 D2 AF            [12]  459 	setb	_EA
                                    460 ;	testparking.c:30: SemaphoreSignal(print,p_tail);
      00007B C2 AF            [12]  461 	clr	_EA
      00007D 78 5B            [12]  462 	mov	r0,#_print
      00007F 06               [12]  463 	inc	@r0
      000080 78 5B            [12]  464 	mov	r0,#_print
      000082 C3               [12]  465 	clr	c
      000083 74 80            [12]  466 	mov	a,#(0x00 ^ 0x80)
      000085 86 F0            [24]  467 	mov	b,@r0
      000087 63 F0 80         [24]  468 	xrl	b,#0x80
      00008A 95 F0            [12]  469 	subb	a,b
      00008C 40 0B            [24]  470 	jc	00109$
      00008E A9 6C            [24]  471 	mov	r1,_p_tail
      000090 E7               [12]  472 	mov	a,@r1
      000091 FF               [12]  473 	mov	r7,a
      000092 24 24            [12]  474 	add	a,#_bitmap
      000094 F8               [12]  475 	mov	r0,a
      000095 76 01            [12]  476 	mov	@r0,#0x01
      000097 15 6C            [12]  477 	dec	_p_tail
      000099                        478 00109$:
      000099 D2 AF            [12]  479 	setb	_EA
                                    480 ;	testparking.c:31: delay(1);
      00009B 75 82 01         [24]  481 	mov	dpl,#0x01
      00009E 12 08 83         [24]  482 	lcall	_delay
                                    483 ;	testparking.c:32: log[1] = now();
      0000A1 12 08 7E         [24]  484 	lcall	_now
      0000A4 E5 82            [12]  485 	mov	a,dpl
      0000A6 78 31            [12]  486 	mov	r0,#(_log + 0x0001)
      0000A8 F6               [12]  487 	mov	@r0,a
                                    488 ;	testparking.c:33: SemaphoreWait(mutex,m_tail);
      0000A9 C2 AF            [12]  489 	clr	_EA
      0000AB 78 3A            [12]  490 	mov	r0,#_mutex
      0000AD 16               [12]  491 	dec	@r0
      0000AE 78 3A            [12]  492 	mov	r0,#_mutex
      0000B0 E6               [12]  493 	mov	a,@r0
      0000B1 30 E7 13         [24]  494 	jnb	acc.7,00111$
      0000B4 05 3C            [12]  495 	inc	_m_tail
      0000B6 A9 3C            [24]  496 	mov	r1,_m_tail
      0000B8 78 28            [12]  497 	mov	r0,#_ID
      0000BA E6               [12]  498 	mov	a,@r0
      0000BB F7               [12]  499 	mov	@r1,a
      0000BC 78 28            [12]  500 	mov	r0,#_ID
      0000BE E6               [12]  501 	mov	a,@r0
      0000BF 24 24            [12]  502 	add	a,#_bitmap
      0000C1 F8               [12]  503 	mov	r0,a
      0000C2 76 FF            [12]  504 	mov	@r0,#0xFF
      0000C4 12 0A BA         [24]  505 	lcall	_ThreadYield
      0000C7                        506 00111$:
      0000C7 D2 AF            [12]  507 	setb	_EA
                                    508 ;	testparking.c:34: if(!(plot[0]-1)) {
      0000C9 78 4E            [12]  509 	mov	r0,#_plot
      0000CB E6               [12]  510 	mov	a,@r0
      0000CC FF               [12]  511 	mov	r7,a
      0000CD 33               [12]  512 	rlc	a
      0000CE 95 E0            [12]  513 	subb	a,acc
      0000D0 FE               [12]  514 	mov	r6,a
      0000D1 1F               [12]  515 	dec	r7
      0000D2 BF FF 01         [24]  516 	cjne	r7,#0xFF,00150$
      0000D5 1E               [12]  517 	dec	r6
      0000D6                        518 00150$:
      0000D6 EF               [12]  519 	mov	a,r7
      0000D7 4E               [12]  520 	orl	a,r6
                                    521 ;	testparking.c:35: plot[0] = 0;
      0000D8 70 0D            [24]  522 	jnz	00113$
      0000DA 78 4E            [12]  523 	mov	r0,#_plot
      0000DC F6               [12]  524 	mov	@r0,a
                                    525 ;	testparking.c:43: __endasm;
      0000DD 78 31            [12]  526 	mov r0,#(_log + 0x0001)
      0000DF E6               [12]  527 	mov a,@r0
      0000E0 FF               [12]  528 	mov r7,a
      0000E1 74 7F            [12]  529 	mov a,#0x7F
      0000E3 5F               [12]  530 	anl a,r7
      0000E4 F6               [12]  531 	mov @r0,a
      0000E5 80 0C            [24]  532 	sjmp	00114$
      0000E7                        533 00113$:
                                    534 ;	testparking.c:46: plot[1] = 0;
      0000E7 78 4F            [12]  535 	mov	r0,#(_plot + 0x0001)
      0000E9 76 00            [12]  536 	mov	@r0,#0x00
                                    537 ;	testparking.c:54: __endasm;
      0000EB 78 31            [12]  538 	mov r0,#(_log + 0x0001)
      0000ED E6               [12]  539 	mov a,@r0
      0000EE FF               [12]  540 	mov r7,a
      0000EF 74 80            [12]  541 	mov a,#0x80
      0000F1 4F               [12]  542 	orl a,r7
      0000F2 F6               [12]  543 	mov @r0,a
      0000F3                        544 00114$:
                                    545 ;	testparking.c:56: SemaphoreSignal(mutex,m_tail);
      0000F3 C2 AF            [12]  546 	clr	_EA
      0000F5 78 3A            [12]  547 	mov	r0,#_mutex
      0000F7 06               [12]  548 	inc	@r0
      0000F8 78 3A            [12]  549 	mov	r0,#_mutex
      0000FA C3               [12]  550 	clr	c
      0000FB 74 80            [12]  551 	mov	a,#(0x00 ^ 0x80)
      0000FD 86 F0            [24]  552 	mov	b,@r0
      0000FF 63 F0 80         [24]  553 	xrl	b,#0x80
      000102 95 F0            [12]  554 	subb	a,b
      000104 40 0B            [24]  555 	jc	00116$
      000106 A9 3C            [24]  556 	mov	r1,_m_tail
      000108 E7               [12]  557 	mov	a,@r1
      000109 FF               [12]  558 	mov	r7,a
      00010A 24 24            [12]  559 	add	a,#_bitmap
      00010C F8               [12]  560 	mov	r0,a
      00010D 76 01            [12]  561 	mov	@r0,#0x01
      00010F 15 3C            [12]  562 	dec	_m_tail
      000111                        563 00116$:
      000111 D2 AF            [12]  564 	setb	_EA
                                    565 ;	testparking.c:57: SemaphoreSignal(print,p_tail);
      000113 C2 AF            [12]  566 	clr	_EA
      000115 78 5B            [12]  567 	mov	r0,#_print
      000117 06               [12]  568 	inc	@r0
      000118 78 5B            [12]  569 	mov	r0,#_print
      00011A C3               [12]  570 	clr	c
      00011B 74 80            [12]  571 	mov	a,#(0x00 ^ 0x80)
      00011D 86 F0            [24]  572 	mov	b,@r0
      00011F 63 F0 80         [24]  573 	xrl	b,#0x80
      000122 95 F0            [12]  574 	subb	a,b
      000124 40 0B            [24]  575 	jc	00118$
      000126 A9 6C            [24]  576 	mov	r1,_p_tail
      000128 E7               [12]  577 	mov	a,@r1
      000129 FF               [12]  578 	mov	r7,a
      00012A 24 24            [12]  579 	add	a,#_bitmap
      00012C F8               [12]  580 	mov	r0,a
      00012D 76 01            [12]  581 	mov	@r0,#0x01
      00012F 15 6C            [12]  582 	dec	_p_tail
      000131                        583 00118$:
      000131 D2 AF            [12]  584 	setb	_EA
      000133 22               [24]  585 	ret
                                    586 ;------------------------------------------------------------
                                    587 ;Allocation info for local variables in function 'Car2'
                                    588 ;------------------------------------------------------------
                                    589 ;	testparking.c:60: void Car2(void) {
                                    590 ;	-----------------------------------------
                                    591 ;	 function Car2
                                    592 ;	-----------------------------------------
      000134                        593 _Car2:
                                    594 ;	testparking.c:61: log[2] = now();
      000134 12 08 7E         [24]  595 	lcall	_now
      000137 E5 82            [12]  596 	mov	a,dpl
      000139 78 32            [12]  597 	mov	r0,#(_log + 0x0002)
      00013B F6               [12]  598 	mov	@r0,a
                                    599 ;	testparking.c:62: SemaphoreWait(mutex,m_tail);
      00013C C2 AF            [12]  600 	clr	_EA
      00013E 78 3A            [12]  601 	mov	r0,#_mutex
      000140 16               [12]  602 	dec	@r0
      000141 78 3A            [12]  603 	mov	r0,#_mutex
      000143 E6               [12]  604 	mov	a,@r0
      000144 30 E7 13         [24]  605 	jnb	acc.7,00102$
      000147 05 3C            [12]  606 	inc	_m_tail
      000149 A9 3C            [24]  607 	mov	r1,_m_tail
      00014B 78 28            [12]  608 	mov	r0,#_ID
      00014D E6               [12]  609 	mov	a,@r0
      00014E F7               [12]  610 	mov	@r1,a
      00014F 78 28            [12]  611 	mov	r0,#_ID
      000151 E6               [12]  612 	mov	a,@r0
      000152 24 24            [12]  613 	add	a,#_bitmap
      000154 F8               [12]  614 	mov	r0,a
      000155 76 FF            [12]  615 	mov	@r0,#0xFF
      000157 12 0A BA         [24]  616 	lcall	_ThreadYield
      00015A                        617 00102$:
      00015A D2 AF            [12]  618 	setb	_EA
                                    619 ;	testparking.c:63: if(!plot[0]) {
      00015C 78 4E            [12]  620 	mov	r0,#_plot
      00015E E6               [12]  621 	mov	a,@r0
      00015F 70 0E            [24]  622 	jnz	00104$
                                    623 ;	testparking.c:64: plot[0] = 2;
      000161 78 4E            [12]  624 	mov	r0,#_plot
      000163 76 02            [12]  625 	mov	@r0,#0x02
                                    626 ;	testparking.c:72: __endasm;
      000165 78 32            [12]  627 	mov r0,#(_log + 0x0002)
      000167 E6               [12]  628 	mov a,@r0
      000168 FF               [12]  629 	mov r7,a
      000169 74 7F            [12]  630 	mov a,#0x7F
      00016B 5F               [12]  631 	anl a,r7
      00016C F6               [12]  632 	mov @r0,a
      00016D 80 0C            [24]  633 	sjmp	00105$
      00016F                        634 00104$:
                                    635 ;	testparking.c:75: plot[1] = 2;
      00016F 78 4F            [12]  636 	mov	r0,#(_plot + 0x0001)
      000171 76 02            [12]  637 	mov	@r0,#0x02
                                    638 ;	testparking.c:83: __endasm;
      000173 78 32            [12]  639 	mov r0,#(_log + 0x0002)
      000175 E6               [12]  640 	mov a,@r0
      000176 FF               [12]  641 	mov r7,a
      000177 74 80            [12]  642 	mov a,#0x80
      000179 4F               [12]  643 	orl a,r7
      00017A F6               [12]  644 	mov @r0,a
      00017B                        645 00105$:
                                    646 ;	testparking.c:85: SemaphoreSignal(mutex,m_tail);
      00017B C2 AF            [12]  647 	clr	_EA
      00017D 78 3A            [12]  648 	mov	r0,#_mutex
      00017F 06               [12]  649 	inc	@r0
      000180 78 3A            [12]  650 	mov	r0,#_mutex
      000182 C3               [12]  651 	clr	c
      000183 74 80            [12]  652 	mov	a,#(0x00 ^ 0x80)
      000185 86 F0            [24]  653 	mov	b,@r0
      000187 63 F0 80         [24]  654 	xrl	b,#0x80
      00018A 95 F0            [12]  655 	subb	a,b
      00018C 40 0B            [24]  656 	jc	00107$
      00018E A9 3C            [24]  657 	mov	r1,_m_tail
      000190 E7               [12]  658 	mov	a,@r1
      000191 FF               [12]  659 	mov	r7,a
      000192 24 24            [12]  660 	add	a,#_bitmap
      000194 F8               [12]  661 	mov	r0,a
      000195 76 01            [12]  662 	mov	@r0,#0x01
      000197 15 3C            [12]  663 	dec	_m_tail
      000199                        664 00107$:
      000199 D2 AF            [12]  665 	setb	_EA
                                    666 ;	testparking.c:86: SemaphoreSignal(print,p_tail);
      00019B C2 AF            [12]  667 	clr	_EA
      00019D 78 5B            [12]  668 	mov	r0,#_print
      00019F 06               [12]  669 	inc	@r0
      0001A0 78 5B            [12]  670 	mov	r0,#_print
      0001A2 C3               [12]  671 	clr	c
      0001A3 74 80            [12]  672 	mov	a,#(0x00 ^ 0x80)
      0001A5 86 F0            [24]  673 	mov	b,@r0
      0001A7 63 F0 80         [24]  674 	xrl	b,#0x80
      0001AA 95 F0            [12]  675 	subb	a,b
      0001AC 40 0B            [24]  676 	jc	00109$
      0001AE A9 6C            [24]  677 	mov	r1,_p_tail
      0001B0 E7               [12]  678 	mov	a,@r1
      0001B1 FF               [12]  679 	mov	r7,a
      0001B2 24 24            [12]  680 	add	a,#_bitmap
      0001B4 F8               [12]  681 	mov	r0,a
      0001B5 76 01            [12]  682 	mov	@r0,#0x01
      0001B7 15 6C            [12]  683 	dec	_p_tail
      0001B9                        684 00109$:
      0001B9 D2 AF            [12]  685 	setb	_EA
                                    686 ;	testparking.c:87: delay(2);
      0001BB 75 82 02         [24]  687 	mov	dpl,#0x02
      0001BE 12 08 83         [24]  688 	lcall	_delay
                                    689 ;	testparking.c:88: log[3] = now();
      0001C1 12 08 7E         [24]  690 	lcall	_now
      0001C4 E5 82            [12]  691 	mov	a,dpl
      0001C6 78 33            [12]  692 	mov	r0,#(_log + 0x0003)
      0001C8 F6               [12]  693 	mov	@r0,a
                                    694 ;	testparking.c:89: SemaphoreWait(mutex,m_tail);
      0001C9 C2 AF            [12]  695 	clr	_EA
      0001CB 78 3A            [12]  696 	mov	r0,#_mutex
      0001CD 16               [12]  697 	dec	@r0
      0001CE 78 3A            [12]  698 	mov	r0,#_mutex
      0001D0 E6               [12]  699 	mov	a,@r0
      0001D1 30 E7 13         [24]  700 	jnb	acc.7,00111$
      0001D4 05 3C            [12]  701 	inc	_m_tail
      0001D6 A9 3C            [24]  702 	mov	r1,_m_tail
      0001D8 78 28            [12]  703 	mov	r0,#_ID
      0001DA E6               [12]  704 	mov	a,@r0
      0001DB F7               [12]  705 	mov	@r1,a
      0001DC 78 28            [12]  706 	mov	r0,#_ID
      0001DE E6               [12]  707 	mov	a,@r0
      0001DF 24 24            [12]  708 	add	a,#_bitmap
      0001E1 F8               [12]  709 	mov	r0,a
      0001E2 76 FF            [12]  710 	mov	@r0,#0xFF
      0001E4 12 0A BA         [24]  711 	lcall	_ThreadYield
      0001E7                        712 00111$:
      0001E7 D2 AF            [12]  713 	setb	_EA
                                    714 ;	testparking.c:90: if(!(plot[0]-2)) {
      0001E9 78 4E            [12]  715 	mov	r0,#_plot
      0001EB E6               [12]  716 	mov	a,@r0
      0001EC FF               [12]  717 	mov	r7,a
      0001ED 33               [12]  718 	rlc	a
      0001EE 95 E0            [12]  719 	subb	a,acc
      0001F0 FE               [12]  720 	mov	r6,a
      0001F1 EF               [12]  721 	mov	a,r7
      0001F2 24 FE            [12]  722 	add	a,#0xFE
      0001F4 FF               [12]  723 	mov	r7,a
      0001F5 EE               [12]  724 	mov	a,r6
      0001F6 34 FF            [12]  725 	addc	a,#0xFF
      0001F8 FE               [12]  726 	mov	r6,a
      0001F9 4F               [12]  727 	orl	a,r7
                                    728 ;	testparking.c:91: plot[0] = 0;
      0001FA 70 0D            [24]  729 	jnz	00113$
      0001FC 78 4E            [12]  730 	mov	r0,#_plot
      0001FE F6               [12]  731 	mov	@r0,a
                                    732 ;	testparking.c:99: __endasm;
      0001FF 78 33            [12]  733 	mov r0,#(_log + 0x0003)
      000201 E6               [12]  734 	mov a,@r0
      000202 FF               [12]  735 	mov r7,a
      000203 74 7F            [12]  736 	mov a,#0x7F
      000205 5F               [12]  737 	anl a,r7
      000206 F6               [12]  738 	mov @r0,a
      000207 80 0C            [24]  739 	sjmp	00114$
      000209                        740 00113$:
                                    741 ;	testparking.c:102: plot[1] = 0;
      000209 78 4F            [12]  742 	mov	r0,#(_plot + 0x0001)
      00020B 76 00            [12]  743 	mov	@r0,#0x00
                                    744 ;	testparking.c:110: __endasm;
      00020D 78 33            [12]  745 	mov r0,#(_log + 0x0003)
      00020F E6               [12]  746 	mov a,@r0
      000210 FF               [12]  747 	mov r7,a
      000211 74 80            [12]  748 	mov a,#0x80
      000213 4F               [12]  749 	orl a,r7
      000214 F6               [12]  750 	mov @r0,a
      000215                        751 00114$:
                                    752 ;	testparking.c:112: SemaphoreSignal(mutex,m_tail);
      000215 C2 AF            [12]  753 	clr	_EA
      000217 78 3A            [12]  754 	mov	r0,#_mutex
      000219 06               [12]  755 	inc	@r0
      00021A 78 3A            [12]  756 	mov	r0,#_mutex
      00021C C3               [12]  757 	clr	c
      00021D 74 80            [12]  758 	mov	a,#(0x00 ^ 0x80)
      00021F 86 F0            [24]  759 	mov	b,@r0
      000221 63 F0 80         [24]  760 	xrl	b,#0x80
      000224 95 F0            [12]  761 	subb	a,b
      000226 40 0B            [24]  762 	jc	00116$
      000228 A9 3C            [24]  763 	mov	r1,_m_tail
      00022A E7               [12]  764 	mov	a,@r1
      00022B FF               [12]  765 	mov	r7,a
      00022C 24 24            [12]  766 	add	a,#_bitmap
      00022E F8               [12]  767 	mov	r0,a
      00022F 76 01            [12]  768 	mov	@r0,#0x01
      000231 15 3C            [12]  769 	dec	_m_tail
      000233                        770 00116$:
      000233 D2 AF            [12]  771 	setb	_EA
                                    772 ;	testparking.c:113: SemaphoreSignal(print,p_tail);
      000235 C2 AF            [12]  773 	clr	_EA
      000237 78 5B            [12]  774 	mov	r0,#_print
      000239 06               [12]  775 	inc	@r0
      00023A 78 5B            [12]  776 	mov	r0,#_print
      00023C C3               [12]  777 	clr	c
      00023D 74 80            [12]  778 	mov	a,#(0x00 ^ 0x80)
      00023F 86 F0            [24]  779 	mov	b,@r0
      000241 63 F0 80         [24]  780 	xrl	b,#0x80
      000244 95 F0            [12]  781 	subb	a,b
      000246 40 0B            [24]  782 	jc	00118$
      000248 A9 6C            [24]  783 	mov	r1,_p_tail
      00024A E7               [12]  784 	mov	a,@r1
      00024B FF               [12]  785 	mov	r7,a
      00024C 24 24            [12]  786 	add	a,#_bitmap
      00024E F8               [12]  787 	mov	r0,a
      00024F 76 01            [12]  788 	mov	@r0,#0x01
      000251 15 6C            [12]  789 	dec	_p_tail
      000253                        790 00118$:
      000253 D2 AF            [12]  791 	setb	_EA
      000255 22               [24]  792 	ret
                                    793 ;------------------------------------------------------------
                                    794 ;Allocation info for local variables in function 'Car3'
                                    795 ;------------------------------------------------------------
                                    796 ;	testparking.c:116: void Car3(void) {
                                    797 ;	-----------------------------------------
                                    798 ;	 function Car3
                                    799 ;	-----------------------------------------
      000256                        800 _Car3:
                                    801 ;	testparking.c:117: log[4] = now();
      000256 12 08 7E         [24]  802 	lcall	_now
      000259 E5 82            [12]  803 	mov	a,dpl
      00025B 78 34            [12]  804 	mov	r0,#(_log + 0x0004)
      00025D F6               [12]  805 	mov	@r0,a
                                    806 ;	testparking.c:118: SemaphoreWait(mutex,m_tail);
      00025E C2 AF            [12]  807 	clr	_EA
      000260 78 3A            [12]  808 	mov	r0,#_mutex
      000262 16               [12]  809 	dec	@r0
      000263 78 3A            [12]  810 	mov	r0,#_mutex
      000265 E6               [12]  811 	mov	a,@r0
      000266 30 E7 13         [24]  812 	jnb	acc.7,00102$
      000269 05 3C            [12]  813 	inc	_m_tail
      00026B A9 3C            [24]  814 	mov	r1,_m_tail
      00026D 78 28            [12]  815 	mov	r0,#_ID
      00026F E6               [12]  816 	mov	a,@r0
      000270 F7               [12]  817 	mov	@r1,a
      000271 78 28            [12]  818 	mov	r0,#_ID
      000273 E6               [12]  819 	mov	a,@r0
      000274 24 24            [12]  820 	add	a,#_bitmap
      000276 F8               [12]  821 	mov	r0,a
      000277 76 FF            [12]  822 	mov	@r0,#0xFF
      000279 12 0A BA         [24]  823 	lcall	_ThreadYield
      00027C                        824 00102$:
      00027C D2 AF            [12]  825 	setb	_EA
                                    826 ;	testparking.c:119: if(!plot[0]) {
      00027E 78 4E            [12]  827 	mov	r0,#_plot
      000280 E6               [12]  828 	mov	a,@r0
      000281 70 0E            [24]  829 	jnz	00104$
                                    830 ;	testparking.c:120: plot[0] = 3;
      000283 78 4E            [12]  831 	mov	r0,#_plot
      000285 76 03            [12]  832 	mov	@r0,#0x03
                                    833 ;	testparking.c:128: __endasm;
      000287 78 34            [12]  834 	mov r0,#(_log + 0x0004)
      000289 E6               [12]  835 	mov a,@r0
      00028A FF               [12]  836 	mov r7,a
      00028B 74 7F            [12]  837 	mov a,#0x7F
      00028D 5F               [12]  838 	anl a,r7
      00028E F6               [12]  839 	mov @r0,a
      00028F 80 0C            [24]  840 	sjmp	00105$
      000291                        841 00104$:
                                    842 ;	testparking.c:131: plot[1] = 3;
      000291 78 4F            [12]  843 	mov	r0,#(_plot + 0x0001)
      000293 76 03            [12]  844 	mov	@r0,#0x03
                                    845 ;	testparking.c:139: __endasm;
      000295 78 34            [12]  846 	mov r0,#(_log + 0x0004)
      000297 E6               [12]  847 	mov a,@r0
      000298 FF               [12]  848 	mov r7,a
      000299 74 80            [12]  849 	mov a,#0x80
      00029B 4F               [12]  850 	orl a,r7
      00029C F6               [12]  851 	mov @r0,a
      00029D                        852 00105$:
                                    853 ;	testparking.c:141: SemaphoreSignal(mutex,m_tail);
      00029D C2 AF            [12]  854 	clr	_EA
      00029F 78 3A            [12]  855 	mov	r0,#_mutex
      0002A1 06               [12]  856 	inc	@r0
      0002A2 78 3A            [12]  857 	mov	r0,#_mutex
      0002A4 C3               [12]  858 	clr	c
      0002A5 74 80            [12]  859 	mov	a,#(0x00 ^ 0x80)
      0002A7 86 F0            [24]  860 	mov	b,@r0
      0002A9 63 F0 80         [24]  861 	xrl	b,#0x80
      0002AC 95 F0            [12]  862 	subb	a,b
      0002AE 40 0B            [24]  863 	jc	00107$
      0002B0 A9 3C            [24]  864 	mov	r1,_m_tail
      0002B2 E7               [12]  865 	mov	a,@r1
      0002B3 FF               [12]  866 	mov	r7,a
      0002B4 24 24            [12]  867 	add	a,#_bitmap
      0002B6 F8               [12]  868 	mov	r0,a
      0002B7 76 01            [12]  869 	mov	@r0,#0x01
      0002B9 15 3C            [12]  870 	dec	_m_tail
      0002BB                        871 00107$:
      0002BB D2 AF            [12]  872 	setb	_EA
                                    873 ;	testparking.c:142: SemaphoreSignal(print,p_tail);
      0002BD C2 AF            [12]  874 	clr	_EA
      0002BF 78 5B            [12]  875 	mov	r0,#_print
      0002C1 06               [12]  876 	inc	@r0
      0002C2 78 5B            [12]  877 	mov	r0,#_print
      0002C4 C3               [12]  878 	clr	c
      0002C5 74 80            [12]  879 	mov	a,#(0x00 ^ 0x80)
      0002C7 86 F0            [24]  880 	mov	b,@r0
      0002C9 63 F0 80         [24]  881 	xrl	b,#0x80
      0002CC 95 F0            [12]  882 	subb	a,b
      0002CE 40 0B            [24]  883 	jc	00109$
      0002D0 A9 6C            [24]  884 	mov	r1,_p_tail
      0002D2 E7               [12]  885 	mov	a,@r1
      0002D3 FF               [12]  886 	mov	r7,a
      0002D4 24 24            [12]  887 	add	a,#_bitmap
      0002D6 F8               [12]  888 	mov	r0,a
      0002D7 76 01            [12]  889 	mov	@r0,#0x01
      0002D9 15 6C            [12]  890 	dec	_p_tail
      0002DB                        891 00109$:
      0002DB D2 AF            [12]  892 	setb	_EA
                                    893 ;	testparking.c:143: delay(2);
      0002DD 75 82 02         [24]  894 	mov	dpl,#0x02
      0002E0 12 08 83         [24]  895 	lcall	_delay
                                    896 ;	testparking.c:144: log[5] = now();
      0002E3 12 08 7E         [24]  897 	lcall	_now
      0002E6 E5 82            [12]  898 	mov	a,dpl
      0002E8 78 35            [12]  899 	mov	r0,#(_log + 0x0005)
      0002EA F6               [12]  900 	mov	@r0,a
                                    901 ;	testparking.c:145: SemaphoreWait(mutex,m_tail);
      0002EB C2 AF            [12]  902 	clr	_EA
      0002ED 78 3A            [12]  903 	mov	r0,#_mutex
      0002EF 16               [12]  904 	dec	@r0
      0002F0 78 3A            [12]  905 	mov	r0,#_mutex
      0002F2 E6               [12]  906 	mov	a,@r0
      0002F3 30 E7 13         [24]  907 	jnb	acc.7,00111$
      0002F6 05 3C            [12]  908 	inc	_m_tail
      0002F8 A9 3C            [24]  909 	mov	r1,_m_tail
      0002FA 78 28            [12]  910 	mov	r0,#_ID
      0002FC E6               [12]  911 	mov	a,@r0
      0002FD F7               [12]  912 	mov	@r1,a
      0002FE 78 28            [12]  913 	mov	r0,#_ID
      000300 E6               [12]  914 	mov	a,@r0
      000301 24 24            [12]  915 	add	a,#_bitmap
      000303 F8               [12]  916 	mov	r0,a
      000304 76 FF            [12]  917 	mov	@r0,#0xFF
      000306 12 0A BA         [24]  918 	lcall	_ThreadYield
      000309                        919 00111$:
      000309 D2 AF            [12]  920 	setb	_EA
                                    921 ;	testparking.c:146: if(!(plot[0]-3)) {
      00030B 78 4E            [12]  922 	mov	r0,#_plot
      00030D E6               [12]  923 	mov	a,@r0
      00030E FF               [12]  924 	mov	r7,a
      00030F 33               [12]  925 	rlc	a
      000310 95 E0            [12]  926 	subb	a,acc
      000312 FE               [12]  927 	mov	r6,a
      000313 EF               [12]  928 	mov	a,r7
      000314 24 FD            [12]  929 	add	a,#0xFD
      000316 FF               [12]  930 	mov	r7,a
      000317 EE               [12]  931 	mov	a,r6
      000318 34 FF            [12]  932 	addc	a,#0xFF
      00031A FE               [12]  933 	mov	r6,a
      00031B 4F               [12]  934 	orl	a,r7
                                    935 ;	testparking.c:147: plot[0] = 0;
      00031C 70 0D            [24]  936 	jnz	00113$
      00031E 78 4E            [12]  937 	mov	r0,#_plot
      000320 F6               [12]  938 	mov	@r0,a
                                    939 ;	testparking.c:155: __endasm;
      000321 78 35            [12]  940 	mov r0,#(_log + 0x0005)
      000323 E6               [12]  941 	mov a,@r0
      000324 FF               [12]  942 	mov r7,a
      000325 74 7F            [12]  943 	mov a,#0x7F
      000327 5F               [12]  944 	anl a,r7
      000328 F6               [12]  945 	mov @r0,a
      000329 80 0C            [24]  946 	sjmp	00114$
      00032B                        947 00113$:
                                    948 ;	testparking.c:158: plot[1] = 0;
      00032B 78 4F            [12]  949 	mov	r0,#(_plot + 0x0001)
      00032D 76 00            [12]  950 	mov	@r0,#0x00
                                    951 ;	testparking.c:166: __endasm;
      00032F 78 35            [12]  952 	mov r0,#(_log + 0x0005)
      000331 E6               [12]  953 	mov a,@r0
      000332 FF               [12]  954 	mov r7,a
      000333 74 80            [12]  955 	mov a,#0x80
      000335 4F               [12]  956 	orl a,r7
      000336 F6               [12]  957 	mov @r0,a
      000337                        958 00114$:
                                    959 ;	testparking.c:168: SemaphoreSignal(mutex,m_tail);
      000337 C2 AF            [12]  960 	clr	_EA
      000339 78 3A            [12]  961 	mov	r0,#_mutex
      00033B 06               [12]  962 	inc	@r0
      00033C 78 3A            [12]  963 	mov	r0,#_mutex
      00033E C3               [12]  964 	clr	c
      00033F 74 80            [12]  965 	mov	a,#(0x00 ^ 0x80)
      000341 86 F0            [24]  966 	mov	b,@r0
      000343 63 F0 80         [24]  967 	xrl	b,#0x80
      000346 95 F0            [12]  968 	subb	a,b
      000348 40 0B            [24]  969 	jc	00116$
      00034A A9 3C            [24]  970 	mov	r1,_m_tail
      00034C E7               [12]  971 	mov	a,@r1
      00034D FF               [12]  972 	mov	r7,a
      00034E 24 24            [12]  973 	add	a,#_bitmap
      000350 F8               [12]  974 	mov	r0,a
      000351 76 01            [12]  975 	mov	@r0,#0x01
      000353 15 3C            [12]  976 	dec	_m_tail
      000355                        977 00116$:
      000355 D2 AF            [12]  978 	setb	_EA
                                    979 ;	testparking.c:169: SemaphoreSignal(print,p_tail);
      000357 C2 AF            [12]  980 	clr	_EA
      000359 78 5B            [12]  981 	mov	r0,#_print
      00035B 06               [12]  982 	inc	@r0
      00035C 78 5B            [12]  983 	mov	r0,#_print
      00035E C3               [12]  984 	clr	c
      00035F 74 80            [12]  985 	mov	a,#(0x00 ^ 0x80)
      000361 86 F0            [24]  986 	mov	b,@r0
      000363 63 F0 80         [24]  987 	xrl	b,#0x80
      000366 95 F0            [12]  988 	subb	a,b
      000368 40 0B            [24]  989 	jc	00118$
      00036A A9 6C            [24]  990 	mov	r1,_p_tail
      00036C E7               [12]  991 	mov	a,@r1
      00036D FF               [12]  992 	mov	r7,a
      00036E 24 24            [12]  993 	add	a,#_bitmap
      000370 F8               [12]  994 	mov	r0,a
      000371 76 01            [12]  995 	mov	@r0,#0x01
      000373 15 6C            [12]  996 	dec	_p_tail
      000375                        997 00118$:
      000375 D2 AF            [12]  998 	setb	_EA
      000377 22               [24]  999 	ret
                                   1000 ;------------------------------------------------------------
                                   1001 ;Allocation info for local variables in function 'Car4'
                                   1002 ;------------------------------------------------------------
                                   1003 ;	testparking.c:172: void Car4(void) {
                                   1004 ;	-----------------------------------------
                                   1005 ;	 function Car4
                                   1006 ;	-----------------------------------------
      000378                       1007 _Car4:
                                   1008 ;	testparking.c:173: log[6] = now();
      000378 12 08 7E         [24] 1009 	lcall	_now
      00037B E5 82            [12] 1010 	mov	a,dpl
      00037D 78 36            [12] 1011 	mov	r0,#(_log + 0x0006)
      00037F F6               [12] 1012 	mov	@r0,a
                                   1013 ;	testparking.c:174: SemaphoreWait(mutex,m_tail);
      000380 C2 AF            [12] 1014 	clr	_EA
      000382 78 3A            [12] 1015 	mov	r0,#_mutex
      000384 16               [12] 1016 	dec	@r0
      000385 78 3A            [12] 1017 	mov	r0,#_mutex
      000387 E6               [12] 1018 	mov	a,@r0
      000388 30 E7 13         [24] 1019 	jnb	acc.7,00102$
      00038B 05 3C            [12] 1020 	inc	_m_tail
      00038D A9 3C            [24] 1021 	mov	r1,_m_tail
      00038F 78 28            [12] 1022 	mov	r0,#_ID
      000391 E6               [12] 1023 	mov	a,@r0
      000392 F7               [12] 1024 	mov	@r1,a
      000393 78 28            [12] 1025 	mov	r0,#_ID
      000395 E6               [12] 1026 	mov	a,@r0
      000396 24 24            [12] 1027 	add	a,#_bitmap
      000398 F8               [12] 1028 	mov	r0,a
      000399 76 FF            [12] 1029 	mov	@r0,#0xFF
      00039B 12 0A BA         [24] 1030 	lcall	_ThreadYield
      00039E                       1031 00102$:
      00039E D2 AF            [12] 1032 	setb	_EA
                                   1033 ;	testparking.c:175: if(!plot[0]) {
      0003A0 78 4E            [12] 1034 	mov	r0,#_plot
      0003A2 E6               [12] 1035 	mov	a,@r0
      0003A3 70 0E            [24] 1036 	jnz	00104$
                                   1037 ;	testparking.c:176: plot[0] = 4;
      0003A5 78 4E            [12] 1038 	mov	r0,#_plot
      0003A7 76 04            [12] 1039 	mov	@r0,#0x04
                                   1040 ;	testparking.c:184: __endasm;
      0003A9 78 36            [12] 1041 	mov r0,#(_log + 0x0006)
      0003AB E6               [12] 1042 	mov a,@r0
      0003AC FF               [12] 1043 	mov r7,a
      0003AD 74 7F            [12] 1044 	mov a,#0x7F
      0003AF 5F               [12] 1045 	anl a,r7
      0003B0 F6               [12] 1046 	mov @r0,a
      0003B1 80 0C            [24] 1047 	sjmp	00105$
      0003B3                       1048 00104$:
                                   1049 ;	testparking.c:187: plot[1] = 4;
      0003B3 78 4F            [12] 1050 	mov	r0,#(_plot + 0x0001)
      0003B5 76 04            [12] 1051 	mov	@r0,#0x04
                                   1052 ;	testparking.c:195: __endasm;
      0003B7 78 36            [12] 1053 	mov r0,#(_log + 0x0006)
      0003B9 E6               [12] 1054 	mov a,@r0
      0003BA FF               [12] 1055 	mov r7,a
      0003BB 74 80            [12] 1056 	mov a,#0x80
      0003BD 4F               [12] 1057 	orl a,r7
      0003BE F6               [12] 1058 	mov @r0,a
      0003BF                       1059 00105$:
                                   1060 ;	testparking.c:197: SemaphoreSignal(mutex,m_tail);
      0003BF C2 AF            [12] 1061 	clr	_EA
      0003C1 78 3A            [12] 1062 	mov	r0,#_mutex
      0003C3 06               [12] 1063 	inc	@r0
      0003C4 78 3A            [12] 1064 	mov	r0,#_mutex
      0003C6 C3               [12] 1065 	clr	c
      0003C7 74 80            [12] 1066 	mov	a,#(0x00 ^ 0x80)
      0003C9 86 F0            [24] 1067 	mov	b,@r0
      0003CB 63 F0 80         [24] 1068 	xrl	b,#0x80
      0003CE 95 F0            [12] 1069 	subb	a,b
      0003D0 40 0B            [24] 1070 	jc	00107$
      0003D2 A9 3C            [24] 1071 	mov	r1,_m_tail
      0003D4 E7               [12] 1072 	mov	a,@r1
      0003D5 FF               [12] 1073 	mov	r7,a
      0003D6 24 24            [12] 1074 	add	a,#_bitmap
      0003D8 F8               [12] 1075 	mov	r0,a
      0003D9 76 01            [12] 1076 	mov	@r0,#0x01
      0003DB 15 3C            [12] 1077 	dec	_m_tail
      0003DD                       1078 00107$:
      0003DD D2 AF            [12] 1079 	setb	_EA
                                   1080 ;	testparking.c:198: SemaphoreSignal(print,p_tail);
      0003DF C2 AF            [12] 1081 	clr	_EA
      0003E1 78 5B            [12] 1082 	mov	r0,#_print
      0003E3 06               [12] 1083 	inc	@r0
      0003E4 78 5B            [12] 1084 	mov	r0,#_print
      0003E6 C3               [12] 1085 	clr	c
      0003E7 74 80            [12] 1086 	mov	a,#(0x00 ^ 0x80)
      0003E9 86 F0            [24] 1087 	mov	b,@r0
      0003EB 63 F0 80         [24] 1088 	xrl	b,#0x80
      0003EE 95 F0            [12] 1089 	subb	a,b
      0003F0 40 0B            [24] 1090 	jc	00109$
      0003F2 A9 6C            [24] 1091 	mov	r1,_p_tail
      0003F4 E7               [12] 1092 	mov	a,@r1
      0003F5 FF               [12] 1093 	mov	r7,a
      0003F6 24 24            [12] 1094 	add	a,#_bitmap
      0003F8 F8               [12] 1095 	mov	r0,a
      0003F9 76 01            [12] 1096 	mov	@r0,#0x01
      0003FB 15 6C            [12] 1097 	dec	_p_tail
      0003FD                       1098 00109$:
      0003FD D2 AF            [12] 1099 	setb	_EA
                                   1100 ;	testparking.c:199: delay(2);
      0003FF 75 82 02         [24] 1101 	mov	dpl,#0x02
      000402 12 08 83         [24] 1102 	lcall	_delay
                                   1103 ;	testparking.c:200: log[7] = now();
      000405 12 08 7E         [24] 1104 	lcall	_now
      000408 E5 82            [12] 1105 	mov	a,dpl
      00040A 78 37            [12] 1106 	mov	r0,#(_log + 0x0007)
      00040C F6               [12] 1107 	mov	@r0,a
                                   1108 ;	testparking.c:201: SemaphoreWait(mutex,m_tail);
      00040D C2 AF            [12] 1109 	clr	_EA
      00040F 78 3A            [12] 1110 	mov	r0,#_mutex
      000411 16               [12] 1111 	dec	@r0
      000412 78 3A            [12] 1112 	mov	r0,#_mutex
      000414 E6               [12] 1113 	mov	a,@r0
      000415 30 E7 13         [24] 1114 	jnb	acc.7,00111$
      000418 05 3C            [12] 1115 	inc	_m_tail
      00041A A9 3C            [24] 1116 	mov	r1,_m_tail
      00041C 78 28            [12] 1117 	mov	r0,#_ID
      00041E E6               [12] 1118 	mov	a,@r0
      00041F F7               [12] 1119 	mov	@r1,a
      000420 78 28            [12] 1120 	mov	r0,#_ID
      000422 E6               [12] 1121 	mov	a,@r0
      000423 24 24            [12] 1122 	add	a,#_bitmap
      000425 F8               [12] 1123 	mov	r0,a
      000426 76 FF            [12] 1124 	mov	@r0,#0xFF
      000428 12 0A BA         [24] 1125 	lcall	_ThreadYield
      00042B                       1126 00111$:
      00042B D2 AF            [12] 1127 	setb	_EA
                                   1128 ;	testparking.c:202: if(!(plot[0]-4)) {
      00042D 78 4E            [12] 1129 	mov	r0,#_plot
      00042F E6               [12] 1130 	mov	a,@r0
      000430 FF               [12] 1131 	mov	r7,a
      000431 33               [12] 1132 	rlc	a
      000432 95 E0            [12] 1133 	subb	a,acc
      000434 FE               [12] 1134 	mov	r6,a
      000435 EF               [12] 1135 	mov	a,r7
      000436 24 FC            [12] 1136 	add	a,#0xFC
      000438 FF               [12] 1137 	mov	r7,a
      000439 EE               [12] 1138 	mov	a,r6
      00043A 34 FF            [12] 1139 	addc	a,#0xFF
      00043C FE               [12] 1140 	mov	r6,a
      00043D 4F               [12] 1141 	orl	a,r7
                                   1142 ;	testparking.c:203: plot[0] = 0;
      00043E 70 0D            [24] 1143 	jnz	00113$
      000440 78 4E            [12] 1144 	mov	r0,#_plot
      000442 F6               [12] 1145 	mov	@r0,a
                                   1146 ;	testparking.c:211: __endasm;
      000443 78 37            [12] 1147 	mov r0,#(_log + 0x0007)
      000445 E6               [12] 1148 	mov a,@r0
      000446 FF               [12] 1149 	mov r7,a
      000447 74 7F            [12] 1150 	mov a,#0x7F
      000449 5F               [12] 1151 	anl a,r7
      00044A F6               [12] 1152 	mov @r0,a
      00044B 80 0C            [24] 1153 	sjmp	00114$
      00044D                       1154 00113$:
                                   1155 ;	testparking.c:214: plot[1] = 0;
      00044D 78 4F            [12] 1156 	mov	r0,#(_plot + 0x0001)
      00044F 76 00            [12] 1157 	mov	@r0,#0x00
                                   1158 ;	testparking.c:222: __endasm;
      000451 78 37            [12] 1159 	mov r0,#(_log + 0x0007)
      000453 E6               [12] 1160 	mov a,@r0
      000454 FF               [12] 1161 	mov r7,a
      000455 74 80            [12] 1162 	mov a,#0x80
      000457 4F               [12] 1163 	orl a,r7
      000458 F6               [12] 1164 	mov @r0,a
      000459                       1165 00114$:
                                   1166 ;	testparking.c:224: SemaphoreSignal(mutex,m_tail);
      000459 C2 AF            [12] 1167 	clr	_EA
      00045B 78 3A            [12] 1168 	mov	r0,#_mutex
      00045D 06               [12] 1169 	inc	@r0
      00045E 78 3A            [12] 1170 	mov	r0,#_mutex
      000460 C3               [12] 1171 	clr	c
      000461 74 80            [12] 1172 	mov	a,#(0x00 ^ 0x80)
      000463 86 F0            [24] 1173 	mov	b,@r0
      000465 63 F0 80         [24] 1174 	xrl	b,#0x80
      000468 95 F0            [12] 1175 	subb	a,b
      00046A 40 0B            [24] 1176 	jc	00116$
      00046C A9 3C            [24] 1177 	mov	r1,_m_tail
      00046E E7               [12] 1178 	mov	a,@r1
      00046F FF               [12] 1179 	mov	r7,a
      000470 24 24            [12] 1180 	add	a,#_bitmap
      000472 F8               [12] 1181 	mov	r0,a
      000473 76 01            [12] 1182 	mov	@r0,#0x01
      000475 15 3C            [12] 1183 	dec	_m_tail
      000477                       1184 00116$:
      000477 D2 AF            [12] 1185 	setb	_EA
                                   1186 ;	testparking.c:225: SemaphoreSignal(print,p_tail);
      000479 C2 AF            [12] 1187 	clr	_EA
      00047B 78 5B            [12] 1188 	mov	r0,#_print
      00047D 06               [12] 1189 	inc	@r0
      00047E 78 5B            [12] 1190 	mov	r0,#_print
      000480 C3               [12] 1191 	clr	c
      000481 74 80            [12] 1192 	mov	a,#(0x00 ^ 0x80)
      000483 86 F0            [24] 1193 	mov	b,@r0
      000485 63 F0 80         [24] 1194 	xrl	b,#0x80
      000488 95 F0            [12] 1195 	subb	a,b
      00048A 40 0B            [24] 1196 	jc	00118$
      00048C A9 6C            [24] 1197 	mov	r1,_p_tail
      00048E E7               [12] 1198 	mov	a,@r1
      00048F FF               [12] 1199 	mov	r7,a
      000490 24 24            [12] 1200 	add	a,#_bitmap
      000492 F8               [12] 1201 	mov	r0,a
      000493 76 01            [12] 1202 	mov	@r0,#0x01
      000495 15 6C            [12] 1203 	dec	_p_tail
      000497                       1204 00118$:
      000497 D2 AF            [12] 1205 	setb	_EA
      000499 22               [24] 1206 	ret
                                   1207 ;------------------------------------------------------------
                                   1208 ;Allocation info for local variables in function 'Car5'
                                   1209 ;------------------------------------------------------------
                                   1210 ;	testparking.c:228: void Car5(void) {
                                   1211 ;	-----------------------------------------
                                   1212 ;	 function Car5
                                   1213 ;	-----------------------------------------
      00049A                       1214 _Car5:
                                   1215 ;	testparking.c:229: log[8] = now();
      00049A 12 08 7E         [24] 1216 	lcall	_now
      00049D E5 82            [12] 1217 	mov	a,dpl
      00049F 78 38            [12] 1218 	mov	r0,#(_log + 0x0008)
      0004A1 F6               [12] 1219 	mov	@r0,a
                                   1220 ;	testparking.c:230: SemaphoreWait(mutex,m_tail);
      0004A2 C2 AF            [12] 1221 	clr	_EA
      0004A4 78 3A            [12] 1222 	mov	r0,#_mutex
      0004A6 16               [12] 1223 	dec	@r0
      0004A7 78 3A            [12] 1224 	mov	r0,#_mutex
      0004A9 E6               [12] 1225 	mov	a,@r0
      0004AA 30 E7 13         [24] 1226 	jnb	acc.7,00102$
      0004AD 05 3C            [12] 1227 	inc	_m_tail
      0004AF A9 3C            [24] 1228 	mov	r1,_m_tail
      0004B1 78 28            [12] 1229 	mov	r0,#_ID
      0004B3 E6               [12] 1230 	mov	a,@r0
      0004B4 F7               [12] 1231 	mov	@r1,a
      0004B5 78 28            [12] 1232 	mov	r0,#_ID
      0004B7 E6               [12] 1233 	mov	a,@r0
      0004B8 24 24            [12] 1234 	add	a,#_bitmap
      0004BA F8               [12] 1235 	mov	r0,a
      0004BB 76 FF            [12] 1236 	mov	@r0,#0xFF
      0004BD 12 0A BA         [24] 1237 	lcall	_ThreadYield
      0004C0                       1238 00102$:
      0004C0 D2 AF            [12] 1239 	setb	_EA
                                   1240 ;	testparking.c:231: if(!plot[0]) {
      0004C2 78 4E            [12] 1241 	mov	r0,#_plot
      0004C4 E6               [12] 1242 	mov	a,@r0
      0004C5 70 0E            [24] 1243 	jnz	00104$
                                   1244 ;	testparking.c:232: plot[0] = 5;
      0004C7 78 4E            [12] 1245 	mov	r0,#_plot
      0004C9 76 05            [12] 1246 	mov	@r0,#0x05
                                   1247 ;	testparking.c:240: __endasm;
      0004CB 78 38            [12] 1248 	mov r0,#(_log + 0x0008)
      0004CD E6               [12] 1249 	mov a,@r0
      0004CE FF               [12] 1250 	mov r7,a
      0004CF 74 7F            [12] 1251 	mov a,#0x7F
      0004D1 5F               [12] 1252 	anl a,r7
      0004D2 F6               [12] 1253 	mov @r0,a
      0004D3 80 0C            [24] 1254 	sjmp	00105$
      0004D5                       1255 00104$:
                                   1256 ;	testparking.c:243: plot[1] = 5;
      0004D5 78 4F            [12] 1257 	mov	r0,#(_plot + 0x0001)
      0004D7 76 05            [12] 1258 	mov	@r0,#0x05
                                   1259 ;	testparking.c:251: __endasm;
      0004D9 78 38            [12] 1260 	mov r0,#(_log + 0x0008)
      0004DB E6               [12] 1261 	mov a,@r0
      0004DC FF               [12] 1262 	mov r7,a
      0004DD 74 80            [12] 1263 	mov a,#0x80
      0004DF 4F               [12] 1264 	orl a,r7
      0004E0 F6               [12] 1265 	mov @r0,a
      0004E1                       1266 00105$:
                                   1267 ;	testparking.c:253: SemaphoreSignal(mutex,m_tail);
      0004E1 C2 AF            [12] 1268 	clr	_EA
      0004E3 78 3A            [12] 1269 	mov	r0,#_mutex
      0004E5 06               [12] 1270 	inc	@r0
      0004E6 78 3A            [12] 1271 	mov	r0,#_mutex
      0004E8 C3               [12] 1272 	clr	c
      0004E9 74 80            [12] 1273 	mov	a,#(0x00 ^ 0x80)
      0004EB 86 F0            [24] 1274 	mov	b,@r0
      0004ED 63 F0 80         [24] 1275 	xrl	b,#0x80
      0004F0 95 F0            [12] 1276 	subb	a,b
      0004F2 40 0B            [24] 1277 	jc	00107$
      0004F4 A9 3C            [24] 1278 	mov	r1,_m_tail
      0004F6 E7               [12] 1279 	mov	a,@r1
      0004F7 FF               [12] 1280 	mov	r7,a
      0004F8 24 24            [12] 1281 	add	a,#_bitmap
      0004FA F8               [12] 1282 	mov	r0,a
      0004FB 76 01            [12] 1283 	mov	@r0,#0x01
      0004FD 15 3C            [12] 1284 	dec	_m_tail
      0004FF                       1285 00107$:
      0004FF D2 AF            [12] 1286 	setb	_EA
                                   1287 ;	testparking.c:254: SemaphoreSignal(print,p_tail);
      000501 C2 AF            [12] 1288 	clr	_EA
      000503 78 5B            [12] 1289 	mov	r0,#_print
      000505 06               [12] 1290 	inc	@r0
      000506 78 5B            [12] 1291 	mov	r0,#_print
      000508 C3               [12] 1292 	clr	c
      000509 74 80            [12] 1293 	mov	a,#(0x00 ^ 0x80)
      00050B 86 F0            [24] 1294 	mov	b,@r0
      00050D 63 F0 80         [24] 1295 	xrl	b,#0x80
      000510 95 F0            [12] 1296 	subb	a,b
      000512 40 0B            [24] 1297 	jc	00109$
      000514 A9 6C            [24] 1298 	mov	r1,_p_tail
      000516 E7               [12] 1299 	mov	a,@r1
      000517 FF               [12] 1300 	mov	r7,a
      000518 24 24            [12] 1301 	add	a,#_bitmap
      00051A F8               [12] 1302 	mov	r0,a
      00051B 76 01            [12] 1303 	mov	@r0,#0x01
      00051D 15 6C            [12] 1304 	dec	_p_tail
      00051F                       1305 00109$:
      00051F D2 AF            [12] 1306 	setb	_EA
                                   1307 ;	testparking.c:255: delay(2);
      000521 75 82 02         [24] 1308 	mov	dpl,#0x02
      000524 12 08 83         [24] 1309 	lcall	_delay
                                   1310 ;	testparking.c:256: log[9] = now();
      000527 12 08 7E         [24] 1311 	lcall	_now
      00052A E5 82            [12] 1312 	mov	a,dpl
      00052C 78 39            [12] 1313 	mov	r0,#(_log + 0x0009)
      00052E F6               [12] 1314 	mov	@r0,a
                                   1315 ;	testparking.c:257: SemaphoreWait(mutex,m_tail);
      00052F C2 AF            [12] 1316 	clr	_EA
      000531 78 3A            [12] 1317 	mov	r0,#_mutex
      000533 16               [12] 1318 	dec	@r0
      000534 78 3A            [12] 1319 	mov	r0,#_mutex
      000536 E6               [12] 1320 	mov	a,@r0
      000537 30 E7 13         [24] 1321 	jnb	acc.7,00111$
      00053A 05 3C            [12] 1322 	inc	_m_tail
      00053C A9 3C            [24] 1323 	mov	r1,_m_tail
      00053E 78 28            [12] 1324 	mov	r0,#_ID
      000540 E6               [12] 1325 	mov	a,@r0
      000541 F7               [12] 1326 	mov	@r1,a
      000542 78 28            [12] 1327 	mov	r0,#_ID
      000544 E6               [12] 1328 	mov	a,@r0
      000545 24 24            [12] 1329 	add	a,#_bitmap
      000547 F8               [12] 1330 	mov	r0,a
      000548 76 FF            [12] 1331 	mov	@r0,#0xFF
      00054A 12 0A BA         [24] 1332 	lcall	_ThreadYield
      00054D                       1333 00111$:
      00054D D2 AF            [12] 1334 	setb	_EA
                                   1335 ;	testparking.c:258: if(!(plot[0]-5)) {
      00054F 78 4E            [12] 1336 	mov	r0,#_plot
      000551 E6               [12] 1337 	mov	a,@r0
      000552 FF               [12] 1338 	mov	r7,a
      000553 33               [12] 1339 	rlc	a
      000554 95 E0            [12] 1340 	subb	a,acc
      000556 FE               [12] 1341 	mov	r6,a
      000557 EF               [12] 1342 	mov	a,r7
      000558 24 FB            [12] 1343 	add	a,#0xFB
      00055A FF               [12] 1344 	mov	r7,a
      00055B EE               [12] 1345 	mov	a,r6
      00055C 34 FF            [12] 1346 	addc	a,#0xFF
      00055E FE               [12] 1347 	mov	r6,a
      00055F 4F               [12] 1348 	orl	a,r7
                                   1349 ;	testparking.c:259: plot[0] = 0;
      000560 70 0D            [24] 1350 	jnz	00113$
      000562 78 4E            [12] 1351 	mov	r0,#_plot
      000564 F6               [12] 1352 	mov	@r0,a
                                   1353 ;	testparking.c:267: __endasm;
      000565 78 39            [12] 1354 	mov r0,#(_log + 0x0009)
      000567 E6               [12] 1355 	mov a,@r0
      000568 FF               [12] 1356 	mov r7,a
      000569 74 7F            [12] 1357 	mov a,#0x7F
      00056B 5F               [12] 1358 	anl a,r7
      00056C F6               [12] 1359 	mov @r0,a
      00056D 80 0C            [24] 1360 	sjmp	00114$
      00056F                       1361 00113$:
                                   1362 ;	testparking.c:270: plot[1] = 0;
      00056F 78 4F            [12] 1363 	mov	r0,#(_plot + 0x0001)
      000571 76 00            [12] 1364 	mov	@r0,#0x00
                                   1365 ;	testparking.c:278: __endasm;
      000573 78 39            [12] 1366 	mov r0,#(_log + 0x0009)
      000575 E6               [12] 1367 	mov a,@r0
      000576 FF               [12] 1368 	mov r7,a
      000577 74 80            [12] 1369 	mov a,#0x80
      000579 4F               [12] 1370 	orl a,r7
      00057A F6               [12] 1371 	mov @r0,a
      00057B                       1372 00114$:
                                   1373 ;	testparking.c:280: SemaphoreSignal(mutex,m_tail);
      00057B C2 AF            [12] 1374 	clr	_EA
      00057D 78 3A            [12] 1375 	mov	r0,#_mutex
      00057F 06               [12] 1376 	inc	@r0
      000580 78 3A            [12] 1377 	mov	r0,#_mutex
      000582 C3               [12] 1378 	clr	c
      000583 74 80            [12] 1379 	mov	a,#(0x00 ^ 0x80)
      000585 86 F0            [24] 1380 	mov	b,@r0
      000587 63 F0 80         [24] 1381 	xrl	b,#0x80
      00058A 95 F0            [12] 1382 	subb	a,b
      00058C 40 0B            [24] 1383 	jc	00116$
      00058E A9 3C            [24] 1384 	mov	r1,_m_tail
      000590 E7               [12] 1385 	mov	a,@r1
      000591 FF               [12] 1386 	mov	r7,a
      000592 24 24            [12] 1387 	add	a,#_bitmap
      000594 F8               [12] 1388 	mov	r0,a
      000595 76 01            [12] 1389 	mov	@r0,#0x01
      000597 15 3C            [12] 1390 	dec	_m_tail
      000599                       1391 00116$:
      000599 D2 AF            [12] 1392 	setb	_EA
                                   1393 ;	testparking.c:281: SemaphoreSignal(print,p_tail);
      00059B C2 AF            [12] 1394 	clr	_EA
      00059D 78 5B            [12] 1395 	mov	r0,#_print
      00059F 06               [12] 1396 	inc	@r0
      0005A0 78 5B            [12] 1397 	mov	r0,#_print
      0005A2 C3               [12] 1398 	clr	c
      0005A3 74 80            [12] 1399 	mov	a,#(0x00 ^ 0x80)
      0005A5 86 F0            [24] 1400 	mov	b,@r0
      0005A7 63 F0 80         [24] 1401 	xrl	b,#0x80
      0005AA 95 F0            [12] 1402 	subb	a,b
      0005AC 40 0B            [24] 1403 	jc	00118$
      0005AE A9 6C            [24] 1404 	mov	r1,_p_tail
      0005B0 E7               [12] 1405 	mov	a,@r1
      0005B1 FF               [12] 1406 	mov	r7,a
      0005B2 24 24            [12] 1407 	add	a,#_bitmap
      0005B4 F8               [12] 1408 	mov	r0,a
      0005B5 76 01            [12] 1409 	mov	@r0,#0x01
      0005B7 15 6C            [12] 1410 	dec	_p_tail
      0005B9                       1411 00118$:
      0005B9 D2 AF            [12] 1412 	setb	_EA
      0005BB 22               [24] 1413 	ret
                                   1414 ;------------------------------------------------------------
                                   1415 ;Allocation info for local variables in function 'Printer'
                                   1416 ;------------------------------------------------------------
                                   1417 ;	testparking.c:284: void Printer(void) {
                                   1418 ;	-----------------------------------------
                                   1419 ;	 function Printer
                                   1420 ;	-----------------------------------------
      0005BC                       1421 _Printer:
                                   1422 ;	testparking.c:285: TMOD |= 0x20;
      0005BC 43 89 20         [24] 1423 	orl	_TMOD,#0x20
                                   1424 ;	testparking.c:286: TH1 = -6;
      0005BF 75 8D FA         [24] 1425 	mov	_TH1,#0xFA
                                   1426 ;	testparking.c:287: SCON = 0x50;
      0005C2 75 98 50         [24] 1427 	mov	_SCON,#0x50
                                   1428 ;	testparking.c:288: TR1 = 1;
      0005C5 D2 8E            [12] 1429 	setb	_TR1
                                   1430 ;	testparking.c:290: SemaphoreWait(print,p_tail);
      0005C7 C2 AF            [12] 1431 	clr	_EA
      0005C9 78 5B            [12] 1432 	mov	r0,#_print
      0005CB 16               [12] 1433 	dec	@r0
      0005CC 78 5B            [12] 1434 	mov	r0,#_print
      0005CE E6               [12] 1435 	mov	a,@r0
      0005CF 30 E7 13         [24] 1436 	jnb	acc.7,00102$
      0005D2 05 6C            [12] 1437 	inc	_p_tail
      0005D4 A9 6C            [24] 1438 	mov	r1,_p_tail
      0005D6 78 28            [12] 1439 	mov	r0,#_ID
      0005D8 E6               [12] 1440 	mov	a,@r0
      0005D9 F7               [12] 1441 	mov	@r1,a
      0005DA 78 28            [12] 1442 	mov	r0,#_ID
      0005DC E6               [12] 1443 	mov	a,@r0
      0005DD 24 24            [12] 1444 	add	a,#_bitmap
      0005DF F8               [12] 1445 	mov	r0,a
      0005E0 76 FF            [12] 1446 	mov	@r0,#0xFF
      0005E2 12 0A BA         [24] 1447 	lcall	_ThreadYield
      0005E5                       1448 00102$:
      0005E5 D2 AF            [12] 1449 	setb	_EA
                                   1450 ;	testparking.c:291: SemaphoreWait(print,p_tail);
      0005E7 C2 AF            [12] 1451 	clr	_EA
      0005E9 78 5B            [12] 1452 	mov	r0,#_print
      0005EB 16               [12] 1453 	dec	@r0
      0005EC 78 5B            [12] 1454 	mov	r0,#_print
      0005EE E6               [12] 1455 	mov	a,@r0
      0005EF 30 E7 13         [24] 1456 	jnb	acc.7,00104$
      0005F2 05 6C            [12] 1457 	inc	_p_tail
      0005F4 A9 6C            [24] 1458 	mov	r1,_p_tail
      0005F6 78 28            [12] 1459 	mov	r0,#_ID
      0005F8 E6               [12] 1460 	mov	a,@r0
      0005F9 F7               [12] 1461 	mov	@r1,a
      0005FA 78 28            [12] 1462 	mov	r0,#_ID
      0005FC E6               [12] 1463 	mov	a,@r0
      0005FD 24 24            [12] 1464 	add	a,#_bitmap
      0005FF F8               [12] 1465 	mov	r0,a
      000600 76 FF            [12] 1466 	mov	@r0,#0xFF
      000602 12 0A BA         [24] 1467 	lcall	_ThreadYield
      000605                       1468 00104$:
      000605 D2 AF            [12] 1469 	setb	_EA
                                   1470 ;	testparking.c:292: SemaphoreWait(print,p_tail);
      000607 C2 AF            [12] 1471 	clr	_EA
      000609 78 5B            [12] 1472 	mov	r0,#_print
      00060B 16               [12] 1473 	dec	@r0
      00060C 78 5B            [12] 1474 	mov	r0,#_print
      00060E E6               [12] 1475 	mov	a,@r0
      00060F 30 E7 13         [24] 1476 	jnb	acc.7,00106$
      000612 05 6C            [12] 1477 	inc	_p_tail
      000614 A9 6C            [24] 1478 	mov	r1,_p_tail
      000616 78 28            [12] 1479 	mov	r0,#_ID
      000618 E6               [12] 1480 	mov	a,@r0
      000619 F7               [12] 1481 	mov	@r1,a
      00061A 78 28            [12] 1482 	mov	r0,#_ID
      00061C E6               [12] 1483 	mov	a,@r0
      00061D 24 24            [12] 1484 	add	a,#_bitmap
      00061F F8               [12] 1485 	mov	r0,a
      000620 76 FF            [12] 1486 	mov	@r0,#0xFF
      000622 12 0A BA         [24] 1487 	lcall	_ThreadYield
      000625                       1488 00106$:
      000625 D2 AF            [12] 1489 	setb	_EA
                                   1490 ;	testparking.c:293: SemaphoreWait(print,p_tail);
      000627 C2 AF            [12] 1491 	clr	_EA
      000629 78 5B            [12] 1492 	mov	r0,#_print
      00062B 16               [12] 1493 	dec	@r0
      00062C 78 5B            [12] 1494 	mov	r0,#_print
      00062E E6               [12] 1495 	mov	a,@r0
      00062F 30 E7 13         [24] 1496 	jnb	acc.7,00108$
      000632 05 6C            [12] 1497 	inc	_p_tail
      000634 A9 6C            [24] 1498 	mov	r1,_p_tail
      000636 78 28            [12] 1499 	mov	r0,#_ID
      000638 E6               [12] 1500 	mov	a,@r0
      000639 F7               [12] 1501 	mov	@r1,a
      00063A 78 28            [12] 1502 	mov	r0,#_ID
      00063C E6               [12] 1503 	mov	a,@r0
      00063D 24 24            [12] 1504 	add	a,#_bitmap
      00063F F8               [12] 1505 	mov	r0,a
      000640 76 FF            [12] 1506 	mov	@r0,#0xFF
      000642 12 0A BA         [24] 1507 	lcall	_ThreadYield
      000645                       1508 00108$:
      000645 D2 AF            [12] 1509 	setb	_EA
                                   1510 ;	testparking.c:294: SemaphoreWait(print,p_tail);
      000647 C2 AF            [12] 1511 	clr	_EA
      000649 78 5B            [12] 1512 	mov	r0,#_print
      00064B 16               [12] 1513 	dec	@r0
      00064C 78 5B            [12] 1514 	mov	r0,#_print
      00064E E6               [12] 1515 	mov	a,@r0
      00064F 30 E7 13         [24] 1516 	jnb	acc.7,00110$
      000652 05 6C            [12] 1517 	inc	_p_tail
      000654 A9 6C            [24] 1518 	mov	r1,_p_tail
      000656 78 28            [12] 1519 	mov	r0,#_ID
      000658 E6               [12] 1520 	mov	a,@r0
      000659 F7               [12] 1521 	mov	@r1,a
      00065A 78 28            [12] 1522 	mov	r0,#_ID
      00065C E6               [12] 1523 	mov	a,@r0
      00065D 24 24            [12] 1524 	add	a,#_bitmap
      00065F F8               [12] 1525 	mov	r0,a
      000660 76 FF            [12] 1526 	mov	@r0,#0xFF
      000662 12 0A BA         [24] 1527 	lcall	_ThreadYield
      000665                       1528 00110$:
      000665 D2 AF            [12] 1529 	setb	_EA
                                   1530 ;	testparking.c:295: SemaphoreWait(print,p_tail);
      000667 C2 AF            [12] 1531 	clr	_EA
      000669 78 5B            [12] 1532 	mov	r0,#_print
      00066B 16               [12] 1533 	dec	@r0
      00066C 78 5B            [12] 1534 	mov	r0,#_print
      00066E E6               [12] 1535 	mov	a,@r0
      00066F 30 E7 13         [24] 1536 	jnb	acc.7,00112$
      000672 05 6C            [12] 1537 	inc	_p_tail
      000674 A9 6C            [24] 1538 	mov	r1,_p_tail
      000676 78 28            [12] 1539 	mov	r0,#_ID
      000678 E6               [12] 1540 	mov	a,@r0
      000679 F7               [12] 1541 	mov	@r1,a
      00067A 78 28            [12] 1542 	mov	r0,#_ID
      00067C E6               [12] 1543 	mov	a,@r0
      00067D 24 24            [12] 1544 	add	a,#_bitmap
      00067F F8               [12] 1545 	mov	r0,a
      000680 76 FF            [12] 1546 	mov	@r0,#0xFF
      000682 12 0A BA         [24] 1547 	lcall	_ThreadYield
      000685                       1548 00112$:
      000685 D2 AF            [12] 1549 	setb	_EA
                                   1550 ;	testparking.c:296: SemaphoreWait(print,p_tail);
      000687 C2 AF            [12] 1551 	clr	_EA
      000689 78 5B            [12] 1552 	mov	r0,#_print
      00068B 16               [12] 1553 	dec	@r0
      00068C 78 5B            [12] 1554 	mov	r0,#_print
      00068E E6               [12] 1555 	mov	a,@r0
      00068F 30 E7 13         [24] 1556 	jnb	acc.7,00114$
      000692 05 6C            [12] 1557 	inc	_p_tail
      000694 A9 6C            [24] 1558 	mov	r1,_p_tail
      000696 78 28            [12] 1559 	mov	r0,#_ID
      000698 E6               [12] 1560 	mov	a,@r0
      000699 F7               [12] 1561 	mov	@r1,a
      00069A 78 28            [12] 1562 	mov	r0,#_ID
      00069C E6               [12] 1563 	mov	a,@r0
      00069D 24 24            [12] 1564 	add	a,#_bitmap
      00069F F8               [12] 1565 	mov	r0,a
      0006A0 76 FF            [12] 1566 	mov	@r0,#0xFF
      0006A2 12 0A BA         [24] 1567 	lcall	_ThreadYield
      0006A5                       1568 00114$:
      0006A5 D2 AF            [12] 1569 	setb	_EA
                                   1570 ;	testparking.c:297: SemaphoreWait(print,p_tail);
      0006A7 C2 AF            [12] 1571 	clr	_EA
      0006A9 78 5B            [12] 1572 	mov	r0,#_print
      0006AB 16               [12] 1573 	dec	@r0
      0006AC 78 5B            [12] 1574 	mov	r0,#_print
      0006AE E6               [12] 1575 	mov	a,@r0
      0006AF 30 E7 13         [24] 1576 	jnb	acc.7,00116$
      0006B2 05 6C            [12] 1577 	inc	_p_tail
      0006B4 A9 6C            [24] 1578 	mov	r1,_p_tail
      0006B6 78 28            [12] 1579 	mov	r0,#_ID
      0006B8 E6               [12] 1580 	mov	a,@r0
      0006B9 F7               [12] 1581 	mov	@r1,a
      0006BA 78 28            [12] 1582 	mov	r0,#_ID
      0006BC E6               [12] 1583 	mov	a,@r0
      0006BD 24 24            [12] 1584 	add	a,#_bitmap
      0006BF F8               [12] 1585 	mov	r0,a
      0006C0 76 FF            [12] 1586 	mov	@r0,#0xFF
      0006C2 12 0A BA         [24] 1587 	lcall	_ThreadYield
      0006C5                       1588 00116$:
      0006C5 D2 AF            [12] 1589 	setb	_EA
                                   1590 ;	testparking.c:298: SemaphoreWait(print,p_tail);
      0006C7 C2 AF            [12] 1591 	clr	_EA
      0006C9 78 5B            [12] 1592 	mov	r0,#_print
      0006CB 16               [12] 1593 	dec	@r0
      0006CC 78 5B            [12] 1594 	mov	r0,#_print
      0006CE E6               [12] 1595 	mov	a,@r0
      0006CF 30 E7 13         [24] 1596 	jnb	acc.7,00118$
      0006D2 05 6C            [12] 1597 	inc	_p_tail
      0006D4 A9 6C            [24] 1598 	mov	r1,_p_tail
      0006D6 78 28            [12] 1599 	mov	r0,#_ID
      0006D8 E6               [12] 1600 	mov	a,@r0
      0006D9 F7               [12] 1601 	mov	@r1,a
      0006DA 78 28            [12] 1602 	mov	r0,#_ID
      0006DC E6               [12] 1603 	mov	a,@r0
      0006DD 24 24            [12] 1604 	add	a,#_bitmap
      0006DF F8               [12] 1605 	mov	r0,a
      0006E0 76 FF            [12] 1606 	mov	@r0,#0xFF
      0006E2 12 0A BA         [24] 1607 	lcall	_ThreadYield
      0006E5                       1608 00118$:
      0006E5 D2 AF            [12] 1609 	setb	_EA
                                   1610 ;	testparking.c:299: SemaphoreWait(print,p_tail);
      0006E7 C2 AF            [12] 1611 	clr	_EA
      0006E9 78 5B            [12] 1612 	mov	r0,#_print
      0006EB 16               [12] 1613 	dec	@r0
      0006EC 78 5B            [12] 1614 	mov	r0,#_print
      0006EE E6               [12] 1615 	mov	a,@r0
      0006EF 30 E7 13         [24] 1616 	jnb	acc.7,00120$
      0006F2 05 6C            [12] 1617 	inc	_p_tail
      0006F4 A9 6C            [24] 1618 	mov	r1,_p_tail
      0006F6 78 28            [12] 1619 	mov	r0,#_ID
      0006F8 E6               [12] 1620 	mov	a,@r0
      0006F9 F7               [12] 1621 	mov	@r1,a
      0006FA 78 28            [12] 1622 	mov	r0,#_ID
      0006FC E6               [12] 1623 	mov	a,@r0
      0006FD 24 24            [12] 1624 	add	a,#_bitmap
      0006FF F8               [12] 1625 	mov	r0,a
      000700 76 FF            [12] 1626 	mov	@r0,#0xFF
      000702 12 0A BA         [24] 1627 	lcall	_ThreadYield
      000705                       1628 00120$:
      000705 D2 AF            [12] 1629 	setb	_EA
                                   1630 ;	testparking.c:300: c_temp = 0;
      000707 78 29            [12] 1631 	mov	r0,#_c_temp
      000709 76 00            [12] 1632 	mov	@r0,#0x00
                                   1633 ;	testparking.c:301: current = 1;
      00070B 78 4C            [12] 1634 	mov	r0,#_current
      00070D 76 01            [12] 1635 	mov	@r0,#0x01
                                   1636 ;	testparking.c:302: while(c_temp<10){
      00070F                       1637 00190$:
      00070F 78 29            [12] 1638 	mov	r0,#_c_temp
      000711 C3               [12] 1639 	clr	c
      000712 E6               [12] 1640 	mov	a,@r0
      000713 64 80            [12] 1641 	xrl	a,#0x80
      000715 94 8A            [12] 1642 	subb	a,#0x8a
      000717 40 01            [24] 1643 	jc	00382$
      000719 22               [24] 1644 	ret
      00071A                       1645 00382$:
                                   1646 ;	testparking.c:303: for(j=0;j<10;j++){
      00071A 78 4D            [12] 1647 	mov	r0,#_j
      00071C 76 00            [12] 1648 	mov	@r0,#0x00
      00071E                       1649 00194$:
      00071E 78 4D            [12] 1650 	mov	r0,#_j
      000720 C3               [12] 1651 	clr	c
      000721 E6               [12] 1652 	mov	a,@r0
      000722 64 80            [12] 1653 	xrl	a,#0x80
      000724 94 8A            [12] 1654 	subb	a,#0x8a
      000726 40 03            [24] 1655 	jc	00383$
      000728 02 08 33         [24] 1656 	ljmp	00189$
      00072B                       1657 00383$:
                                   1658 ;	testparking.c:304: c_temp2 = log[j];
      00072B 78 4D            [12] 1659 	mov	r0,#_j
      00072D E6               [12] 1660 	mov	a,@r0
      00072E 24 30            [12] 1661 	add	a,#_log
      000730 F9               [12] 1662 	mov	r1,a
      000731 78 4A            [12] 1663 	mov	r0,#_c_temp2
      000733 E7               [12] 1664 	mov	a,@r1
      000734 F6               [12] 1665 	mov	@r0,a
                                   1666 ;	testparking.c:305: c_temp3 = c_temp2&0x7F;
      000735 78 4A            [12] 1667 	mov	r0,#_c_temp2
      000737 79 5C            [12] 1668 	mov	r1,#_c_temp3
      000739 74 7F            [12] 1669 	mov	a,#0x7F
      00073B 56               [12] 1670 	anl	a,@r0
      00073C F7               [12] 1671 	mov	@r1,a
                                   1672 ;	testparking.c:306: if(c_temp3==current){
      00073D 78 5C            [12] 1673 	mov	r0,#_c_temp3
      00073F 79 4C            [12] 1674 	mov	r1,#_current
      000741 86 F0            [24] 1675 	mov	b,@r0
      000743 E7               [12] 1676 	mov	a,@r1
      000744 B5 F0 02         [24] 1677 	cjne	a,b,00384$
      000747 80 03            [24] 1678 	sjmp	00385$
      000749                       1679 00384$:
      000749 02 08 2D         [24] 1680 	ljmp	00195$
      00074C                       1681 00385$:
                                   1682 ;	testparking.c:307: SBUF = 'c';
      00074C 75 99 63         [24] 1683 	mov	_SBUF,#0x63
                                   1684 ;	testparking.c:308: while (!TI) { }
      00074F                       1685 00121$:
                                   1686 ;	testparking.c:309: TI = 0;
      00074F 10 99 02         [24] 1687 	jbc	_TI,00386$
      000752 80 FB            [24] 1688 	sjmp	00121$
      000754                       1689 00386$:
                                   1690 ;	testparking.c:310: SBUF = 'a';
      000754 75 99 61         [24] 1691 	mov	_SBUF,#0x61
                                   1692 ;	testparking.c:311: while (!TI) { }
      000757                       1693 00124$:
                                   1694 ;	testparking.c:312: TI = 0;
      000757 10 99 02         [24] 1695 	jbc	_TI,00387$
      00075A 80 FB            [24] 1696 	sjmp	00124$
      00075C                       1697 00387$:
                                   1698 ;	testparking.c:313: SBUF = 'r';
      00075C 75 99 72         [24] 1699 	mov	_SBUF,#0x72
                                   1700 ;	testparking.c:314: while (!TI) { }
      00075F                       1701 00127$:
                                   1702 ;	testparking.c:315: TI = 0;
      00075F 10 99 02         [24] 1703 	jbc	_TI,00388$
      000762 80 FB            [24] 1704 	sjmp	00127$
      000764                       1705 00388$:
                                   1706 ;	testparking.c:316: SBUF = '1' + j/2;
      000764 78 4D            [12] 1707 	mov	r0,#_j
      000766 C2 D5            [12] 1708 	clr	F0
      000768 75 F0 02         [24] 1709 	mov	b,#0x02
      00076B E6               [12] 1710 	mov	a,@r0
      00076C 30 E7 04         [24] 1711 	jnb	acc.7,00389$
      00076F B2 D5            [12] 1712 	cpl	F0
      000771 F4               [12] 1713 	cpl	a
      000772 04               [12] 1714 	inc	a
      000773                       1715 00389$:
      000773 84               [48] 1716 	div	ab
      000774 30 D5 02         [24] 1717 	jnb	F0,00390$
      000777 F4               [12] 1718 	cpl	a
      000778 04               [12] 1719 	inc	a
      000779                       1720 00390$:
      000779 24 31            [12] 1721 	add	a,#0x31
      00077B F5 99            [12] 1722 	mov	_SBUF,a
                                   1723 ;	testparking.c:317: while (!TI) { }
      00077D                       1724 00130$:
                                   1725 ;	testparking.c:318: TI = 0;
      00077D 10 99 02         [24] 1726 	jbc	_TI,00391$
      000780 80 FB            [24] 1727 	sjmp	00130$
      000782                       1728 00391$:
                                   1729 ;	testparking.c:319: SBUF = ' ';
      000782 75 99 20         [24] 1730 	mov	_SBUF,#0x20
                                   1731 ;	testparking.c:320: while (!TI) { }
      000785                       1732 00133$:
                                   1733 ;	testparking.c:321: TI = 0;
      000785 10 99 02         [24] 1734 	jbc	_TI,00392$
      000788 80 FB            [24] 1735 	sjmp	00133$
      00078A                       1736 00392$:
                                   1737 ;	testparking.c:322: if(j%2){
      00078A 78 4D            [12] 1738 	mov	r0,#_j
      00078C E6               [12] 1739 	mov	a,@r0
      00078D A2 E7            [12] 1740 	mov	c,acc.7
      00078F 54 01            [12] 1741 	anl	a,#0x01
      000791 60 04            [24] 1742 	jz	00393$
      000793 50 02            [24] 1743 	jnc	00393$
      000795 44 FE            [12] 1744 	orl	a,#0xfe
      000797                       1745 00393$:
      000797 60 1A            [24] 1746 	jz	00152$
                                   1747 ;	testparking.c:323: SBUF = 'o';
      000799 75 99 6F         [24] 1748 	mov	_SBUF,#0x6F
                                   1749 ;	testparking.c:324: while (!TI) { }
      00079C                       1750 00136$:
                                   1751 ;	testparking.c:325: TI = 0;
      00079C 10 99 02         [24] 1752 	jbc	_TI,00395$
      00079F 80 FB            [24] 1753 	sjmp	00136$
      0007A1                       1754 00395$:
                                   1755 ;	testparking.c:326: SBUF = 'u';
      0007A1 75 99 75         [24] 1756 	mov	_SBUF,#0x75
                                   1757 ;	testparking.c:327: while (!TI) { }
      0007A4                       1758 00139$:
                                   1759 ;	testparking.c:328: TI = 0;
      0007A4 10 99 02         [24] 1760 	jbc	_TI,00396$
      0007A7 80 FB            [24] 1761 	sjmp	00139$
      0007A9                       1762 00396$:
                                   1763 ;	testparking.c:329: SBUF = 't';
      0007A9 75 99 74         [24] 1764 	mov	_SBUF,#0x74
                                   1765 ;	testparking.c:330: while (!TI) { }
      0007AC                       1766 00142$:
                                   1767 ;	testparking.c:331: TI = 0;
      0007AC 10 99 02         [24] 1768 	jbc	_TI,00397$
      0007AF 80 FB            [24] 1769 	sjmp	00142$
      0007B1                       1770 00397$:
      0007B1 80 10            [24] 1771 	sjmp	00153$
      0007B3                       1772 00152$:
                                   1773 ;	testparking.c:334: SBUF = 'i';
      0007B3 75 99 69         [24] 1774 	mov	_SBUF,#0x69
                                   1775 ;	testparking.c:335: while (!TI) { }
      0007B6                       1776 00145$:
                                   1777 ;	testparking.c:336: TI = 0;
      0007B6 10 99 02         [24] 1778 	jbc	_TI,00398$
      0007B9 80 FB            [24] 1779 	sjmp	00145$
      0007BB                       1780 00398$:
                                   1781 ;	testparking.c:337: SBUF = 'n';
      0007BB 75 99 6E         [24] 1782 	mov	_SBUF,#0x6E
                                   1783 ;	testparking.c:338: while (!TI) { }
      0007BE                       1784 00148$:
                                   1785 ;	testparking.c:339: TI = 0;
      0007BE 10 99 02         [24] 1786 	jbc	_TI,00399$
      0007C1 80 FB            [24] 1787 	sjmp	00148$
      0007C3                       1788 00399$:
      0007C3                       1789 00153$:
                                   1790 ;	testparking.c:341: SBUF = ' ';
      0007C3 75 99 20         [24] 1791 	mov	_SBUF,#0x20
                                   1792 ;	testparking.c:342: while (!TI) { }
      0007C6                       1793 00154$:
                                   1794 ;	testparking.c:343: TI = 0;
      0007C6 10 99 02         [24] 1795 	jbc	_TI,00400$
      0007C9 80 FB            [24] 1796 	sjmp	00154$
      0007CB                       1797 00400$:
                                   1798 ;	testparking.c:344: SBUF = 'p';
      0007CB 75 99 70         [24] 1799 	mov	_SBUF,#0x70
                                   1800 ;	testparking.c:345: while (!TI) { }
      0007CE                       1801 00157$:
                                   1802 ;	testparking.c:346: TI = 0;
      0007CE 10 99 02         [24] 1803 	jbc	_TI,00401$
      0007D1 80 FB            [24] 1804 	sjmp	00157$
      0007D3                       1805 00401$:
                                   1806 ;	testparking.c:347: SBUF = 'l';
      0007D3 75 99 6C         [24] 1807 	mov	_SBUF,#0x6C
                                   1808 ;	testparking.c:348: while (!TI) { }
      0007D6                       1809 00160$:
                                   1810 ;	testparking.c:349: TI = 0;
      0007D6 10 99 02         [24] 1811 	jbc	_TI,00402$
      0007D9 80 FB            [24] 1812 	sjmp	00160$
      0007DB                       1813 00402$:
                                   1814 ;	testparking.c:350: SBUF = 'o';
      0007DB 75 99 6F         [24] 1815 	mov	_SBUF,#0x6F
                                   1816 ;	testparking.c:351: while (!TI) { }
      0007DE                       1817 00163$:
                                   1818 ;	testparking.c:352: TI = 0;
      0007DE 10 99 02         [24] 1819 	jbc	_TI,00403$
      0007E1 80 FB            [24] 1820 	sjmp	00163$
      0007E3                       1821 00403$:
                                   1822 ;	testparking.c:353: SBUF = 't';
      0007E3 75 99 74         [24] 1823 	mov	_SBUF,#0x74
                                   1824 ;	testparking.c:354: while (!TI) { }
      0007E6                       1825 00166$:
                                   1826 ;	testparking.c:355: TI = 0;
      0007E6 10 99 02         [24] 1827 	jbc	_TI,00404$
      0007E9 80 FB            [24] 1828 	sjmp	00166$
      0007EB                       1829 00404$:
                                   1830 ;	testparking.c:356: SBUF = '1' + c_temp2/0x80;
      0007EB 78 4A            [12] 1831 	mov	r0,#_c_temp2
      0007ED E6               [12] 1832 	mov	a,@r0
      0007EE 23               [12] 1833 	rl	a
      0007EF 54 01            [12] 1834 	anl	a,#0x01
      0007F1 FF               [12] 1835 	mov	r7,a
      0007F2 24 31            [12] 1836 	add	a,#0x31
      0007F4 F5 99            [12] 1837 	mov	_SBUF,a
                                   1838 ;	testparking.c:357: while (!TI) { }
      0007F6                       1839 00169$:
                                   1840 ;	testparking.c:358: TI = 0;
      0007F6 10 99 02         [24] 1841 	jbc	_TI,00405$
      0007F9 80 FB            [24] 1842 	sjmp	00169$
      0007FB                       1843 00405$:
                                   1844 ;	testparking.c:359: SBUF = ' ';
      0007FB 75 99 20         [24] 1845 	mov	_SBUF,#0x20
                                   1846 ;	testparking.c:360: while (!TI) { }
      0007FE                       1847 00172$:
                                   1848 ;	testparking.c:361: TI = 0;
      0007FE 10 99 02         [24] 1849 	jbc	_TI,00406$
      000801 80 FB            [24] 1850 	sjmp	00172$
      000803                       1851 00406$:
                                   1852 ;	testparking.c:362: SBUF = 'a';
      000803 75 99 61         [24] 1853 	mov	_SBUF,#0x61
                                   1854 ;	testparking.c:363: while (!TI) { }
      000806                       1855 00175$:
                                   1856 ;	testparking.c:364: TI = 0;
      000806 10 99 02         [24] 1857 	jbc	_TI,00407$
      000809 80 FB            [24] 1858 	sjmp	00175$
      00080B                       1859 00407$:
                                   1860 ;	testparking.c:365: SBUF = 't';
      00080B 75 99 74         [24] 1861 	mov	_SBUF,#0x74
                                   1862 ;	testparking.c:366: while (!TI) { }
      00080E                       1863 00178$:
                                   1864 ;	testparking.c:367: TI = 0;
      00080E 10 99 02         [24] 1865 	jbc	_TI,00408$
      000811 80 FB            [24] 1866 	sjmp	00178$
      000813                       1867 00408$:
                                   1868 ;	testparking.c:368: SBUF = '0' + (c_temp2&0x7F);
      000813 78 4A            [12] 1869 	mov	r0,#_c_temp2
      000815 74 7F            [12] 1870 	mov	a,#0x7F
      000817 56               [12] 1871 	anl	a,@r0
      000818 FF               [12] 1872 	mov	r7,a
      000819 24 30            [12] 1873 	add	a,#0x30
      00081B F5 99            [12] 1874 	mov	_SBUF,a
                                   1875 ;	testparking.c:369: while (!TI) { }
      00081D                       1876 00181$:
                                   1877 ;	testparking.c:370: TI = 0;
      00081D 10 99 02         [24] 1878 	jbc	_TI,00409$
      000820 80 FB            [24] 1879 	sjmp	00181$
      000822                       1880 00409$:
                                   1881 ;	testparking.c:371: SBUF = '\n';
      000822 75 99 0A         [24] 1882 	mov	_SBUF,#0x0A
                                   1883 ;	testparking.c:372: while (!TI) { }
      000825                       1884 00184$:
                                   1885 ;	testparking.c:373: TI = 0;
      000825 10 99 02         [24] 1886 	jbc	_TI,00410$
      000828 80 FB            [24] 1887 	sjmp	00184$
      00082A                       1888 00410$:
                                   1889 ;	testparking.c:374: c_temp++;
      00082A 78 29            [12] 1890 	mov	r0,#_c_temp
      00082C 06               [12] 1891 	inc	@r0
      00082D                       1892 00195$:
                                   1893 ;	testparking.c:303: for(j=0;j<10;j++){
      00082D 78 4D            [12] 1894 	mov	r0,#_j
      00082F 06               [12] 1895 	inc	@r0
      000830 02 07 1E         [24] 1896 	ljmp	00194$
      000833                       1897 00189$:
                                   1898 ;	testparking.c:377: current++;
      000833 78 4C            [12] 1899 	mov	r0,#_current
      000835 06               [12] 1900 	inc	@r0
      000836 02 07 0F         [24] 1901 	ljmp	00190$
                                   1902 ;------------------------------------------------------------
                                   1903 ;Allocation info for local variables in function 'main'
                                   1904 ;------------------------------------------------------------
                                   1905 ;	testparking.c:381: void main(void) {
                                   1906 ;	-----------------------------------------
                                   1907 ;	 function main
                                   1908 ;	-----------------------------------------
      000839                       1909 _main:
                                   1910 ;	testparking.c:383: plot[0] = plot[1] = 0;
      000839 78 4F            [12] 1911 	mov	r0,#(_plot + 0x0001)
      00083B 76 00            [12] 1912 	mov	@r0,#0x00
      00083D 78 4E            [12] 1913 	mov	r0,#_plot
      00083F 76 00            [12] 1914 	mov	@r0,#0x00
                                   1915 ;	testparking.c:385: SemaphoreCreate(mutex, 1);
      000841 78 3A            [12] 1916 	mov	r0,#_mutex
      000843 76 01            [12] 1917 	mov	@r0,#0x01
                                   1918 ;	testparking.c:386: SemaphoreCreate(print, 0);
      000845 78 5B            [12] 1919 	mov	r0,#_print
      000847 76 00            [12] 1920 	mov	@r0,#0x00
                                   1921 ;	testparking.c:390: __endasm;
      000849 75 6C 5C         [24] 1922 	mov _p_tail,#0x5C
      00084C 75 3C 6C         [24] 1923 	mov _m_tail,#0x6C
                                   1924 ;	testparking.c:392: ThreadCreate(Car1);
      00084F 90 00 14         [24] 1925 	mov	dptr,#_Car1
      000852 12 0A 23         [24] 1926 	lcall	_ThreadCreate
                                   1927 ;	testparking.c:393: ThreadCreate(Car2);
      000855 90 01 34         [24] 1928 	mov	dptr,#_Car2
      000858 12 0A 23         [24] 1929 	lcall	_ThreadCreate
                                   1930 ;	testparking.c:394: ThreadCreate(Car3);
      00085B 90 02 56         [24] 1931 	mov	dptr,#_Car3
      00085E 12 0A 23         [24] 1932 	lcall	_ThreadCreate
                                   1933 ;	testparking.c:395: ThreadCreate(Car4);
      000861 90 03 78         [24] 1934 	mov	dptr,#_Car4
      000864 12 0A 23         [24] 1935 	lcall	_ThreadCreate
                                   1936 ;	testparking.c:396: ThreadCreate(Car5);
      000867 90 04 9A         [24] 1937 	mov	dptr,#_Car5
      00086A 12 0A 23         [24] 1938 	lcall	_ThreadCreate
                                   1939 ;	testparking.c:397: ThreadCreate(Printer);
      00086D 90 05 BC         [24] 1940 	mov	dptr,#_Printer
      000870 02 0A 23         [24] 1941 	ljmp	_ThreadCreate
                                   1942 ;------------------------------------------------------------
                                   1943 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                   1944 ;------------------------------------------------------------
                                   1945 ;	testparking.c:400: void _sdcc_gsinit_startup(void) {
                                   1946 ;	-----------------------------------------
                                   1947 ;	 function _sdcc_gsinit_startup
                                   1948 ;	-----------------------------------------
      000873                       1949 __sdcc_gsinit_startup:
                                   1950 ;	testparking.c:403: __endasm;
      000873 02 09 D8         [24] 1951 	ljmp _Bootstrap
      000876 22               [24] 1952 	ret
                                   1953 ;------------------------------------------------------------
                                   1954 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                   1955 ;------------------------------------------------------------
                                   1956 ;	testparking.c:406: void _mcs51_genRAMCLEAR(void) {}
                                   1957 ;	-----------------------------------------
                                   1958 ;	 function _mcs51_genRAMCLEAR
                                   1959 ;	-----------------------------------------
      000877                       1960 __mcs51_genRAMCLEAR:
      000877 22               [24] 1961 	ret
                                   1962 ;------------------------------------------------------------
                                   1963 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                   1964 ;------------------------------------------------------------
                                   1965 ;	testparking.c:407: void _mcs51_genXINIT(void) {}
                                   1966 ;	-----------------------------------------
                                   1967 ;	 function _mcs51_genXINIT
                                   1968 ;	-----------------------------------------
      000878                       1969 __mcs51_genXINIT:
      000878 22               [24] 1970 	ret
                                   1971 ;------------------------------------------------------------
                                   1972 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                   1973 ;------------------------------------------------------------
                                   1974 ;	testparking.c:408: void _mcs51_genXRAMCLEAR(void) {}
                                   1975 ;	-----------------------------------------
                                   1976 ;	 function _mcs51_genXRAMCLEAR
                                   1977 ;	-----------------------------------------
      000879                       1978 __mcs51_genXRAMCLEAR:
      000879 22               [24] 1979 	ret
                                   1980 ;------------------------------------------------------------
                                   1981 ;Allocation info for local variables in function 'timer0_ISR'
                                   1982 ;------------------------------------------------------------
                                   1983 ;	testparking.c:409: void timer0_ISR(void) __interrupt(1) {
                                   1984 ;	-----------------------------------------
                                   1985 ;	 function timer0_ISR
                                   1986 ;	-----------------------------------------
      00087A                       1987 _timer0_ISR:
                                   1988 ;	testparking.c:412: __endasm;
      00087A 02 09 24         [24] 1989 	ljmp _myTimer0Handler
      00087D 32               [24] 1990 	reti
                                   1991 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1992 ;	eliminated unneeded push/pop psw
                                   1993 ;	eliminated unneeded push/pop dpl
                                   1994 ;	eliminated unneeded push/pop dph
                                   1995 ;	eliminated unneeded push/pop b
                                   1996 ;	eliminated unneeded push/pop acc
                                   1997 	.area CSEG    (CODE)
                                   1998 	.area CONST   (CODE)
                                   1999 	.area XINIT   (CODE)
                                   2000 	.area CABS    (ABS,CODE)
