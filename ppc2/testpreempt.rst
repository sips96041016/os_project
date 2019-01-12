                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Sat Jan 12 23:57:59 2019
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
      000000 02 00 79         [24]  293 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  294 	reti
      000004                        295 	.ds	7
      00000B 02 00 80         [24]  296 	ljmp	_timer0_ISR
                                    297 ;--------------------------------------------------------
                                    298 ; global & static initialisations
                                    299 ;--------------------------------------------------------
                                    300 	.area HOME    (CODE)
                                    301 	.area GSINIT  (CODE)
                                    302 	.area GSFINAL (CODE)
                                    303 	.area GSINIT  (CODE)
                                    304 	.globl __sdcc_gsinit_startup
                                    305 	.globl __sdcc_program_startup
                                    306 	.globl __start__stack
                                    307 	.globl __mcs51_genXINIT
                                    308 	.globl __mcs51_genXRAMCLEAR
                                    309 	.globl __mcs51_genRAMCLEAR
                                    310 	.area GSFINAL (CODE)
      000011 02 00 0E         [24]  311 	ljmp	__sdcc_program_startup
                                    312 ;--------------------------------------------------------
                                    313 ; Home
                                    314 ;--------------------------------------------------------
                                    315 	.area HOME    (CODE)
                                    316 	.area HOME    (CODE)
      00000E                        317 __sdcc_program_startup:
      00000E 02 00 5A         [24]  318 	ljmp	_main
                                    319 ;	return from main will return to caller
                                    320 ;--------------------------------------------------------
                                    321 ; code
                                    322 ;--------------------------------------------------------
                                    323 	.area CSEG    (CODE)
                                    324 ;------------------------------------------------------------
                                    325 ;Allocation info for local variables in function 'Producer'
                                    326 ;------------------------------------------------------------
                                    327 ;	testpreempt.c:8: void Producer(void) {
                                    328 ;	-----------------------------------------
                                    329 ;	 function Producer
                                    330 ;	-----------------------------------------
      000014                        331 _Producer:
                           000007   332 	ar7 = 0x07
                           000006   333 	ar6 = 0x06
                           000005   334 	ar5 = 0x05
                           000004   335 	ar4 = 0x04
                           000003   336 	ar3 = 0x03
                           000002   337 	ar2 = 0x02
                           000001   338 	ar1 = 0x01
                           000000   339 	ar0 = 0x00
                                    340 ;	testpreempt.c:9: c1 = 'A';
      000014 78 33            [12]  341 	mov	r0,#_c1
      000016 76 41            [12]  342 	mov	@r0,#0x41
                                    343 ;	testpreempt.c:11: while(buffer[0]) {}
      000018                        344 00101$:
      000018 78 30            [12]  345 	mov	r0,#_buffer
      00001A E6               [12]  346 	mov	a,@r0
      00001B 70 FB            [24]  347 	jnz	00101$
                                    348 ;	testpreempt.c:12: EA = 0;
      00001D C2 AF            [12]  349 	clr	_EA
                                    350 ;	testpreempt.c:13: buffer[0] = c1;
      00001F 78 30            [12]  351 	mov	r0,#_buffer
      000021 79 33            [12]  352 	mov	r1,#_c1
      000023 E7               [12]  353 	mov	a,@r1
      000024 F6               [12]  354 	mov	@r0,a
                                    355 ;	testpreempt.c:14: EA = 1;
      000025 D2 AF            [12]  356 	setb	_EA
                                    357 ;	testpreempt.c:15: if(c1=='Z') c1 = 'A';
      000027 78 33            [12]  358 	mov	r0,#_c1
      000029 B6 5A 06         [24]  359 	cjne	@r0,#0x5A,00105$
      00002C 78 33            [12]  360 	mov	r0,#_c1
      00002E 76 41            [12]  361 	mov	@r0,#0x41
      000030 80 E6            [24]  362 	sjmp	00101$
      000032                        363 00105$:
                                    364 ;	testpreempt.c:16: else c1++;
      000032 78 33            [12]  365 	mov	r0,#_c1
      000034 06               [12]  366 	inc	@r0
      000035 80 E1            [24]  367 	sjmp	00101$
                                    368 ;------------------------------------------------------------
                                    369 ;Allocation info for local variables in function 'Consumer'
                                    370 ;------------------------------------------------------------
                                    371 ;	testpreempt.c:20: void Consumer(void) {
                                    372 ;	-----------------------------------------
                                    373 ;	 function Consumer
                                    374 ;	-----------------------------------------
      000037                        375 _Consumer:
                                    376 ;	testpreempt.c:21: TMOD |= 0x20;
      000037 43 89 20         [24]  377 	orl	_TMOD,#0x20
                                    378 ;	testpreempt.c:22: TH1 = -6;
      00003A 75 8D FA         [24]  379 	mov	_TH1,#0xFA
                                    380 ;	testpreempt.c:23: SCON = 0x50;
      00003D 75 98 50         [24]  381 	mov	_SCON,#0x50
                                    382 ;	testpreempt.c:24: TR1 = 1;
      000040 D2 8E            [12]  383 	setb	_TR1
                                    384 ;	testpreempt.c:26: while(!buffer[0]) {}
      000042                        385 00101$:
      000042 78 30            [12]  386 	mov	r0,#_buffer
      000044 E6               [12]  387 	mov	a,@r0
      000045 60 FB            [24]  388 	jz	00101$
                                    389 ;	testpreempt.c:27: EA = 0;
      000047 C2 AF            [12]  390 	clr	_EA
                                    391 ;	testpreempt.c:28: SBUF = buffer[0];
      000049 78 30            [12]  392 	mov	r0,#_buffer
      00004B 86 99            [24]  393 	mov	_SBUF,@r0
                                    394 ;	testpreempt.c:29: buffer[0] = 0;
      00004D 78 30            [12]  395 	mov	r0,#_buffer
      00004F 76 00            [12]  396 	mov	@r0,#0x00
                                    397 ;	testpreempt.c:30: EA = 1;
      000051 D2 AF            [12]  398 	setb	_EA
                                    399 ;	testpreempt.c:31: while (!TI) { }
      000053                        400 00104$:
                                    401 ;	testpreempt.c:32: TI = 0;
      000053 10 99 02         [24]  402 	jbc	_TI,00125$
      000056 80 FB            [24]  403 	sjmp	00104$
      000058                        404 00125$:
      000058 80 E8            [24]  405 	sjmp	00101$
                                    406 ;------------------------------------------------------------
                                    407 ;Allocation info for local variables in function 'main'
                                    408 ;------------------------------------------------------------
                                    409 ;	testpreempt.c:36: void main(void) {
                                    410 ;	-----------------------------------------
                                    411 ;	 function main
                                    412 ;	-----------------------------------------
      00005A                        413 _main:
                                    414 ;	testpreempt.c:37: buffer[0] = buffer[1] = buffer[2] = 0;
      00005A 78 32            [12]  415 	mov	r0,#(_buffer + 0x0002)
      00005C 76 00            [12]  416 	mov	@r0,#0x00
      00005E 78 31            [12]  417 	mov	r0,#(_buffer + 0x0001)
      000060 76 00            [12]  418 	mov	@r0,#0x00
      000062 78 30            [12]  419 	mov	r0,#_buffer
      000064 76 00            [12]  420 	mov	@r0,#0x00
                                    421 ;	testpreempt.c:38: c2 = '1';
      000066 78 34            [12]  422 	mov	r0,#_c2
      000068 76 31            [12]  423 	mov	@r0,#0x31
                                    424 ;	testpreempt.c:40: ThreadCreate(Producer);
      00006A 90 00 14         [24]  425 	mov	dptr,#_Producer
      00006D 12 01 36         [24]  426 	lcall	_ThreadCreate
                                    427 ;	testpreempt.c:41: ThreadCreate(Consumer);
      000070 90 00 37         [24]  428 	mov	dptr,#_Consumer
      000073 12 01 36         [24]  429 	lcall	_ThreadCreate
                                    430 ;	testpreempt.c:42: ThreadExit();
      000076 02 01 F0         [24]  431 	ljmp	_ThreadExit
                                    432 ;------------------------------------------------------------
                                    433 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    434 ;------------------------------------------------------------
                                    435 ;	testpreempt.c:45: void _sdcc_gsinit_startup(void) {
                                    436 ;	-----------------------------------------
                                    437 ;	 function _sdcc_gsinit_startup
                                    438 ;	-----------------------------------------
      000079                        439 __sdcc_gsinit_startup:
                                    440 ;	testpreempt.c:48: __endasm;
      000079 02 00 F5         [24]  441 	ljmp _Bootstrap
      00007C 22               [24]  442 	ret
                                    443 ;------------------------------------------------------------
                                    444 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    445 ;------------------------------------------------------------
                                    446 ;	testpreempt.c:51: void _mcs51_genRAMCLEAR(void) {}
                                    447 ;	-----------------------------------------
                                    448 ;	 function _mcs51_genRAMCLEAR
                                    449 ;	-----------------------------------------
      00007D                        450 __mcs51_genRAMCLEAR:
      00007D 22               [24]  451 	ret
                                    452 ;------------------------------------------------------------
                                    453 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    454 ;------------------------------------------------------------
                                    455 ;	testpreempt.c:52: void _mcs51_genXINIT(void) {}
                                    456 ;	-----------------------------------------
                                    457 ;	 function _mcs51_genXINIT
                                    458 ;	-----------------------------------------
      00007E                        459 __mcs51_genXINIT:
      00007E 22               [24]  460 	ret
                                    461 ;------------------------------------------------------------
                                    462 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    463 ;------------------------------------------------------------
                                    464 ;	testpreempt.c:53: void _mcs51_genXRAMCLEAR(void) {}
                                    465 ;	-----------------------------------------
                                    466 ;	 function _mcs51_genXRAMCLEAR
                                    467 ;	-----------------------------------------
      00007F                        468 __mcs51_genXRAMCLEAR:
      00007F 22               [24]  469 	ret
                                    470 ;------------------------------------------------------------
                                    471 ;Allocation info for local variables in function 'timer0_ISR'
                                    472 ;------------------------------------------------------------
                                    473 ;	testpreempt.c:54: void timer0_ISR(void) __interrupt(1) {
                                    474 ;	-----------------------------------------
                                    475 ;	 function timer0_ISR
                                    476 ;	-----------------------------------------
      000080                        477 _timer0_ISR:
                                    478 ;	testpreempt.c:57: __endasm;
      000080 02 00 BA         [24]  479 	ljmp _myTimer0Handler
      000083 32               [24]  480 	reti
                                    481 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    482 ;	eliminated unneeded push/pop psw
                                    483 ;	eliminated unneeded push/pop dpl
                                    484 ;	eliminated unneeded push/pop dph
                                    485 ;	eliminated unneeded push/pop b
                                    486 ;	eliminated unneeded push/pop acc
                                    487 	.area CSEG    (CODE)
                                    488 	.area CONST   (CODE)
                                    489 	.area XINIT   (CODE)
                                    490 	.area CABS    (ABS,CODE)
