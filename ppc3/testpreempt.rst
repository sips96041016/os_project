                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Sun Jan 13 01:22:26 2019
                                      5 ;--------------------------------------------------------
                                      6 	.module testpreempt
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
                                     18 	.globl _Consumer
                                     19 	.globl _Producer
                                     20 	.globl _ThreadExit
                                     21 	.globl _ThreadYield
                                     22 	.globl _ThreadCreate
                                     23 	.globl _CY
                                     24 	.globl _AC
                                     25 	.globl _F0
                                     26 	.globl _RS1
                                     27 	.globl _RS0
                                     28 	.globl _OV
                                     29 	.globl _F1
                                     30 	.globl _P
                                     31 	.globl _PS
                                     32 	.globl _PT1
                                     33 	.globl _PX1
                                     34 	.globl _PT0
                                     35 	.globl _PX0
                                     36 	.globl _RD
                                     37 	.globl _WR
                                     38 	.globl _T1
                                     39 	.globl _T0
                                     40 	.globl _INT1
                                     41 	.globl _INT0
                                     42 	.globl _TXD
                                     43 	.globl _RXD
                                     44 	.globl _P3_7
                                     45 	.globl _P3_6
                                     46 	.globl _P3_5
                                     47 	.globl _P3_4
                                     48 	.globl _P3_3
                                     49 	.globl _P3_2
                                     50 	.globl _P3_1
                                     51 	.globl _P3_0
                                     52 	.globl _EA
                                     53 	.globl _ES
                                     54 	.globl _ET1
                                     55 	.globl _EX1
                                     56 	.globl _ET0
                                     57 	.globl _EX0
                                     58 	.globl _P2_7
                                     59 	.globl _P2_6
                                     60 	.globl _P2_5
                                     61 	.globl _P2_4
                                     62 	.globl _P2_3
                                     63 	.globl _P2_2
                                     64 	.globl _P2_1
                                     65 	.globl _P2_0
                                     66 	.globl _SM0
                                     67 	.globl _SM1
                                     68 	.globl _SM2
                                     69 	.globl _REN
                                     70 	.globl _TB8
                                     71 	.globl _RB8
                                     72 	.globl _TI
                                     73 	.globl _RI
                                     74 	.globl _P1_7
                                     75 	.globl _P1_6
                                     76 	.globl _P1_5
                                     77 	.globl _P1_4
                                     78 	.globl _P1_3
                                     79 	.globl _P1_2
                                     80 	.globl _P1_1
                                     81 	.globl _P1_0
                                     82 	.globl _TF1
                                     83 	.globl _TR1
                                     84 	.globl _TF0
                                     85 	.globl _TR0
                                     86 	.globl _IE1
                                     87 	.globl _IT1
                                     88 	.globl _IE0
                                     89 	.globl _IT0
                                     90 	.globl _P0_7
                                     91 	.globl _P0_6
                                     92 	.globl _P0_5
                                     93 	.globl _P0_4
                                     94 	.globl _P0_3
                                     95 	.globl _P0_2
                                     96 	.globl _P0_1
                                     97 	.globl _P0_0
                                     98 	.globl _B
                                     99 	.globl _ACC
                                    100 	.globl _PSW
                                    101 	.globl _IP
                                    102 	.globl _P3
                                    103 	.globl _IE
                                    104 	.globl _P2
                                    105 	.globl _SBUF
                                    106 	.globl _SCON
                                    107 	.globl _P1
                                    108 	.globl _TH1
                                    109 	.globl _TH0
                                    110 	.globl _TL1
                                    111 	.globl _TL0
                                    112 	.globl _TMOD
                                    113 	.globl _TCON
                                    114 	.globl _PCON
                                    115 	.globl _DPH
                                    116 	.globl _DPL
                                    117 	.globl _SP
                                    118 	.globl _P0
                                    119 	.globl _b_tail
                                    120 	.globl _b_head
                                    121 	.globl _empty
                                    122 	.globl _full
                                    123 	.globl _mutex
                                    124 	.globl _c2
                                    125 	.globl _c1
                                    126 	.globl _buffer
                                    127 	.globl _i
                                    128 	.globl _temp2
                                    129 	.globl _temp1
                                    130 	.globl _manager_ID
                                    131 	.globl _ID
                                    132 	.globl _bitmap
                                    133 	.globl _ssp
                                    134 	.globl _e_tail
                                    135 	.globl _f_tail
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
                           000038   252 _m_tail	=	0x0038
                           000039   253 _f_tail	=	0x0039
                           00003A   254 _e_tail	=	0x003a
                                    255 ;--------------------------------------------------------
                                    256 ; overlayable items in internal ram 
                                    257 ;--------------------------------------------------------
                                    258 ;--------------------------------------------------------
                                    259 ; Stack segment in internal ram 
                                    260 ;--------------------------------------------------------
                                    261 	.area	SSEG
      000008                        262 __start__stack:
      000008                        263 	.ds	1
                                    264 
                                    265 ;--------------------------------------------------------
                                    266 ; indirectly addressable internal ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area ISEG    (DATA)
                           000020   269 _ssp	=	0x0020
                           000024   270 _bitmap	=	0x0024
                           000028   271 _ID	=	0x0028
                           000029   272 _manager_ID	=	0x0029
                           00002A   273 _temp1	=	0x002a
                           00002B   274 _temp2	=	0x002b
                           00002C   275 _i	=	0x002c
                           000030   276 _buffer	=	0x0030
                           000033   277 _c1	=	0x0033
                           000034   278 _c2	=	0x0034
                           000035   279 _mutex	=	0x0035
                           000036   280 _full	=	0x0036
                           000037   281 _empty	=	0x0037
                           00003B   282 _b_head	=	0x003b
                           00003C   283 _b_tail	=	0x003c
                                    284 ;--------------------------------------------------------
                                    285 ; absolute internal ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area IABS    (ABS,DATA)
                                    288 	.area IABS    (ABS,DATA)
                                    289 ;--------------------------------------------------------
                                    290 ; bit data
                                    291 ;--------------------------------------------------------
                                    292 	.area BSEG    (BIT)
                                    293 ;--------------------------------------------------------
                                    294 ; paged external ram data
                                    295 ;--------------------------------------------------------
                                    296 	.area PSEG    (PAG,XDATA)
                                    297 ;--------------------------------------------------------
                                    298 ; external ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area XSEG    (XDATA)
                                    301 ;--------------------------------------------------------
                                    302 ; absolute external ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area XABS    (ABS,XDATA)
                                    305 ;--------------------------------------------------------
                                    306 ; external initialized ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area XISEG   (XDATA)
                                    309 	.area HOME    (CODE)
                                    310 	.area GSINIT0 (CODE)
                                    311 	.area GSINIT1 (CODE)
                                    312 	.area GSINIT2 (CODE)
                                    313 	.area GSINIT3 (CODE)
                                    314 	.area GSINIT4 (CODE)
                                    315 	.area GSINIT5 (CODE)
                                    316 	.area GSINIT  (CODE)
                                    317 	.area GSFINAL (CODE)
                                    318 	.area CSEG    (CODE)
                                    319 ;--------------------------------------------------------
                                    320 ; interrupt vector 
                                    321 ;--------------------------------------------------------
                                    322 	.area HOME    (CODE)
      000000                        323 __interrupt_vect:
      000000 02 01 A7         [24]  324 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  325 	reti
      000004                        326 	.ds	7
      00000B 02 01 AE         [24]  327 	ljmp	_timer0_ISR
                                    328 ;--------------------------------------------------------
                                    329 ; global & static initialisations
                                    330 ;--------------------------------------------------------
                                    331 	.area HOME    (CODE)
                                    332 	.area GSINIT  (CODE)
                                    333 	.area GSFINAL (CODE)
                                    334 	.area GSINIT  (CODE)
                                    335 	.globl __sdcc_gsinit_startup
                                    336 	.globl __sdcc_program_startup
                                    337 	.globl __start__stack
                                    338 	.globl __mcs51_genXINIT
                                    339 	.globl __mcs51_genXRAMCLEAR
                                    340 	.globl __mcs51_genRAMCLEAR
                                    341 	.area GSFINAL (CODE)
      000011 02 00 0E         [24]  342 	ljmp	__sdcc_program_startup
                                    343 ;--------------------------------------------------------
                                    344 ; Home
                                    345 ;--------------------------------------------------------
                                    346 	.area HOME    (CODE)
                                    347 	.area HOME    (CODE)
      00000E                        348 __sdcc_program_startup:
      00000E 02 01 6B         [24]  349 	ljmp	_main
                                    350 ;	return from main will return to caller
                                    351 ;--------------------------------------------------------
                                    352 ; code
                                    353 ;--------------------------------------------------------
                                    354 	.area CSEG    (CODE)
                                    355 ;------------------------------------------------------------
                                    356 ;Allocation info for local variables in function 'Producer'
                                    357 ;------------------------------------------------------------
                                    358 ;	testpreempt.c:16: void Producer(void) {
                                    359 ;	-----------------------------------------
                                    360 ;	 function Producer
                                    361 ;	-----------------------------------------
      000014                        362 _Producer:
                           000007   363 	ar7 = 0x07
                           000006   364 	ar6 = 0x06
                           000005   365 	ar5 = 0x05
                           000004   366 	ar4 = 0x04
                           000003   367 	ar3 = 0x03
                           000002   368 	ar2 = 0x02
                           000001   369 	ar1 = 0x01
                           000000   370 	ar0 = 0x00
                                    371 ;	testpreempt.c:17: c1 = 'A';
      000014 78 33            [12]  372 	mov	r0,#_c1
      000016 76 41            [12]  373 	mov	@r0,#0x41
                                    374 ;	testpreempt.c:18: while (1) {
      000018                        375 00116$:
                                    376 ;	testpreempt.c:19: SemaphoreWait(empty,e_tail);
      000018 C2 AF            [12]  377 	clr	_EA
      00001A 78 37            [12]  378 	mov	r0,#_empty
      00001C 16               [12]  379 	dec	@r0
      00001D 78 37            [12]  380 	mov	r0,#_empty
      00001F E6               [12]  381 	mov	a,@r0
      000020 30 E7 13         [24]  382 	jnb	acc.7,00102$
      000023 05 3A            [12]  383 	inc	_e_tail
      000025 A9 3A            [24]  384 	mov	r1,_e_tail
      000027 78 28            [12]  385 	mov	r0,#_ID
      000029 E6               [12]  386 	mov	a,@r0
      00002A F7               [12]  387 	mov	@r1,a
      00002B 78 28            [12]  388 	mov	r0,#_ID
      00002D E6               [12]  389 	mov	a,@r0
      00002E 24 24            [12]  390 	add	a,#_bitmap
      000030 F8               [12]  391 	mov	r0,a
      000031 76 FF            [12]  392 	mov	@r0,#0xFF
      000033 12 02 DB         [24]  393 	lcall	_ThreadYield
      000036                        394 00102$:
      000036 D2 AF            [12]  395 	setb	_EA
                                    396 ;	testpreempt.c:20: SemaphoreWait(mutex,m_tail);
      000038 C2 AF            [12]  397 	clr	_EA
      00003A 78 35            [12]  398 	mov	r0,#_mutex
      00003C 16               [12]  399 	dec	@r0
      00003D 78 35            [12]  400 	mov	r0,#_mutex
      00003F E6               [12]  401 	mov	a,@r0
      000040 30 E7 13         [24]  402 	jnb	acc.7,00104$
      000043 05 38            [12]  403 	inc	_m_tail
      000045 A9 38            [24]  404 	mov	r1,_m_tail
      000047 78 28            [12]  405 	mov	r0,#_ID
      000049 E6               [12]  406 	mov	a,@r0
      00004A F7               [12]  407 	mov	@r1,a
      00004B 78 28            [12]  408 	mov	r0,#_ID
      00004D E6               [12]  409 	mov	a,@r0
      00004E 24 24            [12]  410 	add	a,#_bitmap
      000050 F8               [12]  411 	mov	r0,a
      000051 76 FF            [12]  412 	mov	@r0,#0xFF
      000053 12 02 DB         [24]  413 	lcall	_ThreadYield
      000056                        414 00104$:
      000056 D2 AF            [12]  415 	setb	_EA
                                    416 ;	testpreempt.c:21: buffer[b_head] = c1;
      000058 78 3B            [12]  417 	mov	r0,#_b_head
      00005A E6               [12]  418 	mov	a,@r0
      00005B 24 30            [12]  419 	add	a,#_buffer
      00005D F8               [12]  420 	mov	r0,a
      00005E 79 33            [12]  421 	mov	r1,#_c1
      000060 E7               [12]  422 	mov	a,@r1
      000061 F6               [12]  423 	mov	@r0,a
                                    424 ;	testpreempt.c:22: SemaphoreSignal(mutex,m_tail);
      000062 C2 AF            [12]  425 	clr	_EA
      000064 78 35            [12]  426 	mov	r0,#_mutex
      000066 06               [12]  427 	inc	@r0
      000067 78 35            [12]  428 	mov	r0,#_mutex
      000069 C3               [12]  429 	clr	c
      00006A 74 80            [12]  430 	mov	a,#(0x00 ^ 0x80)
      00006C 86 F0            [24]  431 	mov	b,@r0
      00006E 63 F0 80         [24]  432 	xrl	b,#0x80
      000071 95 F0            [12]  433 	subb	a,b
      000073 40 0B            [24]  434 	jc	00106$
      000075 A9 38            [24]  435 	mov	r1,_m_tail
      000077 E7               [12]  436 	mov	a,@r1
      000078 FF               [12]  437 	mov	r7,a
      000079 24 24            [12]  438 	add	a,#_bitmap
      00007B F8               [12]  439 	mov	r0,a
      00007C 76 01            [12]  440 	mov	@r0,#0x01
      00007E 15 38            [12]  441 	dec	_m_tail
      000080                        442 00106$:
      000080 D2 AF            [12]  443 	setb	_EA
                                    444 ;	testpreempt.c:23: SemaphoreSignal(full,f_tail);
      000082 C2 AF            [12]  445 	clr	_EA
      000084 78 36            [12]  446 	mov	r0,#_full
      000086 06               [12]  447 	inc	@r0
      000087 78 36            [12]  448 	mov	r0,#_full
      000089 C3               [12]  449 	clr	c
      00008A 74 80            [12]  450 	mov	a,#(0x00 ^ 0x80)
      00008C 86 F0            [24]  451 	mov	b,@r0
      00008E 63 F0 80         [24]  452 	xrl	b,#0x80
      000091 95 F0            [12]  453 	subb	a,b
      000093 40 0B            [24]  454 	jc	00108$
      000095 A9 39            [24]  455 	mov	r1,_f_tail
      000097 E7               [12]  456 	mov	a,@r1
      000098 FF               [12]  457 	mov	r7,a
      000099 24 24            [12]  458 	add	a,#_bitmap
      00009B F8               [12]  459 	mov	r0,a
      00009C 76 01            [12]  460 	mov	@r0,#0x01
      00009E 15 39            [12]  461 	dec	_f_tail
      0000A0                        462 00108$:
      0000A0 D2 AF            [12]  463 	setb	_EA
                                    464 ;	testpreempt.c:24: if(b_head==2) b_head=0;
      0000A2 78 3B            [12]  465 	mov	r0,#_b_head
      0000A4 B6 02 06         [24]  466 	cjne	@r0,#0x02,00110$
      0000A7 78 3B            [12]  467 	mov	r0,#_b_head
      0000A9 76 00            [12]  468 	mov	@r0,#0x00
      0000AB 80 03            [24]  469 	sjmp	00111$
      0000AD                        470 00110$:
                                    471 ;	testpreempt.c:25: else b_head++;
      0000AD 78 3B            [12]  472 	mov	r0,#_b_head
      0000AF 06               [12]  473 	inc	@r0
      0000B0                        474 00111$:
                                    475 ;	testpreempt.c:26: if(c1=='Z') c1 = 'A';
      0000B0 78 33            [12]  476 	mov	r0,#_c1
      0000B2 B6 5A 07         [24]  477 	cjne	@r0,#0x5A,00113$
      0000B5 78 33            [12]  478 	mov	r0,#_c1
      0000B7 76 41            [12]  479 	mov	@r0,#0x41
      0000B9 02 00 18         [24]  480 	ljmp	00116$
      0000BC                        481 00113$:
                                    482 ;	testpreempt.c:27: else c1++;
      0000BC 78 33            [12]  483 	mov	r0,#_c1
      0000BE 06               [12]  484 	inc	@r0
      0000BF 02 00 18         [24]  485 	ljmp	00116$
                                    486 ;------------------------------------------------------------
                                    487 ;Allocation info for local variables in function 'Consumer'
                                    488 ;------------------------------------------------------------
                                    489 ;	testpreempt.c:31: void Consumer(void) {
                                    490 ;	-----------------------------------------
                                    491 ;	 function Consumer
                                    492 ;	-----------------------------------------
      0000C2                        493 _Consumer:
                                    494 ;	testpreempt.c:32: TMOD |= 0x20;
      0000C2 43 89 20         [24]  495 	orl	_TMOD,#0x20
                                    496 ;	testpreempt.c:33: TH1 = -6;
      0000C5 75 8D FA         [24]  497 	mov	_TH1,#0xFA
                                    498 ;	testpreempt.c:34: SCON = 0x50;
      0000C8 75 98 50         [24]  499 	mov	_SCON,#0x50
                                    500 ;	testpreempt.c:35: TR1 = 1;
      0000CB D2 8E            [12]  501 	setb	_TR1
                                    502 ;	testpreempt.c:36: while (1) {
      0000CD                        503 00116$:
                                    504 ;	testpreempt.c:37: SemaphoreWait(full,f_tail);
      0000CD C2 AF            [12]  505 	clr	_EA
      0000CF 78 36            [12]  506 	mov	r0,#_full
      0000D1 16               [12]  507 	dec	@r0
      0000D2 78 36            [12]  508 	mov	r0,#_full
      0000D4 E6               [12]  509 	mov	a,@r0
      0000D5 30 E7 13         [24]  510 	jnb	acc.7,00102$
      0000D8 05 39            [12]  511 	inc	_f_tail
      0000DA A9 39            [24]  512 	mov	r1,_f_tail
      0000DC 78 28            [12]  513 	mov	r0,#_ID
      0000DE E6               [12]  514 	mov	a,@r0
      0000DF F7               [12]  515 	mov	@r1,a
      0000E0 78 28            [12]  516 	mov	r0,#_ID
      0000E2 E6               [12]  517 	mov	a,@r0
      0000E3 24 24            [12]  518 	add	a,#_bitmap
      0000E5 F8               [12]  519 	mov	r0,a
      0000E6 76 FF            [12]  520 	mov	@r0,#0xFF
      0000E8 12 02 DB         [24]  521 	lcall	_ThreadYield
      0000EB                        522 00102$:
      0000EB D2 AF            [12]  523 	setb	_EA
                                    524 ;	testpreempt.c:38: SemaphoreWait(mutex,m_tail);
      0000ED C2 AF            [12]  525 	clr	_EA
      0000EF 78 35            [12]  526 	mov	r0,#_mutex
      0000F1 16               [12]  527 	dec	@r0
      0000F2 78 35            [12]  528 	mov	r0,#_mutex
      0000F4 E6               [12]  529 	mov	a,@r0
      0000F5 30 E7 13         [24]  530 	jnb	acc.7,00104$
      0000F8 05 38            [12]  531 	inc	_m_tail
      0000FA A9 38            [24]  532 	mov	r1,_m_tail
      0000FC 78 28            [12]  533 	mov	r0,#_ID
      0000FE E6               [12]  534 	mov	a,@r0
      0000FF F7               [12]  535 	mov	@r1,a
      000100 78 28            [12]  536 	mov	r0,#_ID
      000102 E6               [12]  537 	mov	a,@r0
      000103 24 24            [12]  538 	add	a,#_bitmap
      000105 F8               [12]  539 	mov	r0,a
      000106 76 FF            [12]  540 	mov	@r0,#0xFF
      000108 12 02 DB         [24]  541 	lcall	_ThreadYield
      00010B                        542 00104$:
      00010B D2 AF            [12]  543 	setb	_EA
                                    544 ;	testpreempt.c:39: SBUF = buffer[b_tail];
      00010D 78 3C            [12]  545 	mov	r0,#_b_tail
      00010F E6               [12]  546 	mov	a,@r0
      000110 24 30            [12]  547 	add	a,#_buffer
      000112 F9               [12]  548 	mov	r1,a
      000113 87 99            [24]  549 	mov	_SBUF,@r1
                                    550 ;	testpreempt.c:40: SemaphoreSignal(mutex,m_tail);
      000115 C2 AF            [12]  551 	clr	_EA
      000117 78 35            [12]  552 	mov	r0,#_mutex
      000119 06               [12]  553 	inc	@r0
      00011A 78 35            [12]  554 	mov	r0,#_mutex
      00011C C3               [12]  555 	clr	c
      00011D 74 80            [12]  556 	mov	a,#(0x00 ^ 0x80)
      00011F 86 F0            [24]  557 	mov	b,@r0
      000121 63 F0 80         [24]  558 	xrl	b,#0x80
      000124 95 F0            [12]  559 	subb	a,b
      000126 40 0B            [24]  560 	jc	00106$
      000128 A9 38            [24]  561 	mov	r1,_m_tail
      00012A E7               [12]  562 	mov	a,@r1
      00012B FF               [12]  563 	mov	r7,a
      00012C 24 24            [12]  564 	add	a,#_bitmap
      00012E F8               [12]  565 	mov	r0,a
      00012F 76 01            [12]  566 	mov	@r0,#0x01
      000131 15 38            [12]  567 	dec	_m_tail
      000133                        568 00106$:
      000133 D2 AF            [12]  569 	setb	_EA
                                    570 ;	testpreempt.c:41: SemaphoreSignal(empty,e_tail);
      000135 C2 AF            [12]  571 	clr	_EA
      000137 78 37            [12]  572 	mov	r0,#_empty
      000139 06               [12]  573 	inc	@r0
      00013A 78 37            [12]  574 	mov	r0,#_empty
      00013C C3               [12]  575 	clr	c
      00013D 74 80            [12]  576 	mov	a,#(0x00 ^ 0x80)
      00013F 86 F0            [24]  577 	mov	b,@r0
      000141 63 F0 80         [24]  578 	xrl	b,#0x80
      000144 95 F0            [12]  579 	subb	a,b
      000146 40 0B            [24]  580 	jc	00108$
      000148 A9 3A            [24]  581 	mov	r1,_e_tail
      00014A E7               [12]  582 	mov	a,@r1
      00014B FF               [12]  583 	mov	r7,a
      00014C 24 24            [12]  584 	add	a,#_bitmap
      00014E F8               [12]  585 	mov	r0,a
      00014F 76 01            [12]  586 	mov	@r0,#0x01
      000151 15 3A            [12]  587 	dec	_e_tail
      000153                        588 00108$:
      000153 D2 AF            [12]  589 	setb	_EA
                                    590 ;	testpreempt.c:42: if(b_tail==2) b_tail=0;
      000155 78 3C            [12]  591 	mov	r0,#_b_tail
      000157 B6 02 06         [24]  592 	cjne	@r0,#0x02,00110$
      00015A 78 3C            [12]  593 	mov	r0,#_b_tail
      00015C 76 00            [12]  594 	mov	@r0,#0x00
      00015E 80 03            [24]  595 	sjmp	00112$
      000160                        596 00110$:
                                    597 ;	testpreempt.c:43: else b_tail++;
      000160 78 3C            [12]  598 	mov	r0,#_b_tail
      000162 06               [12]  599 	inc	@r0
                                    600 ;	testpreempt.c:44: while (!TI) { }
      000163                        601 00112$:
                                    602 ;	testpreempt.c:45: TI = 0;
      000163 10 99 02         [24]  603 	jbc	_TI,00150$
      000166 80 FB            [24]  604 	sjmp	00112$
      000168                        605 00150$:
      000168 02 00 CD         [24]  606 	ljmp	00116$
                                    607 ;------------------------------------------------------------
                                    608 ;Allocation info for local variables in function 'main'
                                    609 ;------------------------------------------------------------
                                    610 ;	testpreempt.c:49: void main(void) {
                                    611 ;	-----------------------------------------
                                    612 ;	 function main
                                    613 ;	-----------------------------------------
      00016B                        614 _main:
                                    615 ;	testpreempt.c:50: buffer[0] = buffer[1] = buffer[2] = 0;
      00016B 78 32            [12]  616 	mov	r0,#(_buffer + 0x0002)
      00016D 76 00            [12]  617 	mov	@r0,#0x00
      00016F 78 31            [12]  618 	mov	r0,#(_buffer + 0x0001)
      000171 76 00            [12]  619 	mov	@r0,#0x00
      000173 78 30            [12]  620 	mov	r0,#_buffer
      000175 76 00            [12]  621 	mov	@r0,#0x00
                                    622 ;	testpreempt.c:51: c2 = '1';
      000177 78 34            [12]  623 	mov	r0,#_c2
      000179 76 31            [12]  624 	mov	@r0,#0x31
                                    625 ;	testpreempt.c:52: b_head = b_tail = 0;
      00017B 78 3C            [12]  626 	mov	r0,#_b_tail
      00017D 76 00            [12]  627 	mov	@r0,#0x00
      00017F 78 3B            [12]  628 	mov	r0,#_b_head
      000181 76 00            [12]  629 	mov	@r0,#0x00
                                    630 ;	testpreempt.c:54: SemaphoreCreate(mutex, 1);
      000183 78 35            [12]  631 	mov	r0,#_mutex
      000185 76 01            [12]  632 	mov	@r0,#0x01
                                    633 ;	testpreempt.c:55: SemaphoreCreate(full, 0);
      000187 78 36            [12]  634 	mov	r0,#_full
      000189 76 00            [12]  635 	mov	@r0,#0x00
                                    636 ;	testpreempt.c:56: SemaphoreCreate(empty, 3);
      00018B 78 37            [12]  637 	mov	r0,#_empty
      00018D 76 03            [12]  638 	mov	@r0,#0x03
                                    639 ;	testpreempt.c:61: __endasm;
      00018F 75 38 5C         [24]  640 	mov _m_tail,#0x5C
      000192 75 39 6C         [24]  641 	mov _f_tail,#0x6C
      000195 75 3A 7C         [24]  642 	mov _e_tail,#0x7C
                                    643 ;	testpreempt.c:63: ThreadCreate(Producer);
      000198 90 00 14         [24]  644 	mov	dptr,#_Producer
      00019B 12 02 64         [24]  645 	lcall	_ThreadCreate
                                    646 ;	testpreempt.c:64: ThreadCreate(Consumer);
      00019E 90 00 C2         [24]  647 	mov	dptr,#_Consumer
      0001A1 12 02 64         [24]  648 	lcall	_ThreadCreate
                                    649 ;	testpreempt.c:65: ThreadExit();
      0001A4 02 03 2A         [24]  650 	ljmp	_ThreadExit
                                    651 ;------------------------------------------------------------
                                    652 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    653 ;------------------------------------------------------------
                                    654 ;	testpreempt.c:68: void _sdcc_gsinit_startup(void) {
                                    655 ;	-----------------------------------------
                                    656 ;	 function _sdcc_gsinit_startup
                                    657 ;	-----------------------------------------
      0001A7                        658 __sdcc_gsinit_startup:
                                    659 ;	testpreempt.c:71: __endasm;
      0001A7 02 02 23         [24]  660 	ljmp _Bootstrap
      0001AA 22               [24]  661 	ret
                                    662 ;------------------------------------------------------------
                                    663 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    664 ;------------------------------------------------------------
                                    665 ;	testpreempt.c:74: void _mcs51_genRAMCLEAR(void) {}
                                    666 ;	-----------------------------------------
                                    667 ;	 function _mcs51_genRAMCLEAR
                                    668 ;	-----------------------------------------
      0001AB                        669 __mcs51_genRAMCLEAR:
      0001AB 22               [24]  670 	ret
                                    671 ;------------------------------------------------------------
                                    672 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    673 ;------------------------------------------------------------
                                    674 ;	testpreempt.c:75: void _mcs51_genXINIT(void) {}
                                    675 ;	-----------------------------------------
                                    676 ;	 function _mcs51_genXINIT
                                    677 ;	-----------------------------------------
      0001AC                        678 __mcs51_genXINIT:
      0001AC 22               [24]  679 	ret
                                    680 ;------------------------------------------------------------
                                    681 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    682 ;------------------------------------------------------------
                                    683 ;	testpreempt.c:76: void _mcs51_genXRAMCLEAR(void) {}
                                    684 ;	-----------------------------------------
                                    685 ;	 function _mcs51_genXRAMCLEAR
                                    686 ;	-----------------------------------------
      0001AD                        687 __mcs51_genXRAMCLEAR:
      0001AD 22               [24]  688 	ret
                                    689 ;------------------------------------------------------------
                                    690 ;Allocation info for local variables in function 'timer0_ISR'
                                    691 ;------------------------------------------------------------
                                    692 ;	testpreempt.c:77: void timer0_ISR(void) __interrupt(1) {
                                    693 ;	-----------------------------------------
                                    694 ;	 function timer0_ISR
                                    695 ;	-----------------------------------------
      0001AE                        696 _timer0_ISR:
                                    697 ;	testpreempt.c:80: __endasm;
      0001AE 02 01 E8         [24]  698 	ljmp _myTimer0Handler
      0001B1 32               [24]  699 	reti
                                    700 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    701 ;	eliminated unneeded push/pop psw
                                    702 ;	eliminated unneeded push/pop dpl
                                    703 ;	eliminated unneeded push/pop dph
                                    704 ;	eliminated unneeded push/pop b
                                    705 ;	eliminated unneeded push/pop acc
                                    706 	.area CSEG    (CODE)
                                    707 	.area CONST   (CODE)
                                    708 	.area XINIT   (CODE)
                                    709 	.area CABS    (ABS,CODE)
