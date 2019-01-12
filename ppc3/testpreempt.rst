                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Sun Jan 13 00:59:30 2019
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
      000000 02 01 87         [24]  324 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  325 	reti
      000004                        326 	.ds	7
      00000B 02 01 8E         [24]  327 	ljmp	_timer0_ISR
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
      00000E 02 01 4B         [24]  349 	ljmp	_main
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
      000018 78 37            [12]  377 	mov	r0,#_empty
      00001A 16               [12]  378 	dec	@r0
      00001B 78 37            [12]  379 	mov	r0,#_empty
      00001D E6               [12]  380 	mov	a,@r0
      00001E 30 E7 13         [24]  381 	jnb	acc.7,00102$
      000021 05 3A            [12]  382 	inc	_e_tail
      000023 A9 3A            [24]  383 	mov	r1,_e_tail
      000025 78 28            [12]  384 	mov	r0,#_ID
      000027 E6               [12]  385 	mov	a,@r0
      000028 F7               [12]  386 	mov	@r1,a
      000029 78 28            [12]  387 	mov	r0,#_ID
      00002B E6               [12]  388 	mov	a,@r0
      00002C 24 24            [12]  389 	add	a,#_bitmap
      00002E F8               [12]  390 	mov	r0,a
      00002F 76 FF            [12]  391 	mov	@r0,#0xFF
      000031 12 02 BB         [24]  392 	lcall	_ThreadYield
      000034                        393 00102$:
                                    394 ;	testpreempt.c:20: SemaphoreWait(mutex,m_tail);
      000034 78 35            [12]  395 	mov	r0,#_mutex
      000036 16               [12]  396 	dec	@r0
      000037 78 35            [12]  397 	mov	r0,#_mutex
      000039 E6               [12]  398 	mov	a,@r0
      00003A 30 E7 13         [24]  399 	jnb	acc.7,00104$
      00003D 05 38            [12]  400 	inc	_m_tail
      00003F A9 38            [24]  401 	mov	r1,_m_tail
      000041 78 28            [12]  402 	mov	r0,#_ID
      000043 E6               [12]  403 	mov	a,@r0
      000044 F7               [12]  404 	mov	@r1,a
      000045 78 28            [12]  405 	mov	r0,#_ID
      000047 E6               [12]  406 	mov	a,@r0
      000048 24 24            [12]  407 	add	a,#_bitmap
      00004A F8               [12]  408 	mov	r0,a
      00004B 76 FF            [12]  409 	mov	@r0,#0xFF
      00004D 12 02 BB         [24]  410 	lcall	_ThreadYield
      000050                        411 00104$:
                                    412 ;	testpreempt.c:21: buffer[b_head] = c1;
      000050 78 3B            [12]  413 	mov	r0,#_b_head
      000052 E6               [12]  414 	mov	a,@r0
      000053 24 30            [12]  415 	add	a,#_buffer
      000055 F8               [12]  416 	mov	r0,a
      000056 79 33            [12]  417 	mov	r1,#_c1
      000058 E7               [12]  418 	mov	a,@r1
      000059 F6               [12]  419 	mov	@r0,a
                                    420 ;	testpreempt.c:22: SemaphoreSignal(mutex,m_tail);
      00005A 78 35            [12]  421 	mov	r0,#_mutex
      00005C 06               [12]  422 	inc	@r0
      00005D 78 35            [12]  423 	mov	r0,#_mutex
      00005F C3               [12]  424 	clr	c
      000060 74 80            [12]  425 	mov	a,#(0x00 ^ 0x80)
      000062 86 F0            [24]  426 	mov	b,@r0
      000064 63 F0 80         [24]  427 	xrl	b,#0x80
      000067 95 F0            [12]  428 	subb	a,b
      000069 40 0B            [24]  429 	jc	00106$
      00006B A9 38            [24]  430 	mov	r1,_m_tail
      00006D E7               [12]  431 	mov	a,@r1
      00006E FF               [12]  432 	mov	r7,a
      00006F 24 24            [12]  433 	add	a,#_bitmap
      000071 F8               [12]  434 	mov	r0,a
      000072 76 01            [12]  435 	mov	@r0,#0x01
      000074 15 38            [12]  436 	dec	_m_tail
      000076                        437 00106$:
                                    438 ;	testpreempt.c:23: SemaphoreSignal(full,f_tail);
      000076 78 36            [12]  439 	mov	r0,#_full
      000078 06               [12]  440 	inc	@r0
      000079 78 36            [12]  441 	mov	r0,#_full
      00007B C3               [12]  442 	clr	c
      00007C 74 80            [12]  443 	mov	a,#(0x00 ^ 0x80)
      00007E 86 F0            [24]  444 	mov	b,@r0
      000080 63 F0 80         [24]  445 	xrl	b,#0x80
      000083 95 F0            [12]  446 	subb	a,b
      000085 40 0B            [24]  447 	jc	00108$
      000087 A9 39            [24]  448 	mov	r1,_f_tail
      000089 E7               [12]  449 	mov	a,@r1
      00008A FF               [12]  450 	mov	r7,a
      00008B 24 24            [12]  451 	add	a,#_bitmap
      00008D F8               [12]  452 	mov	r0,a
      00008E 76 01            [12]  453 	mov	@r0,#0x01
      000090 15 39            [12]  454 	dec	_f_tail
      000092                        455 00108$:
                                    456 ;	testpreempt.c:24: if(b_head==2) b_head=0;
      000092 78 3B            [12]  457 	mov	r0,#_b_head
      000094 B6 02 06         [24]  458 	cjne	@r0,#0x02,00110$
      000097 78 3B            [12]  459 	mov	r0,#_b_head
      000099 76 00            [12]  460 	mov	@r0,#0x00
      00009B 80 03            [24]  461 	sjmp	00111$
      00009D                        462 00110$:
                                    463 ;	testpreempt.c:25: else b_head++;
      00009D 78 3B            [12]  464 	mov	r0,#_b_head
      00009F 06               [12]  465 	inc	@r0
      0000A0                        466 00111$:
                                    467 ;	testpreempt.c:26: if(c1=='Z') c1 = 'A';
      0000A0 78 33            [12]  468 	mov	r0,#_c1
      0000A2 B6 5A 07         [24]  469 	cjne	@r0,#0x5A,00113$
      0000A5 78 33            [12]  470 	mov	r0,#_c1
      0000A7 76 41            [12]  471 	mov	@r0,#0x41
      0000A9 02 00 18         [24]  472 	ljmp	00116$
      0000AC                        473 00113$:
                                    474 ;	testpreempt.c:27: else c1++;
      0000AC 78 33            [12]  475 	mov	r0,#_c1
      0000AE 06               [12]  476 	inc	@r0
      0000AF 02 00 18         [24]  477 	ljmp	00116$
                                    478 ;------------------------------------------------------------
                                    479 ;Allocation info for local variables in function 'Consumer'
                                    480 ;------------------------------------------------------------
                                    481 ;	testpreempt.c:31: void Consumer(void) {
                                    482 ;	-----------------------------------------
                                    483 ;	 function Consumer
                                    484 ;	-----------------------------------------
      0000B2                        485 _Consumer:
                                    486 ;	testpreempt.c:32: TMOD |= 0x20;
      0000B2 43 89 20         [24]  487 	orl	_TMOD,#0x20
                                    488 ;	testpreempt.c:33: TH1 = -6;
      0000B5 75 8D FA         [24]  489 	mov	_TH1,#0xFA
                                    490 ;	testpreempt.c:34: SCON = 0x50;
      0000B8 75 98 50         [24]  491 	mov	_SCON,#0x50
                                    492 ;	testpreempt.c:35: TR1 = 1;
      0000BB D2 8E            [12]  493 	setb	_TR1
                                    494 ;	testpreempt.c:36: while (1) {
      0000BD                        495 00116$:
                                    496 ;	testpreempt.c:37: SemaphoreWait(full,f_tail);
      0000BD 78 36            [12]  497 	mov	r0,#_full
      0000BF 16               [12]  498 	dec	@r0
      0000C0 78 36            [12]  499 	mov	r0,#_full
      0000C2 E6               [12]  500 	mov	a,@r0
      0000C3 30 E7 13         [24]  501 	jnb	acc.7,00102$
      0000C6 05 39            [12]  502 	inc	_f_tail
      0000C8 A9 39            [24]  503 	mov	r1,_f_tail
      0000CA 78 28            [12]  504 	mov	r0,#_ID
      0000CC E6               [12]  505 	mov	a,@r0
      0000CD F7               [12]  506 	mov	@r1,a
      0000CE 78 28            [12]  507 	mov	r0,#_ID
      0000D0 E6               [12]  508 	mov	a,@r0
      0000D1 24 24            [12]  509 	add	a,#_bitmap
      0000D3 F8               [12]  510 	mov	r0,a
      0000D4 76 FF            [12]  511 	mov	@r0,#0xFF
      0000D6 12 02 BB         [24]  512 	lcall	_ThreadYield
      0000D9                        513 00102$:
                                    514 ;	testpreempt.c:38: SemaphoreWait(mutex,m_tail);
      0000D9 78 35            [12]  515 	mov	r0,#_mutex
      0000DB 16               [12]  516 	dec	@r0
      0000DC 78 35            [12]  517 	mov	r0,#_mutex
      0000DE E6               [12]  518 	mov	a,@r0
      0000DF 30 E7 13         [24]  519 	jnb	acc.7,00104$
      0000E2 05 38            [12]  520 	inc	_m_tail
      0000E4 A9 38            [24]  521 	mov	r1,_m_tail
      0000E6 78 28            [12]  522 	mov	r0,#_ID
      0000E8 E6               [12]  523 	mov	a,@r0
      0000E9 F7               [12]  524 	mov	@r1,a
      0000EA 78 28            [12]  525 	mov	r0,#_ID
      0000EC E6               [12]  526 	mov	a,@r0
      0000ED 24 24            [12]  527 	add	a,#_bitmap
      0000EF F8               [12]  528 	mov	r0,a
      0000F0 76 FF            [12]  529 	mov	@r0,#0xFF
      0000F2 12 02 BB         [24]  530 	lcall	_ThreadYield
      0000F5                        531 00104$:
                                    532 ;	testpreempt.c:39: SBUF = buffer[b_tail];
      0000F5 78 3C            [12]  533 	mov	r0,#_b_tail
      0000F7 E6               [12]  534 	mov	a,@r0
      0000F8 24 30            [12]  535 	add	a,#_buffer
      0000FA F9               [12]  536 	mov	r1,a
      0000FB 87 99            [24]  537 	mov	_SBUF,@r1
                                    538 ;	testpreempt.c:40: SemaphoreSignal(mutex,m_tail);
      0000FD 78 35            [12]  539 	mov	r0,#_mutex
      0000FF 06               [12]  540 	inc	@r0
      000100 78 35            [12]  541 	mov	r0,#_mutex
      000102 C3               [12]  542 	clr	c
      000103 74 80            [12]  543 	mov	a,#(0x00 ^ 0x80)
      000105 86 F0            [24]  544 	mov	b,@r0
      000107 63 F0 80         [24]  545 	xrl	b,#0x80
      00010A 95 F0            [12]  546 	subb	a,b
      00010C 40 0B            [24]  547 	jc	00106$
      00010E A9 38            [24]  548 	mov	r1,_m_tail
      000110 E7               [12]  549 	mov	a,@r1
      000111 FF               [12]  550 	mov	r7,a
      000112 24 24            [12]  551 	add	a,#_bitmap
      000114 F8               [12]  552 	mov	r0,a
      000115 76 01            [12]  553 	mov	@r0,#0x01
      000117 15 38            [12]  554 	dec	_m_tail
      000119                        555 00106$:
                                    556 ;	testpreempt.c:41: SemaphoreSignal(empty,e_tail);
      000119 78 37            [12]  557 	mov	r0,#_empty
      00011B 06               [12]  558 	inc	@r0
      00011C 78 37            [12]  559 	mov	r0,#_empty
      00011E C3               [12]  560 	clr	c
      00011F 74 80            [12]  561 	mov	a,#(0x00 ^ 0x80)
      000121 86 F0            [24]  562 	mov	b,@r0
      000123 63 F0 80         [24]  563 	xrl	b,#0x80
      000126 95 F0            [12]  564 	subb	a,b
      000128 40 0B            [24]  565 	jc	00108$
      00012A A9 3A            [24]  566 	mov	r1,_e_tail
      00012C E7               [12]  567 	mov	a,@r1
      00012D FF               [12]  568 	mov	r7,a
      00012E 24 24            [12]  569 	add	a,#_bitmap
      000130 F8               [12]  570 	mov	r0,a
      000131 76 01            [12]  571 	mov	@r0,#0x01
      000133 15 3A            [12]  572 	dec	_e_tail
      000135                        573 00108$:
                                    574 ;	testpreempt.c:42: if(b_tail==2) b_tail=0;
      000135 78 3C            [12]  575 	mov	r0,#_b_tail
      000137 B6 02 06         [24]  576 	cjne	@r0,#0x02,00110$
      00013A 78 3C            [12]  577 	mov	r0,#_b_tail
      00013C 76 00            [12]  578 	mov	@r0,#0x00
      00013E 80 03            [24]  579 	sjmp	00112$
      000140                        580 00110$:
                                    581 ;	testpreempt.c:43: else b_tail++;
      000140 78 3C            [12]  582 	mov	r0,#_b_tail
      000142 06               [12]  583 	inc	@r0
                                    584 ;	testpreempt.c:44: while (!TI) { }
      000143                        585 00112$:
                                    586 ;	testpreempt.c:45: TI = 0;
      000143 10 99 02         [24]  587 	jbc	_TI,00150$
      000146 80 FB            [24]  588 	sjmp	00112$
      000148                        589 00150$:
      000148 02 00 BD         [24]  590 	ljmp	00116$
                                    591 ;------------------------------------------------------------
                                    592 ;Allocation info for local variables in function 'main'
                                    593 ;------------------------------------------------------------
                                    594 ;	testpreempt.c:49: void main(void) {
                                    595 ;	-----------------------------------------
                                    596 ;	 function main
                                    597 ;	-----------------------------------------
      00014B                        598 _main:
                                    599 ;	testpreempt.c:50: buffer[0] = buffer[1] = buffer[2] = 0;
      00014B 78 32            [12]  600 	mov	r0,#(_buffer + 0x0002)
      00014D 76 00            [12]  601 	mov	@r0,#0x00
      00014F 78 31            [12]  602 	mov	r0,#(_buffer + 0x0001)
      000151 76 00            [12]  603 	mov	@r0,#0x00
      000153 78 30            [12]  604 	mov	r0,#_buffer
      000155 76 00            [12]  605 	mov	@r0,#0x00
                                    606 ;	testpreempt.c:51: c2 = '1';
      000157 78 34            [12]  607 	mov	r0,#_c2
      000159 76 31            [12]  608 	mov	@r0,#0x31
                                    609 ;	testpreempt.c:52: b_head = b_tail = 0;
      00015B 78 3C            [12]  610 	mov	r0,#_b_tail
      00015D 76 00            [12]  611 	mov	@r0,#0x00
      00015F 78 3B            [12]  612 	mov	r0,#_b_head
      000161 76 00            [12]  613 	mov	@r0,#0x00
                                    614 ;	testpreempt.c:54: SemaphoreCreate(mutex, 1);
      000163 78 35            [12]  615 	mov	r0,#_mutex
      000165 76 01            [12]  616 	mov	@r0,#0x01
                                    617 ;	testpreempt.c:55: SemaphoreCreate(full, 0);
      000167 78 36            [12]  618 	mov	r0,#_full
      000169 76 00            [12]  619 	mov	@r0,#0x00
                                    620 ;	testpreempt.c:56: SemaphoreCreate(empty, 3);
      00016B 78 37            [12]  621 	mov	r0,#_empty
      00016D 76 03            [12]  622 	mov	@r0,#0x03
                                    623 ;	testpreempt.c:61: __endasm;
      00016F 75 38 5C         [24]  624 	mov _m_tail,#0x5C
      000172 75 39 6C         [24]  625 	mov _f_tail,#0x6C
      000175 75 3A 7C         [24]  626 	mov _e_tail,#0x7C
                                    627 ;	testpreempt.c:63: ThreadCreate(Producer);
      000178 90 00 14         [24]  628 	mov	dptr,#_Producer
      00017B 12 02 44         [24]  629 	lcall	_ThreadCreate
                                    630 ;	testpreempt.c:64: ThreadCreate(Consumer);
      00017E 90 00 B2         [24]  631 	mov	dptr,#_Consumer
      000181 12 02 44         [24]  632 	lcall	_ThreadCreate
                                    633 ;	testpreempt.c:65: ThreadExit();
      000184 02 03 0A         [24]  634 	ljmp	_ThreadExit
                                    635 ;------------------------------------------------------------
                                    636 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    637 ;------------------------------------------------------------
                                    638 ;	testpreempt.c:68: void _sdcc_gsinit_startup(void) {
                                    639 ;	-----------------------------------------
                                    640 ;	 function _sdcc_gsinit_startup
                                    641 ;	-----------------------------------------
      000187                        642 __sdcc_gsinit_startup:
                                    643 ;	testpreempt.c:71: __endasm;
      000187 02 02 03         [24]  644 	ljmp _Bootstrap
      00018A 22               [24]  645 	ret
                                    646 ;------------------------------------------------------------
                                    647 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    648 ;------------------------------------------------------------
                                    649 ;	testpreempt.c:74: void _mcs51_genRAMCLEAR(void) {}
                                    650 ;	-----------------------------------------
                                    651 ;	 function _mcs51_genRAMCLEAR
                                    652 ;	-----------------------------------------
      00018B                        653 __mcs51_genRAMCLEAR:
      00018B 22               [24]  654 	ret
                                    655 ;------------------------------------------------------------
                                    656 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    657 ;------------------------------------------------------------
                                    658 ;	testpreempt.c:75: void _mcs51_genXINIT(void) {}
                                    659 ;	-----------------------------------------
                                    660 ;	 function _mcs51_genXINIT
                                    661 ;	-----------------------------------------
      00018C                        662 __mcs51_genXINIT:
      00018C 22               [24]  663 	ret
                                    664 ;------------------------------------------------------------
                                    665 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    666 ;------------------------------------------------------------
                                    667 ;	testpreempt.c:76: void _mcs51_genXRAMCLEAR(void) {}
                                    668 ;	-----------------------------------------
                                    669 ;	 function _mcs51_genXRAMCLEAR
                                    670 ;	-----------------------------------------
      00018D                        671 __mcs51_genXRAMCLEAR:
      00018D 22               [24]  672 	ret
                                    673 ;------------------------------------------------------------
                                    674 ;Allocation info for local variables in function 'timer0_ISR'
                                    675 ;------------------------------------------------------------
                                    676 ;	testpreempt.c:77: void timer0_ISR(void) __interrupt(1) {
                                    677 ;	-----------------------------------------
                                    678 ;	 function timer0_ISR
                                    679 ;	-----------------------------------------
      00018E                        680 _timer0_ISR:
                                    681 ;	testpreempt.c:80: __endasm;
      00018E 02 01 C8         [24]  682 	ljmp _myTimer0Handler
      000191 32               [24]  683 	reti
                                    684 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    685 ;	eliminated unneeded push/pop psw
                                    686 ;	eliminated unneeded push/pop dpl
                                    687 ;	eliminated unneeded push/pop dph
                                    688 ;	eliminated unneeded push/pop b
                                    689 ;	eliminated unneeded push/pop acc
                                    690 	.area CSEG    (CODE)
                                    691 	.area CONST   (CODE)
                                    692 	.area XINIT   (CODE)
                                    693 	.area CABS    (ABS,CODE)
