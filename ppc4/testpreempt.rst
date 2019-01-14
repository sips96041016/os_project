                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Mon Jan 14 14:52:51 2019
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
                                     19 	.globl _Producer2
                                     20 	.globl _Producer1
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
      000000 02 02 51         [24]  324 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  325 	reti
      000004                        326 	.ds	7
      00000B 02 02 58         [24]  327 	ljmp	_timer0_ISR
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
      00000E 02 02 19         [24]  349 	ljmp	_main
                                    350 ;	return from main will return to caller
                                    351 ;--------------------------------------------------------
                                    352 ; code
                                    353 ;--------------------------------------------------------
                                    354 	.area CSEG    (CODE)
                                    355 ;------------------------------------------------------------
                                    356 ;Allocation info for local variables in function 'Producer1'
                                    357 ;------------------------------------------------------------
                                    358 ;	testpreempt.c:16: void Producer1(void) {
                                    359 ;	-----------------------------------------
                                    360 ;	 function Producer1
                                    361 ;	-----------------------------------------
      000014                        362 _Producer1:
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
      000033 12 03 E9         [24]  393 	lcall	_ThreadYield
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
      000053 12 03 E9         [24]  413 	lcall	_ThreadYield
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
                                    424 ;	testpreempt.c:22: if(b_head==2) b_head=0;
      000062 78 3B            [12]  425 	mov	r0,#_b_head
      000064 B6 02 06         [24]  426 	cjne	@r0,#0x02,00106$
      000067 78 3B            [12]  427 	mov	r0,#_b_head
      000069 76 00            [12]  428 	mov	@r0,#0x00
      00006B 80 03            [24]  429 	sjmp	00107$
      00006D                        430 00106$:
                                    431 ;	testpreempt.c:23: else b_head++;
      00006D 78 3B            [12]  432 	mov	r0,#_b_head
      00006F 06               [12]  433 	inc	@r0
      000070                        434 00107$:
                                    435 ;	testpreempt.c:24: SemaphoreSignal(mutex,m_tail);
      000070 C2 AF            [12]  436 	clr	_EA
      000072 78 35            [12]  437 	mov	r0,#_mutex
      000074 06               [12]  438 	inc	@r0
      000075 78 35            [12]  439 	mov	r0,#_mutex
      000077 C3               [12]  440 	clr	c
      000078 74 80            [12]  441 	mov	a,#(0x00 ^ 0x80)
      00007A 86 F0            [24]  442 	mov	b,@r0
      00007C 63 F0 80         [24]  443 	xrl	b,#0x80
      00007F 95 F0            [12]  444 	subb	a,b
      000081 40 0B            [24]  445 	jc	00109$
      000083 A9 38            [24]  446 	mov	r1,_m_tail
      000085 E7               [12]  447 	mov	a,@r1
      000086 FF               [12]  448 	mov	r7,a
      000087 24 24            [12]  449 	add	a,#_bitmap
      000089 F8               [12]  450 	mov	r0,a
      00008A 76 01            [12]  451 	mov	@r0,#0x01
      00008C 15 38            [12]  452 	dec	_m_tail
      00008E                        453 00109$:
      00008E D2 AF            [12]  454 	setb	_EA
                                    455 ;	testpreempt.c:25: SemaphoreSignal(full,f_tail);
      000090 C2 AF            [12]  456 	clr	_EA
      000092 78 36            [12]  457 	mov	r0,#_full
      000094 06               [12]  458 	inc	@r0
      000095 78 36            [12]  459 	mov	r0,#_full
      000097 C3               [12]  460 	clr	c
      000098 74 80            [12]  461 	mov	a,#(0x00 ^ 0x80)
      00009A 86 F0            [24]  462 	mov	b,@r0
      00009C 63 F0 80         [24]  463 	xrl	b,#0x80
      00009F 95 F0            [12]  464 	subb	a,b
      0000A1 40 0B            [24]  465 	jc	00111$
      0000A3 A9 39            [24]  466 	mov	r1,_f_tail
      0000A5 E7               [12]  467 	mov	a,@r1
      0000A6 FF               [12]  468 	mov	r7,a
      0000A7 24 24            [12]  469 	add	a,#_bitmap
      0000A9 F8               [12]  470 	mov	r0,a
      0000AA 76 01            [12]  471 	mov	@r0,#0x01
      0000AC 15 39            [12]  472 	dec	_f_tail
      0000AE                        473 00111$:
      0000AE D2 AF            [12]  474 	setb	_EA
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
                                    487 ;Allocation info for local variables in function 'Producer2'
                                    488 ;------------------------------------------------------------
                                    489 ;	testpreempt.c:30: void Producer2(void) {
                                    490 ;	-----------------------------------------
                                    491 ;	 function Producer2
                                    492 ;	-----------------------------------------
      0000C2                        493 _Producer2:
                                    494 ;	testpreempt.c:31: c2 = '0';
      0000C2 78 34            [12]  495 	mov	r0,#_c2
      0000C4 76 30            [12]  496 	mov	@r0,#0x30
                                    497 ;	testpreempt.c:32: while (1) {
      0000C6                        498 00116$:
                                    499 ;	testpreempt.c:33: SemaphoreWait(empty,e_tail);
      0000C6 C2 AF            [12]  500 	clr	_EA
      0000C8 78 37            [12]  501 	mov	r0,#_empty
      0000CA 16               [12]  502 	dec	@r0
      0000CB 78 37            [12]  503 	mov	r0,#_empty
      0000CD E6               [12]  504 	mov	a,@r0
      0000CE 30 E7 13         [24]  505 	jnb	acc.7,00102$
      0000D1 05 3A            [12]  506 	inc	_e_tail
      0000D3 A9 3A            [24]  507 	mov	r1,_e_tail
      0000D5 78 28            [12]  508 	mov	r0,#_ID
      0000D7 E6               [12]  509 	mov	a,@r0
      0000D8 F7               [12]  510 	mov	@r1,a
      0000D9 78 28            [12]  511 	mov	r0,#_ID
      0000DB E6               [12]  512 	mov	a,@r0
      0000DC 24 24            [12]  513 	add	a,#_bitmap
      0000DE F8               [12]  514 	mov	r0,a
      0000DF 76 FF            [12]  515 	mov	@r0,#0xFF
      0000E1 12 03 E9         [24]  516 	lcall	_ThreadYield
      0000E4                        517 00102$:
      0000E4 D2 AF            [12]  518 	setb	_EA
                                    519 ;	testpreempt.c:34: SemaphoreWait(mutex,m_tail);
      0000E6 C2 AF            [12]  520 	clr	_EA
      0000E8 78 35            [12]  521 	mov	r0,#_mutex
      0000EA 16               [12]  522 	dec	@r0
      0000EB 78 35            [12]  523 	mov	r0,#_mutex
      0000ED E6               [12]  524 	mov	a,@r0
      0000EE 30 E7 13         [24]  525 	jnb	acc.7,00104$
      0000F1 05 38            [12]  526 	inc	_m_tail
      0000F3 A9 38            [24]  527 	mov	r1,_m_tail
      0000F5 78 28            [12]  528 	mov	r0,#_ID
      0000F7 E6               [12]  529 	mov	a,@r0
      0000F8 F7               [12]  530 	mov	@r1,a
      0000F9 78 28            [12]  531 	mov	r0,#_ID
      0000FB E6               [12]  532 	mov	a,@r0
      0000FC 24 24            [12]  533 	add	a,#_bitmap
      0000FE F8               [12]  534 	mov	r0,a
      0000FF 76 FF            [12]  535 	mov	@r0,#0xFF
      000101 12 03 E9         [24]  536 	lcall	_ThreadYield
      000104                        537 00104$:
      000104 D2 AF            [12]  538 	setb	_EA
                                    539 ;	testpreempt.c:35: buffer[b_head] = c2;
      000106 78 3B            [12]  540 	mov	r0,#_b_head
      000108 E6               [12]  541 	mov	a,@r0
      000109 24 30            [12]  542 	add	a,#_buffer
      00010B F8               [12]  543 	mov	r0,a
      00010C 79 34            [12]  544 	mov	r1,#_c2
      00010E E7               [12]  545 	mov	a,@r1
      00010F F6               [12]  546 	mov	@r0,a
                                    547 ;	testpreempt.c:36: if(b_head==2) b_head=0;
      000110 78 3B            [12]  548 	mov	r0,#_b_head
      000112 B6 02 06         [24]  549 	cjne	@r0,#0x02,00106$
      000115 78 3B            [12]  550 	mov	r0,#_b_head
      000117 76 00            [12]  551 	mov	@r0,#0x00
      000119 80 03            [24]  552 	sjmp	00107$
      00011B                        553 00106$:
                                    554 ;	testpreempt.c:37: else b_head++;
      00011B 78 3B            [12]  555 	mov	r0,#_b_head
      00011D 06               [12]  556 	inc	@r0
      00011E                        557 00107$:
                                    558 ;	testpreempt.c:38: SemaphoreSignal(mutex,m_tail);
      00011E C2 AF            [12]  559 	clr	_EA
      000120 78 35            [12]  560 	mov	r0,#_mutex
      000122 06               [12]  561 	inc	@r0
      000123 78 35            [12]  562 	mov	r0,#_mutex
      000125 C3               [12]  563 	clr	c
      000126 74 80            [12]  564 	mov	a,#(0x00 ^ 0x80)
      000128 86 F0            [24]  565 	mov	b,@r0
      00012A 63 F0 80         [24]  566 	xrl	b,#0x80
      00012D 95 F0            [12]  567 	subb	a,b
      00012F 40 0B            [24]  568 	jc	00109$
      000131 A9 38            [24]  569 	mov	r1,_m_tail
      000133 E7               [12]  570 	mov	a,@r1
      000134 FF               [12]  571 	mov	r7,a
      000135 24 24            [12]  572 	add	a,#_bitmap
      000137 F8               [12]  573 	mov	r0,a
      000138 76 01            [12]  574 	mov	@r0,#0x01
      00013A 15 38            [12]  575 	dec	_m_tail
      00013C                        576 00109$:
      00013C D2 AF            [12]  577 	setb	_EA
                                    578 ;	testpreempt.c:39: SemaphoreSignal(full,f_tail);
      00013E C2 AF            [12]  579 	clr	_EA
      000140 78 36            [12]  580 	mov	r0,#_full
      000142 06               [12]  581 	inc	@r0
      000143 78 36            [12]  582 	mov	r0,#_full
      000145 C3               [12]  583 	clr	c
      000146 74 80            [12]  584 	mov	a,#(0x00 ^ 0x80)
      000148 86 F0            [24]  585 	mov	b,@r0
      00014A 63 F0 80         [24]  586 	xrl	b,#0x80
      00014D 95 F0            [12]  587 	subb	a,b
      00014F 40 0B            [24]  588 	jc	00111$
      000151 A9 39            [24]  589 	mov	r1,_f_tail
      000153 E7               [12]  590 	mov	a,@r1
      000154 FF               [12]  591 	mov	r7,a
      000155 24 24            [12]  592 	add	a,#_bitmap
      000157 F8               [12]  593 	mov	r0,a
      000158 76 01            [12]  594 	mov	@r0,#0x01
      00015A 15 39            [12]  595 	dec	_f_tail
      00015C                        596 00111$:
      00015C D2 AF            [12]  597 	setb	_EA
                                    598 ;	testpreempt.c:40: if(c2=='9') c2 = '0';
      00015E 78 34            [12]  599 	mov	r0,#_c2
      000160 B6 39 07         [24]  600 	cjne	@r0,#0x39,00113$
      000163 78 34            [12]  601 	mov	r0,#_c2
      000165 76 30            [12]  602 	mov	@r0,#0x30
      000167 02 00 C6         [24]  603 	ljmp	00116$
      00016A                        604 00113$:
                                    605 ;	testpreempt.c:41: else c2++;
      00016A 78 34            [12]  606 	mov	r0,#_c2
      00016C 06               [12]  607 	inc	@r0
      00016D 02 00 C6         [24]  608 	ljmp	00116$
                                    609 ;------------------------------------------------------------
                                    610 ;Allocation info for local variables in function 'Consumer'
                                    611 ;------------------------------------------------------------
                                    612 ;	testpreempt.c:45: void Consumer(void) {
                                    613 ;	-----------------------------------------
                                    614 ;	 function Consumer
                                    615 ;	-----------------------------------------
      000170                        616 _Consumer:
                                    617 ;	testpreempt.c:46: TMOD |= 0x20;
      000170 43 89 20         [24]  618 	orl	_TMOD,#0x20
                                    619 ;	testpreempt.c:47: TH1 = -6;
      000173 75 8D FA         [24]  620 	mov	_TH1,#0xFA
                                    621 ;	testpreempt.c:48: SCON = 0x50;
      000176 75 98 50         [24]  622 	mov	_SCON,#0x50
                                    623 ;	testpreempt.c:49: TR1 = 1;
      000179 D2 8E            [12]  624 	setb	_TR1
                                    625 ;	testpreempt.c:50: while (1) {
      00017B                        626 00116$:
                                    627 ;	testpreempt.c:51: SemaphoreWait(full,f_tail);
      00017B C2 AF            [12]  628 	clr	_EA
      00017D 78 36            [12]  629 	mov	r0,#_full
      00017F 16               [12]  630 	dec	@r0
      000180 78 36            [12]  631 	mov	r0,#_full
      000182 E6               [12]  632 	mov	a,@r0
      000183 30 E7 13         [24]  633 	jnb	acc.7,00102$
      000186 05 39            [12]  634 	inc	_f_tail
      000188 A9 39            [24]  635 	mov	r1,_f_tail
      00018A 78 28            [12]  636 	mov	r0,#_ID
      00018C E6               [12]  637 	mov	a,@r0
      00018D F7               [12]  638 	mov	@r1,a
      00018E 78 28            [12]  639 	mov	r0,#_ID
      000190 E6               [12]  640 	mov	a,@r0
      000191 24 24            [12]  641 	add	a,#_bitmap
      000193 F8               [12]  642 	mov	r0,a
      000194 76 FF            [12]  643 	mov	@r0,#0xFF
      000196 12 03 E9         [24]  644 	lcall	_ThreadYield
      000199                        645 00102$:
      000199 D2 AF            [12]  646 	setb	_EA
                                    647 ;	testpreempt.c:52: SemaphoreWait(mutex,m_tail);
      00019B C2 AF            [12]  648 	clr	_EA
      00019D 78 35            [12]  649 	mov	r0,#_mutex
      00019F 16               [12]  650 	dec	@r0
      0001A0 78 35            [12]  651 	mov	r0,#_mutex
      0001A2 E6               [12]  652 	mov	a,@r0
      0001A3 30 E7 13         [24]  653 	jnb	acc.7,00104$
      0001A6 05 38            [12]  654 	inc	_m_tail
      0001A8 A9 38            [24]  655 	mov	r1,_m_tail
      0001AA 78 28            [12]  656 	mov	r0,#_ID
      0001AC E6               [12]  657 	mov	a,@r0
      0001AD F7               [12]  658 	mov	@r1,a
      0001AE 78 28            [12]  659 	mov	r0,#_ID
      0001B0 E6               [12]  660 	mov	a,@r0
      0001B1 24 24            [12]  661 	add	a,#_bitmap
      0001B3 F8               [12]  662 	mov	r0,a
      0001B4 76 FF            [12]  663 	mov	@r0,#0xFF
      0001B6 12 03 E9         [24]  664 	lcall	_ThreadYield
      0001B9                        665 00104$:
      0001B9 D2 AF            [12]  666 	setb	_EA
                                    667 ;	testpreempt.c:53: SBUF = buffer[b_tail];
      0001BB 78 3C            [12]  668 	mov	r0,#_b_tail
      0001BD E6               [12]  669 	mov	a,@r0
      0001BE 24 30            [12]  670 	add	a,#_buffer
      0001C0 F9               [12]  671 	mov	r1,a
      0001C1 87 99            [24]  672 	mov	_SBUF,@r1
                                    673 ;	testpreempt.c:54: if(b_tail==2) b_tail=0;
      0001C3 78 3C            [12]  674 	mov	r0,#_b_tail
      0001C5 B6 02 06         [24]  675 	cjne	@r0,#0x02,00106$
      0001C8 78 3C            [12]  676 	mov	r0,#_b_tail
      0001CA 76 00            [12]  677 	mov	@r0,#0x00
      0001CC 80 03            [24]  678 	sjmp	00107$
      0001CE                        679 00106$:
                                    680 ;	testpreempt.c:55: else b_tail++;
      0001CE 78 3C            [12]  681 	mov	r0,#_b_tail
      0001D0 06               [12]  682 	inc	@r0
      0001D1                        683 00107$:
                                    684 ;	testpreempt.c:56: SemaphoreSignal(mutex,m_tail);
      0001D1 C2 AF            [12]  685 	clr	_EA
      0001D3 78 35            [12]  686 	mov	r0,#_mutex
      0001D5 06               [12]  687 	inc	@r0
      0001D6 78 35            [12]  688 	mov	r0,#_mutex
      0001D8 C3               [12]  689 	clr	c
      0001D9 74 80            [12]  690 	mov	a,#(0x00 ^ 0x80)
      0001DB 86 F0            [24]  691 	mov	b,@r0
      0001DD 63 F0 80         [24]  692 	xrl	b,#0x80
      0001E0 95 F0            [12]  693 	subb	a,b
      0001E2 40 0B            [24]  694 	jc	00109$
      0001E4 A9 38            [24]  695 	mov	r1,_m_tail
      0001E6 E7               [12]  696 	mov	a,@r1
      0001E7 FF               [12]  697 	mov	r7,a
      0001E8 24 24            [12]  698 	add	a,#_bitmap
      0001EA F8               [12]  699 	mov	r0,a
      0001EB 76 01            [12]  700 	mov	@r0,#0x01
      0001ED 15 38            [12]  701 	dec	_m_tail
      0001EF                        702 00109$:
      0001EF D2 AF            [12]  703 	setb	_EA
                                    704 ;	testpreempt.c:57: SemaphoreSignal(empty,e_tail);
      0001F1 C2 AF            [12]  705 	clr	_EA
      0001F3 78 37            [12]  706 	mov	r0,#_empty
      0001F5 06               [12]  707 	inc	@r0
      0001F6 78 37            [12]  708 	mov	r0,#_empty
      0001F8 C3               [12]  709 	clr	c
      0001F9 74 80            [12]  710 	mov	a,#(0x00 ^ 0x80)
      0001FB 86 F0            [24]  711 	mov	b,@r0
      0001FD 63 F0 80         [24]  712 	xrl	b,#0x80
      000200 95 F0            [12]  713 	subb	a,b
      000202 40 0B            [24]  714 	jc	00111$
      000204 A9 3A            [24]  715 	mov	r1,_e_tail
      000206 E7               [12]  716 	mov	a,@r1
      000207 FF               [12]  717 	mov	r7,a
      000208 24 24            [12]  718 	add	a,#_bitmap
      00020A F8               [12]  719 	mov	r0,a
      00020B 76 01            [12]  720 	mov	@r0,#0x01
      00020D 15 3A            [12]  721 	dec	_e_tail
      00020F                        722 00111$:
      00020F D2 AF            [12]  723 	setb	_EA
                                    724 ;	testpreempt.c:58: while (!TI) { }
      000211                        725 00112$:
                                    726 ;	testpreempt.c:59: TI = 0;
      000211 10 99 02         [24]  727 	jbc	_TI,00150$
      000214 80 FB            [24]  728 	sjmp	00112$
      000216                        729 00150$:
      000216 02 01 7B         [24]  730 	ljmp	00116$
                                    731 ;------------------------------------------------------------
                                    732 ;Allocation info for local variables in function 'main'
                                    733 ;------------------------------------------------------------
                                    734 ;	testpreempt.c:63: void main(void) {
                                    735 ;	-----------------------------------------
                                    736 ;	 function main
                                    737 ;	-----------------------------------------
      000219                        738 _main:
                                    739 ;	testpreempt.c:64: buffer[0] = buffer[1] = buffer[2] = 0;
      000219 78 32            [12]  740 	mov	r0,#(_buffer + 0x0002)
      00021B 76 00            [12]  741 	mov	@r0,#0x00
      00021D 78 31            [12]  742 	mov	r0,#(_buffer + 0x0001)
      00021F 76 00            [12]  743 	mov	@r0,#0x00
      000221 78 30            [12]  744 	mov	r0,#_buffer
      000223 76 00            [12]  745 	mov	@r0,#0x00
                                    746 ;	testpreempt.c:65: b_head = b_tail = 0;
      000225 78 3C            [12]  747 	mov	r0,#_b_tail
      000227 76 00            [12]  748 	mov	@r0,#0x00
      000229 78 3B            [12]  749 	mov	r0,#_b_head
      00022B 76 00            [12]  750 	mov	@r0,#0x00
                                    751 ;	testpreempt.c:67: SemaphoreCreate(mutex, 1);
      00022D 78 35            [12]  752 	mov	r0,#_mutex
      00022F 76 01            [12]  753 	mov	@r0,#0x01
                                    754 ;	testpreempt.c:68: SemaphoreCreate(full, 0);
      000231 78 36            [12]  755 	mov	r0,#_full
      000233 76 00            [12]  756 	mov	@r0,#0x00
                                    757 ;	testpreempt.c:69: SemaphoreCreate(empty, 3);
      000235 78 37            [12]  758 	mov	r0,#_empty
      000237 76 03            [12]  759 	mov	@r0,#0x03
                                    760 ;	testpreempt.c:74: __endasm;
      000239 75 38 5C         [24]  761 	mov _m_tail,#0x5C
      00023C 75 39 6C         [24]  762 	mov _f_tail,#0x6C
      00023F 75 3A 7C         [24]  763 	mov _e_tail,#0x7C
                                    764 ;	testpreempt.c:76: ThreadCreate(Producer1);
      000242 90 00 14         [24]  765 	mov	dptr,#_Producer1
      000245 12 03 72         [24]  766 	lcall	_ThreadCreate
                                    767 ;	testpreempt.c:77: ThreadCreate(Producer2);
      000248 90 00 C2         [24]  768 	mov	dptr,#_Producer2
      00024B 12 03 72         [24]  769 	lcall	_ThreadCreate
                                    770 ;	testpreempt.c:78: Consumer();
      00024E 02 01 70         [24]  771 	ljmp	_Consumer
                                    772 ;------------------------------------------------------------
                                    773 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    774 ;------------------------------------------------------------
                                    775 ;	testpreempt.c:81: void _sdcc_gsinit_startup(void) {
                                    776 ;	-----------------------------------------
                                    777 ;	 function _sdcc_gsinit_startup
                                    778 ;	-----------------------------------------
      000251                        779 __sdcc_gsinit_startup:
                                    780 ;	testpreempt.c:84: __endasm;
      000251 02 03 31         [24]  781 	ljmp _Bootstrap
      000254 22               [24]  782 	ret
                                    783 ;------------------------------------------------------------
                                    784 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    785 ;------------------------------------------------------------
                                    786 ;	testpreempt.c:87: void _mcs51_genRAMCLEAR(void) {}
                                    787 ;	-----------------------------------------
                                    788 ;	 function _mcs51_genRAMCLEAR
                                    789 ;	-----------------------------------------
      000255                        790 __mcs51_genRAMCLEAR:
      000255 22               [24]  791 	ret
                                    792 ;------------------------------------------------------------
                                    793 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    794 ;------------------------------------------------------------
                                    795 ;	testpreempt.c:88: void _mcs51_genXINIT(void) {}
                                    796 ;	-----------------------------------------
                                    797 ;	 function _mcs51_genXINIT
                                    798 ;	-----------------------------------------
      000256                        799 __mcs51_genXINIT:
      000256 22               [24]  800 	ret
                                    801 ;------------------------------------------------------------
                                    802 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    803 ;------------------------------------------------------------
                                    804 ;	testpreempt.c:89: void _mcs51_genXRAMCLEAR(void) {}
                                    805 ;	-----------------------------------------
                                    806 ;	 function _mcs51_genXRAMCLEAR
                                    807 ;	-----------------------------------------
      000257                        808 __mcs51_genXRAMCLEAR:
      000257 22               [24]  809 	ret
                                    810 ;------------------------------------------------------------
                                    811 ;Allocation info for local variables in function 'timer0_ISR'
                                    812 ;------------------------------------------------------------
                                    813 ;	testpreempt.c:90: void timer0_ISR(void) __interrupt(1) {
                                    814 ;	-----------------------------------------
                                    815 ;	 function timer0_ISR
                                    816 ;	-----------------------------------------
      000258                        817 _timer0_ISR:
                                    818 ;	testpreempt.c:93: __endasm;
      000258 02 02 BD         [24]  819 	ljmp _myTimer0Handler
      00025B 32               [24]  820 	reti
                                    821 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    822 ;	eliminated unneeded push/pop psw
                                    823 ;	eliminated unneeded push/pop dpl
                                    824 ;	eliminated unneeded push/pop dph
                                    825 ;	eliminated unneeded push/pop b
                                    826 ;	eliminated unneeded push/pop acc
                                    827 	.area CSEG    (CODE)
                                    828 	.area CONST   (CODE)
                                    829 	.area XINIT   (CODE)
                                    830 	.area CABS    (ABS,CODE)
