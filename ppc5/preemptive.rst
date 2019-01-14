                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Tue Jan 15 02:58:35 2019
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
                                    112 	.globl _print
                                    113 	.globl _c_temp3
                                    114 	.globl _c_temp2
                                    115 	.globl _flag
                                    116 	.globl _current
                                    117 	.globl _j
                                    118 	.globl _plot
                                    119 	.globl _thread
                                    120 	.globl _mutex
                                    121 	.globl _log
                                    122 	.globl _counter
                                    123 	.globl _time
                                    124 	.globl _D
                                    125 	.globl _i
                                    126 	.globl _temp2
                                    127 	.globl _temp1
                                    128 	.globl _c_temp
                                    129 	.globl _ID
                                    130 	.globl _bitmap
                                    131 	.globl _ssp
                                    132 	.globl _p_tail
                                    133 	.globl _th_tail
                                    134 	.globl _m_tail
                                    135 	.globl _now
                                    136 	.globl _delay
                                    137 	.globl _ThreadCreate
                                    138 	.globl _ThreadYield
                                    139 	.globl _ThreadExit
                                    140 ;--------------------------------------------------------
                                    141 ; special function registers
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0	=	0x0080
                           000081   146 _SP	=	0x0081
                           000082   147 _DPL	=	0x0082
                           000083   148 _DPH	=	0x0083
                           000087   149 _PCON	=	0x0087
                           000088   150 _TCON	=	0x0088
                           000089   151 _TMOD	=	0x0089
                           00008A   152 _TL0	=	0x008a
                           00008B   153 _TL1	=	0x008b
                           00008C   154 _TH0	=	0x008c
                           00008D   155 _TH1	=	0x008d
                           000090   156 _P1	=	0x0090
                           000098   157 _SCON	=	0x0098
                           000099   158 _SBUF	=	0x0099
                           0000A0   159 _P2	=	0x00a0
                           0000A8   160 _IE	=	0x00a8
                           0000B0   161 _P3	=	0x00b0
                           0000B8   162 _IP	=	0x00b8
                           0000D0   163 _PSW	=	0x00d0
                           0000E0   164 _ACC	=	0x00e0
                           0000F0   165 _B	=	0x00f0
                                    166 ;--------------------------------------------------------
                                    167 ; special function bits
                                    168 ;--------------------------------------------------------
                                    169 	.area RSEG    (ABS,DATA)
      000000                        170 	.org 0x0000
                           000080   171 _P0_0	=	0x0080
                           000081   172 _P0_1	=	0x0081
                           000082   173 _P0_2	=	0x0082
                           000083   174 _P0_3	=	0x0083
                           000084   175 _P0_4	=	0x0084
                           000085   176 _P0_5	=	0x0085
                           000086   177 _P0_6	=	0x0086
                           000087   178 _P0_7	=	0x0087
                           000088   179 _IT0	=	0x0088
                           000089   180 _IE0	=	0x0089
                           00008A   181 _IT1	=	0x008a
                           00008B   182 _IE1	=	0x008b
                           00008C   183 _TR0	=	0x008c
                           00008D   184 _TF0	=	0x008d
                           00008E   185 _TR1	=	0x008e
                           00008F   186 _TF1	=	0x008f
                           000090   187 _P1_0	=	0x0090
                           000091   188 _P1_1	=	0x0091
                           000092   189 _P1_2	=	0x0092
                           000093   190 _P1_3	=	0x0093
                           000094   191 _P1_4	=	0x0094
                           000095   192 _P1_5	=	0x0095
                           000096   193 _P1_6	=	0x0096
                           000097   194 _P1_7	=	0x0097
                           000098   195 _RI	=	0x0098
                           000099   196 _TI	=	0x0099
                           00009A   197 _RB8	=	0x009a
                           00009B   198 _TB8	=	0x009b
                           00009C   199 _REN	=	0x009c
                           00009D   200 _SM2	=	0x009d
                           00009E   201 _SM1	=	0x009e
                           00009F   202 _SM0	=	0x009f
                           0000A0   203 _P2_0	=	0x00a0
                           0000A1   204 _P2_1	=	0x00a1
                           0000A2   205 _P2_2	=	0x00a2
                           0000A3   206 _P2_3	=	0x00a3
                           0000A4   207 _P2_4	=	0x00a4
                           0000A5   208 _P2_5	=	0x00a5
                           0000A6   209 _P2_6	=	0x00a6
                           0000A7   210 _P2_7	=	0x00a7
                           0000A8   211 _EX0	=	0x00a8
                           0000A9   212 _ET0	=	0x00a9
                           0000AA   213 _EX1	=	0x00aa
                           0000AB   214 _ET1	=	0x00ab
                           0000AC   215 _ES	=	0x00ac
                           0000AF   216 _EA	=	0x00af
                           0000B0   217 _P3_0	=	0x00b0
                           0000B1   218 _P3_1	=	0x00b1
                           0000B2   219 _P3_2	=	0x00b2
                           0000B3   220 _P3_3	=	0x00b3
                           0000B4   221 _P3_4	=	0x00b4
                           0000B5   222 _P3_5	=	0x00b5
                           0000B6   223 _P3_6	=	0x00b6
                           0000B7   224 _P3_7	=	0x00b7
                           0000B0   225 _RXD	=	0x00b0
                           0000B1   226 _TXD	=	0x00b1
                           0000B2   227 _INT0	=	0x00b2
                           0000B3   228 _INT1	=	0x00b3
                           0000B4   229 _T0	=	0x00b4
                           0000B5   230 _T1	=	0x00b5
                           0000B6   231 _WR	=	0x00b6
                           0000B7   232 _RD	=	0x00b7
                           0000B8   233 _PX0	=	0x00b8
                           0000B9   234 _PT0	=	0x00b9
                           0000BA   235 _PX1	=	0x00ba
                           0000BB   236 _PT1	=	0x00bb
                           0000BC   237 _PS	=	0x00bc
                           0000D0   238 _P	=	0x00d0
                           0000D1   239 _F1	=	0x00d1
                           0000D2   240 _OV	=	0x00d2
                           0000D3   241 _RS0	=	0x00d3
                           0000D4   242 _RS1	=	0x00d4
                           0000D5   243 _F0	=	0x00d5
                           0000D6   244 _AC	=	0x00d6
                           0000D7   245 _CY	=	0x00d7
                                    246 ;--------------------------------------------------------
                                    247 ; overlayable register banks
                                    248 ;--------------------------------------------------------
                                    249 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        250 	.ds 8
                                    251 ;--------------------------------------------------------
                                    252 ; internal ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area DSEG    (DATA)
                           00003C   255 _m_tail	=	0x003c
                           00003D   256 _th_tail	=	0x003d
                           00006C   257 _p_tail	=	0x006c
                                    258 ;--------------------------------------------------------
                                    259 ; overlayable items in internal ram 
                                    260 ;--------------------------------------------------------
                                    261 ;--------------------------------------------------------
                                    262 ; indirectly addressable internal ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area ISEG    (DATA)
                           000020   265 _ssp	=	0x0020
                           000024   266 _bitmap	=	0x0024
                           000028   267 _ID	=	0x0028
                           000029   268 _c_temp	=	0x0029
                           00002A   269 _temp1	=	0x002a
                           00002B   270 _temp2	=	0x002b
                           00002C   271 _i	=	0x002c
                           00002C   272 _D	=	0x002c
                           00003F   273 _time	=	0x003f
                           00003E   274 _counter	=	0x003e
                           000030   275 _log	=	0x0030
                           00003A   276 _mutex	=	0x003a
                           00003B   277 _thread	=	0x003b
                           00004E   278 _plot	=	0x004e
                           00004D   279 _j	=	0x004d
                           00004C   280 _current	=	0x004c
                           00004B   281 _flag	=	0x004b
                           00004A   282 _c_temp2	=	0x004a
                           00005C   283 _c_temp3	=	0x005c
                           00005B   284 _print	=	0x005b
                                    285 ;--------------------------------------------------------
                                    286 ; absolute internal ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area IABS    (ABS,DATA)
                                    289 	.area IABS    (ABS,DATA)
                                    290 ;--------------------------------------------------------
                                    291 ; bit data
                                    292 ;--------------------------------------------------------
                                    293 	.area BSEG    (BIT)
                                    294 ;--------------------------------------------------------
                                    295 ; paged external ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area PSEG    (PAG,XDATA)
                                    298 ;--------------------------------------------------------
                                    299 ; external ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area XSEG    (XDATA)
                                    302 ;--------------------------------------------------------
                                    303 ; absolute external ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area XABS    (ABS,XDATA)
                                    306 ;--------------------------------------------------------
                                    307 ; external initialized ram data
                                    308 ;--------------------------------------------------------
                                    309 	.area XISEG   (XDATA)
                                    310 	.area HOME    (CODE)
                                    311 	.area GSINIT0 (CODE)
                                    312 	.area GSINIT1 (CODE)
                                    313 	.area GSINIT2 (CODE)
                                    314 	.area GSINIT3 (CODE)
                                    315 	.area GSINIT4 (CODE)
                                    316 	.area GSINIT5 (CODE)
                                    317 	.area GSINIT  (CODE)
                                    318 	.area GSFINAL (CODE)
                                    319 	.area CSEG    (CODE)
                                    320 ;--------------------------------------------------------
                                    321 ; global & static initialisations
                                    322 ;--------------------------------------------------------
                                    323 	.area HOME    (CODE)
                                    324 	.area GSINIT  (CODE)
                                    325 	.area GSFINAL (CODE)
                                    326 	.area GSINIT  (CODE)
                                    327 ;--------------------------------------------------------
                                    328 ; Home
                                    329 ;--------------------------------------------------------
                                    330 	.area HOME    (CODE)
                                    331 	.area HOME    (CODE)
                                    332 ;--------------------------------------------------------
                                    333 ; code
                                    334 ;--------------------------------------------------------
                                    335 	.area CSEG    (CODE)
                                    336 ;------------------------------------------------------------
                                    337 ;Allocation info for local variables in function 'now'
                                    338 ;------------------------------------------------------------
                                    339 ;	preemptive.c:30: unsigned char now(void) { return time; }
                                    340 ;	-----------------------------------------
                                    341 ;	 function now
                                    342 ;	-----------------------------------------
      00087E                        343 _now:
                           000007   344 	ar7 = 0x07
                           000006   345 	ar6 = 0x06
                           000005   346 	ar5 = 0x05
                           000004   347 	ar4 = 0x04
                           000003   348 	ar3 = 0x03
                           000002   349 	ar2 = 0x02
                           000001   350 	ar1 = 0x01
                           000000   351 	ar0 = 0x00
      00087E 78 3F            [12]  352 	mov	r0,#_time
      000880 86 82            [24]  353 	mov	dpl,@r0
      000882 22               [24]  354 	ret
                                    355 ;------------------------------------------------------------
                                    356 ;Allocation info for local variables in function 'delay'
                                    357 ;------------------------------------------------------------
                                    358 ;n                         Allocated to registers r7 
                                    359 ;------------------------------------------------------------
                                    360 ;	preemptive.c:31: void delay(unsigned char n) {
                                    361 ;	-----------------------------------------
                                    362 ;	 function delay
                                    363 ;	-----------------------------------------
      000883                        364 _delay:
      000883 AF 82            [24]  365 	mov	r7,dpl
                                    366 ;	preemptive.c:32: D[ID] = now() + n;
      000885 78 28            [12]  367 	mov	r0,#_ID
      000887 E6               [12]  368 	mov	a,@r0
      000888 24 2C            [12]  369 	add	a,#_D
      00088A F9               [12]  370 	mov	r1,a
      00088B C0 07            [24]  371 	push	ar7
      00088D C0 01            [24]  372 	push	ar1
      00088F 12 08 7E         [24]  373 	lcall	_now
      000892 E5 82            [12]  374 	mov	a,dpl
      000894 D0 01            [24]  375 	pop	ar1
      000896 D0 07            [24]  376 	pop	ar7
      000898 2F               [12]  377 	add	a,r7
      000899 F7               [12]  378 	mov	@r1,a
                                    379 ;	preemptive.c:33: bitmap[ID] = -2;
      00089A 78 28            [12]  380 	mov	r0,#_ID
      00089C E6               [12]  381 	mov	a,@r0
      00089D 24 24            [12]  382 	add	a,#_bitmap
      00089F F8               [12]  383 	mov	r0,a
      0008A0 76 FE            [12]  384 	mov	@r0,#0xFE
                                    385 ;	preemptive.c:34: ThreadYield();
      0008A2 02 0A B1         [24]  386 	ljmp	_ThreadYield
                                    387 ;------------------------------------------------------------
                                    388 ;Allocation info for local variables in function 'thread_manager'
                                    389 ;------------------------------------------------------------
                                    390 ;	preemptive.c:37: void thread_manager(void){
                                    391 ;	-----------------------------------------
                                    392 ;	 function thread_manager
                                    393 ;	-----------------------------------------
      0008A5                        394 _thread_manager:
                                    395 ;	preemptive.c:38: while(1){
      0008A5                        396 00112$:
                                    397 ;	preemptive.c:39: EA = 0;
      0008A5 C2 AF            [12]  398 	clr	_EA
                                    399 ;	preemptive.c:40: temp1 = temp2 = 0;
      0008A7 78 2B            [12]  400 	mov	r0,#_temp2
      0008A9 76 00            [12]  401 	mov	@r0,#0x00
      0008AB 78 2A            [12]  402 	mov	r0,#_temp1
      0008AD 76 00            [12]  403 	mov	@r0,#0x00
                                    404 ;	preemptive.c:41: for(i=1;i<MAXTHREADS;i++) if( temp1<bitmap[i] ) {
      0008AF 78 2C            [12]  405 	mov	r0,#_i
      0008B1 76 01            [12]  406 	mov	@r0,#0x01
      0008B3                        407 00115$:
      0008B3 78 2C            [12]  408 	mov	r0,#_i
      0008B5 C3               [12]  409 	clr	c
      0008B6 E6               [12]  410 	mov	a,@r0
      0008B7 64 80            [12]  411 	xrl	a,#0x80
      0008B9 94 84            [12]  412 	subb	a,#0x84
      0008BB 50 2C            [24]  413 	jnc	00103$
      0008BD 78 2C            [12]  414 	mov	r0,#_i
      0008BF E6               [12]  415 	mov	a,@r0
      0008C0 24 24            [12]  416 	add	a,#_bitmap
      0008C2 F9               [12]  417 	mov	r1,a
      0008C3 87 07            [24]  418 	mov	ar7,@r1
      0008C5 78 2A            [12]  419 	mov	r0,#_temp1
      0008C7 C3               [12]  420 	clr	c
      0008C8 E6               [12]  421 	mov	a,@r0
      0008C9 64 80            [12]  422 	xrl	a,#0x80
      0008CB 8F F0            [24]  423 	mov	b,r7
      0008CD 63 F0 80         [24]  424 	xrl	b,#0x80
      0008D0 95 F0            [12]  425 	subb	a,b
      0008D2 50 10            [24]  426 	jnc	00116$
                                    427 ;	preemptive.c:42: temp1 = bitmap[i];
      0008D4 78 2C            [12]  428 	mov	r0,#_i
      0008D6 E6               [12]  429 	mov	a,@r0
      0008D7 24 24            [12]  430 	add	a,#_bitmap
      0008D9 F9               [12]  431 	mov	r1,a
      0008DA 78 2A            [12]  432 	mov	r0,#_temp1
      0008DC E7               [12]  433 	mov	a,@r1
      0008DD F6               [12]  434 	mov	@r0,a
                                    435 ;	preemptive.c:43: temp2 = i;
      0008DE 78 2C            [12]  436 	mov	r0,#_i
      0008E0 79 2B            [12]  437 	mov	r1,#_temp2
      0008E2 E6               [12]  438 	mov	a,@r0
      0008E3 F7               [12]  439 	mov	@r1,a
      0008E4                        440 00116$:
                                    441 ;	preemptive.c:41: for(i=1;i<MAXTHREADS;i++) if( temp1<bitmap[i] ) {
      0008E4 78 2C            [12]  442 	mov	r0,#_i
      0008E6 06               [12]  443 	inc	@r0
      0008E7 80 CA            [24]  444 	sjmp	00115$
      0008E9                        445 00103$:
                                    446 ;	preemptive.c:45: if(temp2==0) flag = 1;
      0008E9 78 2B            [12]  447 	mov	r0,#_temp2
      0008EB E6               [12]  448 	mov	a,@r0
      0008EC 70 04            [24]  449 	jnz	00105$
      0008EE 78 4B            [12]  450 	mov	r0,#_flag
      0008F0 76 01            [12]  451 	mov	@r0,#0x01
      0008F2                        452 00105$:
                                    453 ;	preemptive.c:46: EA = 1;
      0008F2 D2 AF            [12]  454 	setb	_EA
                                    455 ;	preemptive.c:47: while(flag) {}
      0008F4                        456 00106$:
      0008F4 78 4B            [12]  457 	mov	r0,#_flag
      0008F6 E6               [12]  458 	mov	a,@r0
      0008F7 70 FB            [24]  459 	jnz	00106$
                                    460 ;	preemptive.c:48: if(temp2){
      0008F9 78 2B            [12]  461 	mov	r0,#_temp2
      0008FB E6               [12]  462 	mov	a,@r0
      0008FC 60 A7            [24]  463 	jz	00112$
                                    464 ;	preemptive.c:49: ID = temp2;
      0008FE 78 2B            [12]  465 	mov	r0,#_temp2
      000900 79 28            [12]  466 	mov	r1,#_ID
      000902 E6               [12]  467 	mov	a,@r0
      000903 F7               [12]  468 	mov	@r1,a
                                    469 ;	preemptive.c:50: temp2 = 0;
      000904 78 2B            [12]  470 	mov	r0,#_temp2
      000906 76 00            [12]  471 	mov	@r0,#0x00
                                    472 ;	preemptive.c:51: RESTORESTATE;
      000908 78 28            [12]  473 	mov	r0,#_ID
      00090A E6               [12]  474 	mov	a,@r0
      00090B 24 20            [12]  475 	add	a,#_ssp
      00090D F9               [12]  476 	mov	r1,a
      00090E 87 81            [24]  477 	mov	_SP,@r1
      000910 D0 D0            [24]  478 	pop PSW 
      000912 D0 83            [24]  479 	pop DPH 
      000914 D0 82            [24]  480 	pop DPL 
      000916 D0 F0            [24]  481 	pop B 
      000918 D0 E0            [24]  482 	pop ACC 
                                    483 ;	preemptive.c:52: return;
      00091A 22               [24]  484 	ret
                                    485 ;------------------------------------------------------------
                                    486 ;Allocation info for local variables in function 'myTimer0Handler'
                                    487 ;------------------------------------------------------------
                                    488 ;	preemptive.c:57: void myTimer0Handler(void){
                                    489 ;	-----------------------------------------
                                    490 ;	 function myTimer0Handler
                                    491 ;	-----------------------------------------
      00091B                        492 _myTimer0Handler:
                                    493 ;	preemptive.c:58: SAVESTATE;
      00091B C0 E0            [24]  494 	push ACC 
      00091D C0 F0            [24]  495 	push B 
      00091F C0 82            [24]  496 	push DPL 
      000921 C0 83            [24]  497 	push DPH 
      000923 C0 D0            [24]  498 	push PSW 
      000925 C2 D4            [12]  499 	clr RS1 
      000927 C2 D3            [12]  500 	clr RS0 
      000929 78 28            [12]  501 	mov	r0,#_ID
      00092B E6               [12]  502 	mov	a,@r0
      00092C 24 20            [12]  503 	add	a,#_ssp
      00092E F8               [12]  504 	mov	r0,a
      00092F A6 81            [24]  505 	mov	@r0,_SP
                                    506 ;	preemptive.c:60: flag = 0;
      000931 78 4B            [12]  507 	mov	r0,#_flag
      000933 76 00            [12]  508 	mov	@r0,#0x00
                                    509 ;	preemptive.c:62: counter = (counter==4) ? 0 : counter+1;
      000935 78 3E            [12]  510 	mov	r0,#_counter
      000937 B6 04 04         [24]  511 	cjne	@r0,#0x04,00118$
      00093A 7F 00            [12]  512 	mov	r7,#0x00
      00093C 80 05            [24]  513 	sjmp	00119$
      00093E                        514 00118$:
      00093E 78 3E            [12]  515 	mov	r0,#_counter
      000940 E6               [12]  516 	mov	a,@r0
      000941 04               [12]  517 	inc	a
      000942 FF               [12]  518 	mov	r7,a
      000943                        519 00119$:
      000943 78 3E            [12]  520 	mov	r0,#_counter
      000945 A6 07            [24]  521 	mov	@r0,ar7
                                    522 ;	preemptive.c:63: if(!counter) time++;
      000947 78 3E            [12]  523 	mov	r0,#_counter
      000949 E6               [12]  524 	mov	a,@r0
      00094A 70 03            [24]  525 	jnz	00102$
      00094C 78 3F            [12]  526 	mov	r0,#_time
      00094E 06               [12]  527 	inc	@r0
      00094F                        528 00102$:
                                    529 ;	preemptive.c:65: for(i=1;i<MAXTHREADS;i++){
      00094F 78 2C            [12]  530 	mov	r0,#_i
      000951 76 01            [12]  531 	mov	@r0,#0x01
      000953                        532 00114$:
      000953 78 2C            [12]  533 	mov	r0,#_i
      000955 C3               [12]  534 	clr	c
      000956 E6               [12]  535 	mov	a,@r0
      000957 64 80            [12]  536 	xrl	a,#0x80
      000959 94 84            [12]  537 	subb	a,#0x84
      00095B 50 5A            [24]  538 	jnc	00112$
                                    539 ;	preemptive.c:66: if( bitmap[i]>0 ){
      00095D 78 2C            [12]  540 	mov	r0,#_i
      00095F E6               [12]  541 	mov	a,@r0
      000960 24 24            [12]  542 	add	a,#_bitmap
      000962 F9               [12]  543 	mov	r1,a
      000963 87 07            [24]  544 	mov	ar7,@r1
      000965 C3               [12]  545 	clr	c
      000966 74 80            [12]  546 	mov	a,#(0x00 ^ 0x80)
      000968 8F F0            [24]  547 	mov	b,r7
      00096A 63 F0 80         [24]  548 	xrl	b,#0x80
      00096D 95 F0            [12]  549 	subb	a,b
      00096F 50 20            [24]  550 	jnc	00110$
                                    551 ;	preemptive.c:67: if( i==ID ) bitmap[i]=1;
      000971 78 2C            [12]  552 	mov	r0,#_i
      000973 79 28            [12]  553 	mov	r1,#_ID
      000975 86 F0            [24]  554 	mov	b,@r0
      000977 E7               [12]  555 	mov	a,@r1
      000978 B5 F0 0A         [24]  556 	cjne	a,b,00104$
      00097B 78 2C            [12]  557 	mov	r0,#_i
      00097D E6               [12]  558 	mov	a,@r0
      00097E 24 24            [12]  559 	add	a,#_bitmap
      000980 F8               [12]  560 	mov	r0,a
      000981 76 01            [12]  561 	mov	@r0,#0x01
      000983 80 2D            [24]  562 	sjmp	00115$
      000985                        563 00104$:
                                    564 ;	preemptive.c:68: else bitmap[i]++;
      000985 78 2C            [12]  565 	mov	r0,#_i
      000987 E6               [12]  566 	mov	a,@r0
      000988 24 24            [12]  567 	add	a,#_bitmap
      00098A F9               [12]  568 	mov	r1,a
      00098B E7               [12]  569 	mov	a,@r1
      00098C FF               [12]  570 	mov	r7,a
      00098D 04               [12]  571 	inc	a
      00098E F7               [12]  572 	mov	@r1,a
      00098F 80 21            [24]  573 	sjmp	00115$
      000991                        574 00110$:
                                    575 ;	preemptive.c:70: else if( bitmap[i]==-2 && D[i]==time ) bitmap[i] = 9;
      000991 78 2C            [12]  576 	mov	r0,#_i
      000993 E6               [12]  577 	mov	a,@r0
      000994 24 24            [12]  578 	add	a,#_bitmap
      000996 F9               [12]  579 	mov	r1,a
      000997 87 07            [24]  580 	mov	ar7,@r1
      000999 BF FE 16         [24]  581 	cjne	r7,#0xFE,00115$
      00099C 78 2C            [12]  582 	mov	r0,#_i
      00099E E6               [12]  583 	mov	a,@r0
      00099F 24 2C            [12]  584 	add	a,#_D
      0009A1 F9               [12]  585 	mov	r1,a
      0009A2 87 07            [24]  586 	mov	ar7,@r1
      0009A4 78 3F            [12]  587 	mov	r0,#_time
      0009A6 E6               [12]  588 	mov	a,@r0
      0009A7 B5 07 08         [24]  589 	cjne	a,ar7,00115$
      0009AA 78 2C            [12]  590 	mov	r0,#_i
      0009AC E6               [12]  591 	mov	a,@r0
      0009AD 24 24            [12]  592 	add	a,#_bitmap
      0009AF F8               [12]  593 	mov	r0,a
      0009B0 76 09            [12]  594 	mov	@r0,#0x09
      0009B2                        595 00115$:
                                    596 ;	preemptive.c:65: for(i=1;i<MAXTHREADS;i++){
      0009B2 78 2C            [12]  597 	mov	r0,#_i
      0009B4 06               [12]  598 	inc	@r0
      0009B5 80 9C            [24]  599 	sjmp	00114$
      0009B7                        600 00112$:
                                    601 ;	preemptive.c:72: ID = 0;//manager_ID
      0009B7 78 28            [12]  602 	mov	r0,#_ID
      0009B9 76 00            [12]  603 	mov	@r0,#0x00
                                    604 ;	preemptive.c:73: RESTORESTATE;
      0009BB 78 28            [12]  605 	mov	r0,#_ID
      0009BD E6               [12]  606 	mov	a,@r0
      0009BE 24 20            [12]  607 	add	a,#_ssp
      0009C0 F9               [12]  608 	mov	r1,a
      0009C1 87 81            [24]  609 	mov	_SP,@r1
      0009C3 D0 D0            [24]  610 	pop PSW 
      0009C5 D0 83            [24]  611 	pop DPH 
      0009C7 D0 82            [24]  612 	pop DPL 
      0009C9 D0 F0            [24]  613 	pop B 
      0009CB D0 E0            [24]  614 	pop ACC 
                                    615 ;	preemptive.c:76: __endasm;
      0009CD 32               [24]  616 	reti
      0009CE 22               [24]  617 	ret
                                    618 ;------------------------------------------------------------
                                    619 ;Allocation info for local variables in function 'Bootstrap'
                                    620 ;------------------------------------------------------------
                                    621 ;	preemptive.c:79: void Bootstrap(void) {
                                    622 ;	-----------------------------------------
                                    623 ;	 function Bootstrap
                                    624 ;	-----------------------------------------
      0009CF                        625 _Bootstrap:
                                    626 ;	preemptive.c:80: bitmap[0] = bitmap[1] = bitmap[2] = bitmap[3] = 0;
      0009CF 78 27            [12]  627 	mov	r0,#(_bitmap + 0x0003)
      0009D1 76 00            [12]  628 	mov	@r0,#0x00
      0009D3 78 26            [12]  629 	mov	r0,#(_bitmap + 0x0002)
      0009D5 76 00            [12]  630 	mov	@r0,#0x00
      0009D7 78 25            [12]  631 	mov	r0,#(_bitmap + 0x0001)
      0009D9 76 00            [12]  632 	mov	@r0,#0x00
      0009DB 78 24            [12]  633 	mov	r0,#_bitmap
      0009DD 76 00            [12]  634 	mov	@r0,#0x00
                                    635 ;	preemptive.c:81: time = 1;
      0009DF 78 3F            [12]  636 	mov	r0,#_time
      0009E1 76 01            [12]  637 	mov	@r0,#0x01
                                    638 ;	preemptive.c:82: counter = 0;
      0009E3 78 3E            [12]  639 	mov	r0,#_counter
      0009E5 76 00            [12]  640 	mov	@r0,#0x00
                                    641 ;	preemptive.c:84: TMOD = 0;
      0009E7 75 89 00         [24]  642 	mov	_TMOD,#0x00
                                    643 ;	preemptive.c:85: IE = 0x82;
      0009EA 75 A8 82         [24]  644 	mov	_IE,#0x82
                                    645 ;	preemptive.c:86: TR0 = 1;
      0009ED D2 8C            [12]  646 	setb	_TR0
                                    647 ;	preemptive.c:88: SemaphoreCreate(thread, 4);
      0009EF 78 3B            [12]  648 	mov	r0,#_thread
      0009F1 76 04            [12]  649 	mov	@r0,#0x04
                                    650 ;	preemptive.c:91: __endasm;
      0009F3 75 3D 7C         [24]  651 	mov _th_tail,#0x7C
                                    652 ;	preemptive.c:93: ThreadCreate(thread_manager);
      0009F6 90 08 A5         [24]  653 	mov	dptr,#_thread_manager
      0009F9 12 0A 1A         [24]  654 	lcall	_ThreadCreate
                                    655 ;	preemptive.c:94: ID = ThreadCreate(main);
      0009FC 90 08 39         [24]  656 	mov	dptr,#_main
      0009FF 12 0A 1A         [24]  657 	lcall	_ThreadCreate
      000A02 E5 82            [12]  658 	mov	a,dpl
      000A04 78 28            [12]  659 	mov	r0,#_ID
      000A06 F6               [12]  660 	mov	@r0,a
                                    661 ;	preemptive.c:95: RESTORESTATE;
      000A07 78 28            [12]  662 	mov	r0,#_ID
      000A09 E6               [12]  663 	mov	a,@r0
      000A0A 24 20            [12]  664 	add	a,#_ssp
      000A0C F9               [12]  665 	mov	r1,a
      000A0D 87 81            [24]  666 	mov	_SP,@r1
      000A0F D0 D0            [24]  667 	pop PSW 
      000A11 D0 83            [24]  668 	pop DPH 
      000A13 D0 82            [24]  669 	pop DPL 
      000A15 D0 F0            [24]  670 	pop B 
      000A17 D0 E0            [24]  671 	pop ACC 
      000A19 22               [24]  672 	ret
                                    673 ;------------------------------------------------------------
                                    674 ;Allocation info for local variables in function 'ThreadCreate'
                                    675 ;------------------------------------------------------------
                                    676 ;fp                        Allocated to registers 
                                    677 ;------------------------------------------------------------
                                    678 ;	preemptive.c:98: ThreadID ThreadCreate(FunctionPtr fp) {
                                    679 ;	-----------------------------------------
                                    680 ;	 function ThreadCreate
                                    681 ;	-----------------------------------------
      000A1A                        682 _ThreadCreate:
                                    683 ;	preemptive.c:99: SemaphoreWait(thread,th_tail);
      000A1A C2 AF            [12]  684 	clr	_EA
      000A1C 78 3B            [12]  685 	mov	r0,#_thread
      000A1E 16               [12]  686 	dec	@r0
      000A1F 78 3B            [12]  687 	mov	r0,#_thread
      000A21 E6               [12]  688 	mov	a,@r0
      000A22 30 E7 13         [24]  689 	jnb	acc.7,00102$
      000A25 05 3D            [12]  690 	inc	_th_tail
      000A27 A9 3D            [24]  691 	mov	r1,_th_tail
      000A29 78 28            [12]  692 	mov	r0,#_ID
      000A2B E6               [12]  693 	mov	a,@r0
      000A2C F7               [12]  694 	mov	@r1,a
      000A2D 78 28            [12]  695 	mov	r0,#_ID
      000A2F E6               [12]  696 	mov	a,@r0
      000A30 24 24            [12]  697 	add	a,#_bitmap
      000A32 F8               [12]  698 	mov	r0,a
      000A33 76 FF            [12]  699 	mov	@r0,#0xFF
      000A35 12 0A B1         [24]  700 	lcall	_ThreadYield
      000A38                        701 00102$:
      000A38 D2 AF            [12]  702 	setb	_EA
                                    703 ;	preemptive.c:100: EA = 0;
      000A3A C2 AF            [12]  704 	clr	_EA
                                    705 ;	preemptive.c:101: for(i=0;i<MAXTHREADS;i++) if(!bitmap[i]) break;
      000A3C 78 2C            [12]  706 	mov	r0,#_i
      000A3E 76 00            [12]  707 	mov	@r0,#0x00
      000A40                        708 00109$:
      000A40 78 2C            [12]  709 	mov	r0,#_i
      000A42 C3               [12]  710 	clr	c
      000A43 E6               [12]  711 	mov	a,@r0
      000A44 64 80            [12]  712 	xrl	a,#0x80
      000A46 94 84            [12]  713 	subb	a,#0x84
      000A48 50 0E            [24]  714 	jnc	00105$
      000A4A 78 2C            [12]  715 	mov	r0,#_i
      000A4C E6               [12]  716 	mov	a,@r0
      000A4D 24 24            [12]  717 	add	a,#_bitmap
      000A4F F9               [12]  718 	mov	r1,a
      000A50 E7               [12]  719 	mov	a,@r1
      000A51 60 05            [24]  720 	jz	00105$
      000A53 78 2C            [12]  721 	mov	r0,#_i
      000A55 06               [12]  722 	inc	@r0
      000A56 80 E8            [24]  723 	sjmp	00109$
      000A58                        724 00105$:
                                    725 ;	preemptive.c:102: if(i==MAXTHREADS) return -1;
      000A58 78 2C            [12]  726 	mov	r0,#_i
      000A5A B6 04 04         [24]  727 	cjne	@r0,#0x04,00107$
      000A5D 75 82 FF         [24]  728 	mov	dpl,#0xFF
      000A60 22               [24]  729 	ret
      000A61                        730 00107$:
                                    731 ;	preemptive.c:104: bitmap[i] = 1;
      000A61 78 2C            [12]  732 	mov	r0,#_i
      000A63 E6               [12]  733 	mov	a,@r0
      000A64 24 24            [12]  734 	add	a,#_bitmap
      000A66 F8               [12]  735 	mov	r0,a
      000A67 76 01            [12]  736 	mov	@r0,#0x01
                                    737 ;	preemptive.c:105: temp1 = SP;
      000A69 78 2A            [12]  738 	mov	r0,#_temp1
      000A6B A6 81            [24]  739 	mov	@r0,_SP
                                    740 ;	preemptive.c:106: SP = 0x3F + i*0x10;
      000A6D 78 2C            [12]  741 	mov	r0,#_i
      000A6F E6               [12]  742 	mov	a,@r0
      000A70 C4               [12]  743 	swap	a
      000A71 54 F0            [12]  744 	anl	a,#0xF0
      000A73 FF               [12]  745 	mov	r7,a
      000A74 24 3F            [12]  746 	add	a,#0x3F
      000A76 F5 81            [12]  747 	mov	_SP,a
                                    748 ;	preemptive.c:121: __endasm;
      000A78 E5 82            [12]  749 	mov a,DPL
      000A7A 85 83 F0         [24]  750 	mov b,DPH
      000A7D 90 0B 00         [24]  751 	mov dptr,#_ThreadExit
      000A80 C0 82            [24]  752 	push DPL
      000A82 C0 83            [24]  753 	push DPH
      000A84 C0 E0            [24]  754 	push a
      000A86 C0 F0            [24]  755 	push b
      000A88 74 00            [12]  756 	mov a,#0x00
      000A8A C0 E0            [24]  757 	push a
      000A8C C0 E0            [24]  758 	push a
      000A8E C0 E0            [24]  759 	push a
      000A90 C0 E0            [24]  760 	push a
                                    761 ;	preemptive.c:122: temp2 = i<<3;
      000A92 78 2C            [12]  762 	mov	r0,#_i
      000A94 79 2B            [12]  763 	mov	r1,#_temp2
      000A96 E6               [12]  764 	mov	a,@r0
      000A97 C4               [12]  765 	swap	a
      000A98 03               [12]  766 	rr	a
      000A99 54 F8            [12]  767 	anl	a,#0xF8
      000A9B F7               [12]  768 	mov	@r1,a
                                    769 ;	preemptive.c:125: __endasm;
      000A9C C0 2B            [24]  770 	push _temp2
                                    771 ;	preemptive.c:127: ssp[i] = SP;
      000A9E 78 2C            [12]  772 	mov	r0,#_i
      000AA0 E6               [12]  773 	mov	a,@r0
      000AA1 24 20            [12]  774 	add	a,#_ssp
      000AA3 F8               [12]  775 	mov	r0,a
      000AA4 A6 81            [24]  776 	mov	@r0,_SP
                                    777 ;	preemptive.c:128: SP = temp1;
      000AA6 78 2A            [12]  778 	mov	r0,#_temp1
      000AA8 86 81            [24]  779 	mov	_SP,@r0
                                    780 ;	preemptive.c:129: EA = 1;
      000AAA D2 AF            [12]  781 	setb	_EA
                                    782 ;	preemptive.c:130: return i;
      000AAC 78 2C            [12]  783 	mov	r0,#_i
      000AAE 86 82            [24]  784 	mov	dpl,@r0
      000AB0 22               [24]  785 	ret
                                    786 ;------------------------------------------------------------
                                    787 ;Allocation info for local variables in function 'ThreadYield'
                                    788 ;------------------------------------------------------------
                                    789 ;	preemptive.c:133: void ThreadYield(void) {
                                    790 ;	-----------------------------------------
                                    791 ;	 function ThreadYield
                                    792 ;	-----------------------------------------
      000AB1                        793 _ThreadYield:
                                    794 ;	preemptive.c:134: EA = 0;
      000AB1 C2 AF            [12]  795 	clr	_EA
                                    796 ;	preemptive.c:135: SAVESTATE;
      000AB3 C0 E0            [24]  797 	push ACC 
      000AB5 C0 F0            [24]  798 	push B 
      000AB7 C0 82            [24]  799 	push DPL 
      000AB9 C0 83            [24]  800 	push DPH 
      000ABB C0 D0            [24]  801 	push PSW 
      000ABD C2 D4            [12]  802 	clr RS1 
      000ABF C2 D3            [12]  803 	clr RS0 
      000AC1 78 28            [12]  804 	mov	r0,#_ID
      000AC3 E6               [12]  805 	mov	a,@r0
      000AC4 24 20            [12]  806 	add	a,#_ssp
      000AC6 F8               [12]  807 	mov	r0,a
      000AC7 A6 81            [24]  808 	mov	@r0,_SP
                                    809 ;	preemptive.c:136: do {
      000AC9                        810 00106$:
                                    811 ;	preemptive.c:137: if(ID==MAXTHREADS-1) ID = 0;
      000AC9 78 28            [12]  812 	mov	r0,#_ID
      000ACB B6 03 06         [24]  813 	cjne	@r0,#0x03,00102$
      000ACE 78 28            [12]  814 	mov	r0,#_ID
      000AD0 76 00            [12]  815 	mov	@r0,#0x00
      000AD2 80 03            [24]  816 	sjmp	00103$
      000AD4                        817 00102$:
                                    818 ;	preemptive.c:138: else ID++;
      000AD4 78 28            [12]  819 	mov	r0,#_ID
      000AD6 06               [12]  820 	inc	@r0
      000AD7                        821 00103$:
                                    822 ;	preemptive.c:139: if(bitmap[ID]>0) break;
      000AD7 78 28            [12]  823 	mov	r0,#_ID
      000AD9 E6               [12]  824 	mov	a,@r0
      000ADA 24 24            [12]  825 	add	a,#_bitmap
      000ADC F9               [12]  826 	mov	r1,a
      000ADD 87 07            [24]  827 	mov	ar7,@r1
      000ADF C3               [12]  828 	clr	c
      000AE0 74 80            [12]  829 	mov	a,#(0x00 ^ 0x80)
      000AE2 8F F0            [24]  830 	mov	b,r7
      000AE4 63 F0 80         [24]  831 	xrl	b,#0x80
      000AE7 95 F0            [12]  832 	subb	a,b
      000AE9 50 DE            [24]  833 	jnc	00106$
                                    834 ;	preemptive.c:141: RESTORESTATE;
      000AEB 78 28            [12]  835 	mov	r0,#_ID
      000AED E6               [12]  836 	mov	a,@r0
      000AEE 24 20            [12]  837 	add	a,#_ssp
      000AF0 F9               [12]  838 	mov	r1,a
      000AF1 87 81            [24]  839 	mov	_SP,@r1
      000AF3 D0 D0            [24]  840 	pop PSW 
      000AF5 D0 83            [24]  841 	pop DPH 
      000AF7 D0 82            [24]  842 	pop DPL 
      000AF9 D0 F0            [24]  843 	pop B 
      000AFB D0 E0            [24]  844 	pop ACC 
                                    845 ;	preemptive.c:142: EA = 1;
      000AFD D2 AF            [12]  846 	setb	_EA
      000AFF 22               [24]  847 	ret
                                    848 ;------------------------------------------------------------
                                    849 ;Allocation info for local variables in function 'ThreadExit'
                                    850 ;------------------------------------------------------------
                                    851 ;	preemptive.c:145: void ThreadExit(void) {
                                    852 ;	-----------------------------------------
                                    853 ;	 function ThreadExit
                                    854 ;	-----------------------------------------
      000B00                        855 _ThreadExit:
                                    856 ;	preemptive.c:146: SemaphoreSignal(thread,th_tail);
      000B00 C2 AF            [12]  857 	clr	_EA
      000B02 78 3B            [12]  858 	mov	r0,#_thread
      000B04 06               [12]  859 	inc	@r0
      000B05 78 3B            [12]  860 	mov	r0,#_thread
      000B07 C3               [12]  861 	clr	c
      000B08 74 80            [12]  862 	mov	a,#(0x00 ^ 0x80)
      000B0A 86 F0            [24]  863 	mov	b,@r0
      000B0C 63 F0 80         [24]  864 	xrl	b,#0x80
      000B0F 95 F0            [12]  865 	subb	a,b
      000B11 40 0B            [24]  866 	jc	00102$
      000B13 A9 3D            [24]  867 	mov	r1,_th_tail
      000B15 E7               [12]  868 	mov	a,@r1
      000B16 FF               [12]  869 	mov	r7,a
      000B17 24 24            [12]  870 	add	a,#_bitmap
      000B19 F8               [12]  871 	mov	r0,a
      000B1A 76 01            [12]  872 	mov	@r0,#0x01
      000B1C 15 3D            [12]  873 	dec	_th_tail
      000B1E                        874 00102$:
      000B1E D2 AF            [12]  875 	setb	_EA
                                    876 ;	preemptive.c:147: EA = 0;
      000B20 C2 AF            [12]  877 	clr	_EA
                                    878 ;	preemptive.c:148: bitmap[ID] = 0;
      000B22 78 28            [12]  879 	mov	r0,#_ID
      000B24 E6               [12]  880 	mov	a,@r0
      000B25 24 24            [12]  881 	add	a,#_bitmap
      000B27 F8               [12]  882 	mov	r0,a
      000B28 76 00            [12]  883 	mov	@r0,#0x00
                                    884 ;	preemptive.c:152: __endasm;
      000B2A C2 D4            [12]  885 	clr RS1
      000B2C C2 D3            [12]  886 	clr RS0
                                    887 ;	preemptive.c:153: do {
      000B2E                        888 00108$:
                                    889 ;	preemptive.c:154: if(ID==MAXTHREADS-1) ID = 0;
      000B2E 78 28            [12]  890 	mov	r0,#_ID
      000B30 B6 03 06         [24]  891 	cjne	@r0,#0x03,00104$
      000B33 78 28            [12]  892 	mov	r0,#_ID
      000B35 76 00            [12]  893 	mov	@r0,#0x00
      000B37 80 03            [24]  894 	sjmp	00105$
      000B39                        895 00104$:
                                    896 ;	preemptive.c:155: else ID++;
      000B39 78 28            [12]  897 	mov	r0,#_ID
      000B3B 06               [12]  898 	inc	@r0
      000B3C                        899 00105$:
                                    900 ;	preemptive.c:156: if(bitmap[ID]>0) break;
      000B3C 78 28            [12]  901 	mov	r0,#_ID
      000B3E E6               [12]  902 	mov	a,@r0
      000B3F 24 24            [12]  903 	add	a,#_bitmap
      000B41 F9               [12]  904 	mov	r1,a
      000B42 87 07            [24]  905 	mov	ar7,@r1
      000B44 C3               [12]  906 	clr	c
      000B45 74 80            [12]  907 	mov	a,#(0x00 ^ 0x80)
      000B47 8F F0            [24]  908 	mov	b,r7
      000B49 63 F0 80         [24]  909 	xrl	b,#0x80
      000B4C 95 F0            [12]  910 	subb	a,b
      000B4E 50 DE            [24]  911 	jnc	00108$
                                    912 ;	preemptive.c:158: RESTORESTATE;
      000B50 78 28            [12]  913 	mov	r0,#_ID
      000B52 E6               [12]  914 	mov	a,@r0
      000B53 24 20            [12]  915 	add	a,#_ssp
      000B55 F9               [12]  916 	mov	r1,a
      000B56 87 81            [24]  917 	mov	_SP,@r1
      000B58 D0 D0            [24]  918 	pop PSW 
      000B5A D0 83            [24]  919 	pop DPH 
      000B5C D0 82            [24]  920 	pop DPL 
      000B5E D0 F0            [24]  921 	pop B 
      000B60 D0 E0            [24]  922 	pop ACC 
                                    923 ;	preemptive.c:159: EA = 1;
      000B62 D2 AF            [12]  924 	setb	_EA
      000B64 22               [24]  925 	ret
                                    926 	.area CSEG    (CODE)
                                    927 	.area CONST   (CODE)
                                    928 	.area XINIT   (CODE)
                                    929 	.area CABS    (ABS,CODE)
