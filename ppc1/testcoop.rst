                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Sat Jan 12 21:58:16 2019
                                      5 ;--------------------------------------------------------
                                      6 	.module testcoop
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl __mcs51_genXRAMCLEAR
                                     13 	.globl __mcs51_genXINIT
                                     14 	.globl __mcs51_genRAMCLEAR
                                     15 	.globl __sdcc_gsinit_startup
                                     16 	.globl _main
                                     17 	.globl _Consumer
                                     18 	.globl _Producer
                                     19 	.globl _ThreadExit
                                     20 	.globl _ThreadYield
                                     21 	.globl _ThreadCreate
                                     22 	.globl _CY
                                     23 	.globl _AC
                                     24 	.globl _F0
                                     25 	.globl _RS1
                                     26 	.globl _RS0
                                     27 	.globl _OV
                                     28 	.globl _F1
                                     29 	.globl _P
                                     30 	.globl _PS
                                     31 	.globl _PT1
                                     32 	.globl _PX1
                                     33 	.globl _PT0
                                     34 	.globl _PX0
                                     35 	.globl _RD
                                     36 	.globl _WR
                                     37 	.globl _T1
                                     38 	.globl _T0
                                     39 	.globl _INT1
                                     40 	.globl _INT0
                                     41 	.globl _TXD
                                     42 	.globl _RXD
                                     43 	.globl _P3_7
                                     44 	.globl _P3_6
                                     45 	.globl _P3_5
                                     46 	.globl _P3_4
                                     47 	.globl _P3_3
                                     48 	.globl _P3_2
                                     49 	.globl _P3_1
                                     50 	.globl _P3_0
                                     51 	.globl _EA
                                     52 	.globl _ES
                                     53 	.globl _ET1
                                     54 	.globl _EX1
                                     55 	.globl _ET0
                                     56 	.globl _EX0
                                     57 	.globl _P2_7
                                     58 	.globl _P2_6
                                     59 	.globl _P2_5
                                     60 	.globl _P2_4
                                     61 	.globl _P2_3
                                     62 	.globl _P2_2
                                     63 	.globl _P2_1
                                     64 	.globl _P2_0
                                     65 	.globl _SM0
                                     66 	.globl _SM1
                                     67 	.globl _SM2
                                     68 	.globl _REN
                                     69 	.globl _TB8
                                     70 	.globl _RB8
                                     71 	.globl _TI
                                     72 	.globl _RI
                                     73 	.globl _P1_7
                                     74 	.globl _P1_6
                                     75 	.globl _P1_5
                                     76 	.globl _P1_4
                                     77 	.globl _P1_3
                                     78 	.globl _P1_2
                                     79 	.globl _P1_1
                                     80 	.globl _P1_0
                                     81 	.globl _TF1
                                     82 	.globl _TR1
                                     83 	.globl _TF0
                                     84 	.globl _TR0
                                     85 	.globl _IE1
                                     86 	.globl _IT1
                                     87 	.globl _IE0
                                     88 	.globl _IT0
                                     89 	.globl _P0_7
                                     90 	.globl _P0_6
                                     91 	.globl _P0_5
                                     92 	.globl _P0_4
                                     93 	.globl _P0_3
                                     94 	.globl _P0_2
                                     95 	.globl _P0_1
                                     96 	.globl _P0_0
                                     97 	.globl _B
                                     98 	.globl _ACC
                                     99 	.globl _PSW
                                    100 	.globl _IP
                                    101 	.globl _P3
                                    102 	.globl _IE
                                    103 	.globl _P2
                                    104 	.globl _SBUF
                                    105 	.globl _SCON
                                    106 	.globl _P1
                                    107 	.globl _TH1
                                    108 	.globl _TH0
                                    109 	.globl _TL1
                                    110 	.globl _TL0
                                    111 	.globl _TMOD
                                    112 	.globl _TCON
                                    113 	.globl _PCON
                                    114 	.globl _DPH
                                    115 	.globl _DPL
                                    116 	.globl _SP
                                    117 	.globl _P0
                                    118 	.globl _c2
                                    119 	.globl _c1
                                    120 	.globl _buffer
                                    121 ;--------------------------------------------------------
                                    122 ; special function registers
                                    123 ;--------------------------------------------------------
                                    124 	.area RSEG    (ABS,DATA)
      000000                        125 	.org 0x0000
                           000080   126 _P0	=	0x0080
                           000081   127 _SP	=	0x0081
                           000082   128 _DPL	=	0x0082
                           000083   129 _DPH	=	0x0083
                           000087   130 _PCON	=	0x0087
                           000088   131 _TCON	=	0x0088
                           000089   132 _TMOD	=	0x0089
                           00008A   133 _TL0	=	0x008a
                           00008B   134 _TL1	=	0x008b
                           00008C   135 _TH0	=	0x008c
                           00008D   136 _TH1	=	0x008d
                           000090   137 _P1	=	0x0090
                           000098   138 _SCON	=	0x0098
                           000099   139 _SBUF	=	0x0099
                           0000A0   140 _P2	=	0x00a0
                           0000A8   141 _IE	=	0x00a8
                           0000B0   142 _P3	=	0x00b0
                           0000B8   143 _IP	=	0x00b8
                           0000D0   144 _PSW	=	0x00d0
                           0000E0   145 _ACC	=	0x00e0
                           0000F0   146 _B	=	0x00f0
                                    147 ;--------------------------------------------------------
                                    148 ; special function bits
                                    149 ;--------------------------------------------------------
                                    150 	.area RSEG    (ABS,DATA)
      000000                        151 	.org 0x0000
                           000080   152 _P0_0	=	0x0080
                           000081   153 _P0_1	=	0x0081
                           000082   154 _P0_2	=	0x0082
                           000083   155 _P0_3	=	0x0083
                           000084   156 _P0_4	=	0x0084
                           000085   157 _P0_5	=	0x0085
                           000086   158 _P0_6	=	0x0086
                           000087   159 _P0_7	=	0x0087
                           000088   160 _IT0	=	0x0088
                           000089   161 _IE0	=	0x0089
                           00008A   162 _IT1	=	0x008a
                           00008B   163 _IE1	=	0x008b
                           00008C   164 _TR0	=	0x008c
                           00008D   165 _TF0	=	0x008d
                           00008E   166 _TR1	=	0x008e
                           00008F   167 _TF1	=	0x008f
                           000090   168 _P1_0	=	0x0090
                           000091   169 _P1_1	=	0x0091
                           000092   170 _P1_2	=	0x0092
                           000093   171 _P1_3	=	0x0093
                           000094   172 _P1_4	=	0x0094
                           000095   173 _P1_5	=	0x0095
                           000096   174 _P1_6	=	0x0096
                           000097   175 _P1_7	=	0x0097
                           000098   176 _RI	=	0x0098
                           000099   177 _TI	=	0x0099
                           00009A   178 _RB8	=	0x009a
                           00009B   179 _TB8	=	0x009b
                           00009C   180 _REN	=	0x009c
                           00009D   181 _SM2	=	0x009d
                           00009E   182 _SM1	=	0x009e
                           00009F   183 _SM0	=	0x009f
                           0000A0   184 _P2_0	=	0x00a0
                           0000A1   185 _P2_1	=	0x00a1
                           0000A2   186 _P2_2	=	0x00a2
                           0000A3   187 _P2_3	=	0x00a3
                           0000A4   188 _P2_4	=	0x00a4
                           0000A5   189 _P2_5	=	0x00a5
                           0000A6   190 _P2_6	=	0x00a6
                           0000A7   191 _P2_7	=	0x00a7
                           0000A8   192 _EX0	=	0x00a8
                           0000A9   193 _ET0	=	0x00a9
                           0000AA   194 _EX1	=	0x00aa
                           0000AB   195 _ET1	=	0x00ab
                           0000AC   196 _ES	=	0x00ac
                           0000AF   197 _EA	=	0x00af
                           0000B0   198 _P3_0	=	0x00b0
                           0000B1   199 _P3_1	=	0x00b1
                           0000B2   200 _P3_2	=	0x00b2
                           0000B3   201 _P3_3	=	0x00b3
                           0000B4   202 _P3_4	=	0x00b4
                           0000B5   203 _P3_5	=	0x00b5
                           0000B6   204 _P3_6	=	0x00b6
                           0000B7   205 _P3_7	=	0x00b7
                           0000B0   206 _RXD	=	0x00b0
                           0000B1   207 _TXD	=	0x00b1
                           0000B2   208 _INT0	=	0x00b2
                           0000B3   209 _INT1	=	0x00b3
                           0000B4   210 _T0	=	0x00b4
                           0000B5   211 _T1	=	0x00b5
                           0000B6   212 _WR	=	0x00b6
                           0000B7   213 _RD	=	0x00b7
                           0000B8   214 _PX0	=	0x00b8
                           0000B9   215 _PT0	=	0x00b9
                           0000BA   216 _PX1	=	0x00ba
                           0000BB   217 _PT1	=	0x00bb
                           0000BC   218 _PS	=	0x00bc
                           0000D0   219 _P	=	0x00d0
                           0000D1   220 _F1	=	0x00d1
                           0000D2   221 _OV	=	0x00d2
                           0000D3   222 _RS0	=	0x00d3
                           0000D4   223 _RS1	=	0x00d4
                           0000D5   224 _F0	=	0x00d5
                           0000D6   225 _AC	=	0x00d6
                           0000D7   226 _CY	=	0x00d7
                                    227 ;--------------------------------------------------------
                                    228 ; overlayable register banks
                                    229 ;--------------------------------------------------------
                                    230 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        231 	.ds 8
                                    232 ;--------------------------------------------------------
                                    233 ; internal ram data
                                    234 ;--------------------------------------------------------
                                    235 	.area DSEG    (DATA)
                                    236 ;--------------------------------------------------------
                                    237 ; overlayable items in internal ram 
                                    238 ;--------------------------------------------------------
                                    239 ;--------------------------------------------------------
                                    240 ; Stack segment in internal ram 
                                    241 ;--------------------------------------------------------
                                    242 	.area	SSEG
      000008                        243 __start__stack:
      000008                        244 	.ds	1
                                    245 
                                    246 ;--------------------------------------------------------
                                    247 ; indirectly addressable internal ram data
                                    248 ;--------------------------------------------------------
                                    249 	.area ISEG    (DATA)
                           000030   250 _buffer	=	0x0030
                           000033   251 _c1	=	0x0033
                           000034   252 _c2	=	0x0034
                                    253 ;--------------------------------------------------------
                                    254 ; absolute internal ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area IABS    (ABS,DATA)
                                    257 	.area IABS    (ABS,DATA)
                                    258 ;--------------------------------------------------------
                                    259 ; bit data
                                    260 ;--------------------------------------------------------
                                    261 	.area BSEG    (BIT)
                                    262 ;--------------------------------------------------------
                                    263 ; paged external ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area PSEG    (PAG,XDATA)
                                    266 ;--------------------------------------------------------
                                    267 ; external ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area XSEG    (XDATA)
                                    270 ;--------------------------------------------------------
                                    271 ; absolute external ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area XABS    (ABS,XDATA)
                                    274 ;--------------------------------------------------------
                                    275 ; external initialized ram data
                                    276 ;--------------------------------------------------------
                                    277 	.area XISEG   (XDATA)
                                    278 	.area HOME    (CODE)
                                    279 	.area GSINIT0 (CODE)
                                    280 	.area GSINIT1 (CODE)
                                    281 	.area GSINIT2 (CODE)
                                    282 	.area GSINIT3 (CODE)
                                    283 	.area GSINIT4 (CODE)
                                    284 	.area GSINIT5 (CODE)
                                    285 	.area GSINIT  (CODE)
                                    286 	.area GSFINAL (CODE)
                                    287 	.area CSEG    (CODE)
                                    288 ;--------------------------------------------------------
                                    289 ; interrupt vector 
                                    290 ;--------------------------------------------------------
                                    291 	.area HOME    (CODE)
      000000                        292 __interrupt_vect:
      000000 02 00 6C         [24]  293 	ljmp	__sdcc_gsinit_startup
                                    294 ;--------------------------------------------------------
                                    295 ; global & static initialisations
                                    296 ;--------------------------------------------------------
                                    297 	.area HOME    (CODE)
                                    298 	.area GSINIT  (CODE)
                                    299 	.area GSFINAL (CODE)
                                    300 	.area GSINIT  (CODE)
                                    301 	.globl __sdcc_gsinit_startup
                                    302 	.globl __sdcc_program_startup
                                    303 	.globl __start__stack
                                    304 	.globl __mcs51_genXINIT
                                    305 	.globl __mcs51_genXRAMCLEAR
                                    306 	.globl __mcs51_genRAMCLEAR
                                    307 	.area GSFINAL (CODE)
      000006 02 00 03         [24]  308 	ljmp	__sdcc_program_startup
                                    309 ;--------------------------------------------------------
                                    310 ; Home
                                    311 ;--------------------------------------------------------
                                    312 	.area HOME    (CODE)
                                    313 	.area HOME    (CODE)
      000003                        314 __sdcc_program_startup:
      000003 02 00 4D         [24]  315 	ljmp	_main
                                    316 ;	return from main will return to caller
                                    317 ;--------------------------------------------------------
                                    318 ; code
                                    319 ;--------------------------------------------------------
                                    320 	.area CSEG    (CODE)
                                    321 ;------------------------------------------------------------
                                    322 ;Allocation info for local variables in function 'Producer'
                                    323 ;------------------------------------------------------------
                                    324 ;	testcoop.c:8: void Producer(void) {
                                    325 ;	-----------------------------------------
                                    326 ;	 function Producer
                                    327 ;	-----------------------------------------
      000009                        328 _Producer:
                           000007   329 	ar7 = 0x07
                           000006   330 	ar6 = 0x06
                           000005   331 	ar5 = 0x05
                           000004   332 	ar4 = 0x04
                           000003   333 	ar3 = 0x03
                           000002   334 	ar2 = 0x02
                           000001   335 	ar1 = 0x01
                           000000   336 	ar0 = 0x00
                                    337 ;	testcoop.c:9: c1 = 'A';
      000009 78 33            [12]  338 	mov	r0,#_c1
      00000B 76 41            [12]  339 	mov	@r0,#0x41
                                    340 ;	testcoop.c:10: while (1) {
      00000D                        341 00107$:
                                    342 ;	testcoop.c:11: if(buffer[0]!=0) ThreadYield();
      00000D 78 30            [12]  343 	mov	r0,#_buffer
      00000F E6               [12]  344 	mov	a,@r0
      000010 60 03            [24]  345 	jz	00102$
      000012 12 01 08         [24]  346 	lcall	_ThreadYield
      000015                        347 00102$:
                                    348 ;	testcoop.c:12: buffer[0] = c1;
      000015 78 30            [12]  349 	mov	r0,#_buffer
      000017 79 33            [12]  350 	mov	r1,#_c1
      000019 E7               [12]  351 	mov	a,@r1
      00001A F6               [12]  352 	mov	@r0,a
                                    353 ;	testcoop.c:13: if(c1=='Z') c1 = 'A';
      00001B 78 33            [12]  354 	mov	r0,#_c1
      00001D B6 5A 06         [24]  355 	cjne	@r0,#0x5A,00104$
      000020 78 33            [12]  356 	mov	r0,#_c1
      000022 76 41            [12]  357 	mov	@r0,#0x41
      000024 80 E7            [24]  358 	sjmp	00107$
      000026                        359 00104$:
                                    360 ;	testcoop.c:14: else c1++;
      000026 78 33            [12]  361 	mov	r0,#_c1
      000028 06               [12]  362 	inc	@r0
      000029 80 E2            [24]  363 	sjmp	00107$
                                    364 ;------------------------------------------------------------
                                    365 ;Allocation info for local variables in function 'Consumer'
                                    366 ;------------------------------------------------------------
                                    367 ;	testcoop.c:18: void Consumer(void) {
                                    368 ;	-----------------------------------------
                                    369 ;	 function Consumer
                                    370 ;	-----------------------------------------
      00002B                        371 _Consumer:
                                    372 ;	testcoop.c:19: TMOD = 0x20;
      00002B 75 89 20         [24]  373 	mov	_TMOD,#0x20
                                    374 ;	testcoop.c:20: TH1 = -6;
      00002E 75 8D FA         [24]  375 	mov	_TH1,#0xFA
                                    376 ;	testcoop.c:21: SCON = 0x50;
      000031 75 98 50         [24]  377 	mov	_SCON,#0x50
                                    378 ;	testcoop.c:22: TR1 = 1;
      000034 D2 8E            [12]  379 	setb	_TR1
                                    380 ;	testcoop.c:23: while (1) {
      000036                        381 00107$:
                                    382 ;	testcoop.c:24: if(buffer[0]==0) ThreadYield();
      000036 78 30            [12]  383 	mov	r0,#_buffer
      000038 E6               [12]  384 	mov	a,@r0
      000039 70 03            [24]  385 	jnz	00102$
      00003B 12 01 08         [24]  386 	lcall	_ThreadYield
      00003E                        387 00102$:
                                    388 ;	testcoop.c:25: SBUF = buffer[0];
      00003E 78 30            [12]  389 	mov	r0,#_buffer
      000040 86 99            [24]  390 	mov	_SBUF,@r0
                                    391 ;	testcoop.c:26: buffer[0] = 0;
      000042 78 30            [12]  392 	mov	r0,#_buffer
      000044 76 00            [12]  393 	mov	@r0,#0x00
                                    394 ;	testcoop.c:27: while (!TI) { }
      000046                        395 00103$:
                                    396 ;	testcoop.c:28: TI = 0;
      000046 10 99 02         [24]  397 	jbc	_TI,00124$
      000049 80 FB            [24]  398 	sjmp	00103$
      00004B                        399 00124$:
      00004B 80 E9            [24]  400 	sjmp	00107$
                                    401 ;------------------------------------------------------------
                                    402 ;Allocation info for local variables in function 'main'
                                    403 ;------------------------------------------------------------
                                    404 ;	testcoop.c:32: void main(void) {
                                    405 ;	-----------------------------------------
                                    406 ;	 function main
                                    407 ;	-----------------------------------------
      00004D                        408 _main:
                                    409 ;	testcoop.c:33: buffer[0] = buffer[1] = buffer[2] = 0;
      00004D 78 32            [12]  410 	mov	r0,#(_buffer + 0x0002)
      00004F 76 00            [12]  411 	mov	@r0,#0x00
      000051 78 31            [12]  412 	mov	r0,#(_buffer + 0x0001)
      000053 76 00            [12]  413 	mov	@r0,#0x00
      000055 78 30            [12]  414 	mov	r0,#_buffer
      000057 76 00            [12]  415 	mov	@r0,#0x00
                                    416 ;	testcoop.c:34: c2 = '1';
      000059 78 34            [12]  417 	mov	r0,#_c2
      00005B 76 31            [12]  418 	mov	@r0,#0x31
                                    419 ;	testcoop.c:36: ThreadCreate(Producer);
      00005D 90 00 09         [24]  420 	mov	dptr,#_Producer
      000060 12 00 A1         [24]  421 	lcall	_ThreadCreate
                                    422 ;	testcoop.c:37: ThreadCreate(Consumer);
      000063 90 00 2B         [24]  423 	mov	dptr,#_Consumer
      000066 12 00 A1         [24]  424 	lcall	_ThreadCreate
                                    425 ;	testcoop.c:38: ThreadExit();
      000069 02 01 57         [24]  426 	ljmp	_ThreadExit
                                    427 ;------------------------------------------------------------
                                    428 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    429 ;------------------------------------------------------------
                                    430 ;	testcoop.c:41: void _sdcc_gsinit_startup(void) {
                                    431 ;	-----------------------------------------
                                    432 ;	 function _sdcc_gsinit_startup
                                    433 ;	-----------------------------------------
      00006C                        434 __sdcc_gsinit_startup:
                                    435 ;	testcoop.c:44: __endasm;
      00006C 02 00 73         [24]  436 	ljmp _Bootstrap
      00006F 22               [24]  437 	ret
                                    438 ;------------------------------------------------------------
                                    439 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    440 ;------------------------------------------------------------
                                    441 ;	testcoop.c:47: void _mcs51_genRAMCLEAR(void) {}
                                    442 ;	-----------------------------------------
                                    443 ;	 function _mcs51_genRAMCLEAR
                                    444 ;	-----------------------------------------
      000070                        445 __mcs51_genRAMCLEAR:
      000070 22               [24]  446 	ret
                                    447 ;------------------------------------------------------------
                                    448 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    449 ;------------------------------------------------------------
                                    450 ;	testcoop.c:48: void _mcs51_genXINIT(void) {}
                                    451 ;	-----------------------------------------
                                    452 ;	 function _mcs51_genXINIT
                                    453 ;	-----------------------------------------
      000071                        454 __mcs51_genXINIT:
      000071 22               [24]  455 	ret
                                    456 ;------------------------------------------------------------
                                    457 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    458 ;------------------------------------------------------------
                                    459 ;	testcoop.c:49: void _mcs51_genXRAMCLEAR(void) {}
                                    460 ;	-----------------------------------------
                                    461 ;	 function _mcs51_genXRAMCLEAR
                                    462 ;	-----------------------------------------
      000072                        463 __mcs51_genXRAMCLEAR:
      000072 22               [24]  464 	ret
                                    465 	.area CSEG    (CODE)
                                    466 	.area CONST   (CODE)
                                    467 	.area XINIT   (CODE)
                                    468 	.area CABS    (ABS,CODE)
