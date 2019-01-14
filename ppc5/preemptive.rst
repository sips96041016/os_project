                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Tue Jan 15 03:45:40 2019
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
                                    112 	.globl _temp3
                                    113 	.globl _print
                                    114 	.globl _c_temp3
                                    115 	.globl _c_temp2
                                    116 	.globl _flag
                                    117 	.globl _current
                                    118 	.globl _j
                                    119 	.globl _plot
                                    120 	.globl _thread
                                    121 	.globl _mutex
                                    122 	.globl _log
                                    123 	.globl _counter
                                    124 	.globl _time
                                    125 	.globl _D
                                    126 	.globl _i
                                    127 	.globl _temp2
                                    128 	.globl _temp1
                                    129 	.globl _c_temp
                                    130 	.globl _ID
                                    131 	.globl _bitmap
                                    132 	.globl _ssp
                                    133 	.globl _p_tail
                                    134 	.globl _th_tail
                                    135 	.globl _m_tail
                                    136 	.globl _now
                                    137 	.globl _delay
                                    138 	.globl _ThreadCreate
                                    139 	.globl _ThreadYield
                                    140 	.globl _ThreadExit
                                    141 ;--------------------------------------------------------
                                    142 ; special function registers
                                    143 ;--------------------------------------------------------
                                    144 	.area RSEG    (ABS,DATA)
      000000                        145 	.org 0x0000
                           000080   146 _P0	=	0x0080
                           000081   147 _SP	=	0x0081
                           000082   148 _DPL	=	0x0082
                           000083   149 _DPH	=	0x0083
                           000087   150 _PCON	=	0x0087
                           000088   151 _TCON	=	0x0088
                           000089   152 _TMOD	=	0x0089
                           00008A   153 _TL0	=	0x008a
                           00008B   154 _TL1	=	0x008b
                           00008C   155 _TH0	=	0x008c
                           00008D   156 _TH1	=	0x008d
                           000090   157 _P1	=	0x0090
                           000098   158 _SCON	=	0x0098
                           000099   159 _SBUF	=	0x0099
                           0000A0   160 _P2	=	0x00a0
                           0000A8   161 _IE	=	0x00a8
                           0000B0   162 _P3	=	0x00b0
                           0000B8   163 _IP	=	0x00b8
                           0000D0   164 _PSW	=	0x00d0
                           0000E0   165 _ACC	=	0x00e0
                           0000F0   166 _B	=	0x00f0
                                    167 ;--------------------------------------------------------
                                    168 ; special function bits
                                    169 ;--------------------------------------------------------
                                    170 	.area RSEG    (ABS,DATA)
      000000                        171 	.org 0x0000
                           000080   172 _P0_0	=	0x0080
                           000081   173 _P0_1	=	0x0081
                           000082   174 _P0_2	=	0x0082
                           000083   175 _P0_3	=	0x0083
                           000084   176 _P0_4	=	0x0084
                           000085   177 _P0_5	=	0x0085
                           000086   178 _P0_6	=	0x0086
                           000087   179 _P0_7	=	0x0087
                           000088   180 _IT0	=	0x0088
                           000089   181 _IE0	=	0x0089
                           00008A   182 _IT1	=	0x008a
                           00008B   183 _IE1	=	0x008b
                           00008C   184 _TR0	=	0x008c
                           00008D   185 _TF0	=	0x008d
                           00008E   186 _TR1	=	0x008e
                           00008F   187 _TF1	=	0x008f
                           000090   188 _P1_0	=	0x0090
                           000091   189 _P1_1	=	0x0091
                           000092   190 _P1_2	=	0x0092
                           000093   191 _P1_3	=	0x0093
                           000094   192 _P1_4	=	0x0094
                           000095   193 _P1_5	=	0x0095
                           000096   194 _P1_6	=	0x0096
                           000097   195 _P1_7	=	0x0097
                           000098   196 _RI	=	0x0098
                           000099   197 _TI	=	0x0099
                           00009A   198 _RB8	=	0x009a
                           00009B   199 _TB8	=	0x009b
                           00009C   200 _REN	=	0x009c
                           00009D   201 _SM2	=	0x009d
                           00009E   202 _SM1	=	0x009e
                           00009F   203 _SM0	=	0x009f
                           0000A0   204 _P2_0	=	0x00a0
                           0000A1   205 _P2_1	=	0x00a1
                           0000A2   206 _P2_2	=	0x00a2
                           0000A3   207 _P2_3	=	0x00a3
                           0000A4   208 _P2_4	=	0x00a4
                           0000A5   209 _P2_5	=	0x00a5
                           0000A6   210 _P2_6	=	0x00a6
                           0000A7   211 _P2_7	=	0x00a7
                           0000A8   212 _EX0	=	0x00a8
                           0000A9   213 _ET0	=	0x00a9
                           0000AA   214 _EX1	=	0x00aa
                           0000AB   215 _ET1	=	0x00ab
                           0000AC   216 _ES	=	0x00ac
                           0000AF   217 _EA	=	0x00af
                           0000B0   218 _P3_0	=	0x00b0
                           0000B1   219 _P3_1	=	0x00b1
                           0000B2   220 _P3_2	=	0x00b2
                           0000B3   221 _P3_3	=	0x00b3
                           0000B4   222 _P3_4	=	0x00b4
                           0000B5   223 _P3_5	=	0x00b5
                           0000B6   224 _P3_6	=	0x00b6
                           0000B7   225 _P3_7	=	0x00b7
                           0000B0   226 _RXD	=	0x00b0
                           0000B1   227 _TXD	=	0x00b1
                           0000B2   228 _INT0	=	0x00b2
                           0000B3   229 _INT1	=	0x00b3
                           0000B4   230 _T0	=	0x00b4
                           0000B5   231 _T1	=	0x00b5
                           0000B6   232 _WR	=	0x00b6
                           0000B7   233 _RD	=	0x00b7
                           0000B8   234 _PX0	=	0x00b8
                           0000B9   235 _PT0	=	0x00b9
                           0000BA   236 _PX1	=	0x00ba
                           0000BB   237 _PT1	=	0x00bb
                           0000BC   238 _PS	=	0x00bc
                           0000D0   239 _P	=	0x00d0
                           0000D1   240 _F1	=	0x00d1
                           0000D2   241 _OV	=	0x00d2
                           0000D3   242 _RS0	=	0x00d3
                           0000D4   243 _RS1	=	0x00d4
                           0000D5   244 _F0	=	0x00d5
                           0000D6   245 _AC	=	0x00d6
                           0000D7   246 _CY	=	0x00d7
                                    247 ;--------------------------------------------------------
                                    248 ; overlayable register banks
                                    249 ;--------------------------------------------------------
                                    250 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        251 	.ds 8
                                    252 ;--------------------------------------------------------
                                    253 ; internal ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area DSEG    (DATA)
                           00003C   256 _m_tail	=	0x003c
                           00003D   257 _th_tail	=	0x003d
                           00006C   258 _p_tail	=	0x006c
                                    259 ;--------------------------------------------------------
                                    260 ; overlayable items in internal ram 
                                    261 ;--------------------------------------------------------
                                    262 ;--------------------------------------------------------
                                    263 ; indirectly addressable internal ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area ISEG    (DATA)
                           000020   266 _ssp	=	0x0020
                           000024   267 _bitmap	=	0x0024
                           000028   268 _ID	=	0x0028
                           000029   269 _c_temp	=	0x0029
                           00002A   270 _temp1	=	0x002a
                           00002B   271 _temp2	=	0x002b
                           00002C   272 _i	=	0x002c
                           00002C   273 _D	=	0x002c
                           00003F   274 _time	=	0x003f
                           00003E   275 _counter	=	0x003e
                           000030   276 _log	=	0x0030
                           00003A   277 _mutex	=	0x003a
                           00003B   278 _thread	=	0x003b
                           00004E   279 _plot	=	0x004e
                           00004D   280 _j	=	0x004d
                           00004C   281 _current	=	0x004c
                           00004B   282 _flag	=	0x004b
                           00004A   283 _c_temp2	=	0x004a
                           00005C   284 _c_temp3	=	0x005c
                           00005B   285 _print	=	0x005b
                           00006B   286 _temp3	=	0x006b
                                    287 ;--------------------------------------------------------
                                    288 ; absolute internal ram data
                                    289 ;--------------------------------------------------------
                                    290 	.area IABS    (ABS,DATA)
                                    291 	.area IABS    (ABS,DATA)
                                    292 ;--------------------------------------------------------
                                    293 ; bit data
                                    294 ;--------------------------------------------------------
                                    295 	.area BSEG    (BIT)
                                    296 ;--------------------------------------------------------
                                    297 ; paged external ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area PSEG    (PAG,XDATA)
                                    300 ;--------------------------------------------------------
                                    301 ; external ram data
                                    302 ;--------------------------------------------------------
                                    303 	.area XSEG    (XDATA)
                                    304 ;--------------------------------------------------------
                                    305 ; absolute external ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area XABS    (ABS,XDATA)
                                    308 ;--------------------------------------------------------
                                    309 ; external initialized ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area XISEG   (XDATA)
                                    312 	.area HOME    (CODE)
                                    313 	.area GSINIT0 (CODE)
                                    314 	.area GSINIT1 (CODE)
                                    315 	.area GSINIT2 (CODE)
                                    316 	.area GSINIT3 (CODE)
                                    317 	.area GSINIT4 (CODE)
                                    318 	.area GSINIT5 (CODE)
                                    319 	.area GSINIT  (CODE)
                                    320 	.area GSFINAL (CODE)
                                    321 	.area CSEG    (CODE)
                                    322 ;--------------------------------------------------------
                                    323 ; global & static initialisations
                                    324 ;--------------------------------------------------------
                                    325 	.area HOME    (CODE)
                                    326 	.area GSINIT  (CODE)
                                    327 	.area GSFINAL (CODE)
                                    328 	.area GSINIT  (CODE)
                                    329 ;--------------------------------------------------------
                                    330 ; Home
                                    331 ;--------------------------------------------------------
                                    332 	.area HOME    (CODE)
                                    333 	.area HOME    (CODE)
                                    334 ;--------------------------------------------------------
                                    335 ; code
                                    336 ;--------------------------------------------------------
                                    337 	.area CSEG    (CODE)
                                    338 ;------------------------------------------------------------
                                    339 ;Allocation info for local variables in function 'now'
                                    340 ;------------------------------------------------------------
                                    341 ;	preemptive.c:30: unsigned char now(void) { return time; }
                                    342 ;	-----------------------------------------
                                    343 ;	 function now
                                    344 ;	-----------------------------------------
      00087E                        345 _now:
                           000007   346 	ar7 = 0x07
                           000006   347 	ar6 = 0x06
                           000005   348 	ar5 = 0x05
                           000004   349 	ar4 = 0x04
                           000003   350 	ar3 = 0x03
                           000002   351 	ar2 = 0x02
                           000001   352 	ar1 = 0x01
                           000000   353 	ar0 = 0x00
      00087E 78 3F            [12]  354 	mov	r0,#_time
      000880 86 82            [24]  355 	mov	dpl,@r0
      000882 22               [24]  356 	ret
                                    357 ;------------------------------------------------------------
                                    358 ;Allocation info for local variables in function 'delay'
                                    359 ;------------------------------------------------------------
                                    360 ;n                         Allocated to registers r7 
                                    361 ;------------------------------------------------------------
                                    362 ;	preemptive.c:31: void delay(unsigned char n) {
                                    363 ;	-----------------------------------------
                                    364 ;	 function delay
                                    365 ;	-----------------------------------------
      000883                        366 _delay:
      000883 AF 82            [24]  367 	mov	r7,dpl
                                    368 ;	preemptive.c:32: D[ID] = now() + n;
      000885 78 28            [12]  369 	mov	r0,#_ID
      000887 E6               [12]  370 	mov	a,@r0
      000888 24 2C            [12]  371 	add	a,#_D
      00088A F9               [12]  372 	mov	r1,a
      00088B C0 07            [24]  373 	push	ar7
      00088D C0 01            [24]  374 	push	ar1
      00088F 12 08 7E         [24]  375 	lcall	_now
      000892 E5 82            [12]  376 	mov	a,dpl
      000894 D0 01            [24]  377 	pop	ar1
      000896 D0 07            [24]  378 	pop	ar7
      000898 2F               [12]  379 	add	a,r7
      000899 F7               [12]  380 	mov	@r1,a
                                    381 ;	preemptive.c:33: bitmap[ID] = -2;
      00089A 78 28            [12]  382 	mov	r0,#_ID
      00089C E6               [12]  383 	mov	a,@r0
      00089D 24 24            [12]  384 	add	a,#_bitmap
      00089F F8               [12]  385 	mov	r0,a
      0008A0 76 FE            [12]  386 	mov	@r0,#0xFE
                                    387 ;	preemptive.c:34: ThreadYield();
      0008A2 02 0A BA         [24]  388 	ljmp	_ThreadYield
                                    389 ;------------------------------------------------------------
                                    390 ;Allocation info for local variables in function 'thread_manager'
                                    391 ;------------------------------------------------------------
                                    392 ;	preemptive.c:37: void thread_manager(void){
                                    393 ;	-----------------------------------------
                                    394 ;	 function thread_manager
                                    395 ;	-----------------------------------------
      0008A5                        396 _thread_manager:
                                    397 ;	preemptive.c:38: while(1){
      0008A5                        398 00112$:
                                    399 ;	preemptive.c:39: EA = 0;
      0008A5 C2 AF            [12]  400 	clr	_EA
                                    401 ;	preemptive.c:40: temp1 = temp2 = 0;
      0008A7 78 2B            [12]  402 	mov	r0,#_temp2
      0008A9 76 00            [12]  403 	mov	@r0,#0x00
      0008AB 78 2A            [12]  404 	mov	r0,#_temp1
      0008AD 76 00            [12]  405 	mov	@r0,#0x00
                                    406 ;	preemptive.c:41: for(i=1;i<MAXTHREADS;i++) if( temp1<bitmap[i] ) {
      0008AF 78 2C            [12]  407 	mov	r0,#_i
      0008B1 76 01            [12]  408 	mov	@r0,#0x01
      0008B3                        409 00115$:
      0008B3 78 2C            [12]  410 	mov	r0,#_i
      0008B5 C3               [12]  411 	clr	c
      0008B6 E6               [12]  412 	mov	a,@r0
      0008B7 64 80            [12]  413 	xrl	a,#0x80
      0008B9 94 84            [12]  414 	subb	a,#0x84
      0008BB 50 2C            [24]  415 	jnc	00103$
      0008BD 78 2C            [12]  416 	mov	r0,#_i
      0008BF E6               [12]  417 	mov	a,@r0
      0008C0 24 24            [12]  418 	add	a,#_bitmap
      0008C2 F9               [12]  419 	mov	r1,a
      0008C3 87 07            [24]  420 	mov	ar7,@r1
      0008C5 78 2A            [12]  421 	mov	r0,#_temp1
      0008C7 C3               [12]  422 	clr	c
      0008C8 E6               [12]  423 	mov	a,@r0
      0008C9 64 80            [12]  424 	xrl	a,#0x80
      0008CB 8F F0            [24]  425 	mov	b,r7
      0008CD 63 F0 80         [24]  426 	xrl	b,#0x80
      0008D0 95 F0            [12]  427 	subb	a,b
      0008D2 50 10            [24]  428 	jnc	00116$
                                    429 ;	preemptive.c:42: temp1 = bitmap[i];
      0008D4 78 2C            [12]  430 	mov	r0,#_i
      0008D6 E6               [12]  431 	mov	a,@r0
      0008D7 24 24            [12]  432 	add	a,#_bitmap
      0008D9 F9               [12]  433 	mov	r1,a
      0008DA 78 2A            [12]  434 	mov	r0,#_temp1
      0008DC E7               [12]  435 	mov	a,@r1
      0008DD F6               [12]  436 	mov	@r0,a
                                    437 ;	preemptive.c:43: temp2 = i;
      0008DE 78 2C            [12]  438 	mov	r0,#_i
      0008E0 79 2B            [12]  439 	mov	r1,#_temp2
      0008E2 E6               [12]  440 	mov	a,@r0
      0008E3 F7               [12]  441 	mov	@r1,a
      0008E4                        442 00116$:
                                    443 ;	preemptive.c:41: for(i=1;i<MAXTHREADS;i++) if( temp1<bitmap[i] ) {
      0008E4 78 2C            [12]  444 	mov	r0,#_i
      0008E6 06               [12]  445 	inc	@r0
      0008E7 80 CA            [24]  446 	sjmp	00115$
      0008E9                        447 00103$:
                                    448 ;	preemptive.c:45: if(temp2==0) flag = 1;
      0008E9 78 2B            [12]  449 	mov	r0,#_temp2
      0008EB E6               [12]  450 	mov	a,@r0
      0008EC 70 04            [24]  451 	jnz	00105$
      0008EE 78 4B            [12]  452 	mov	r0,#_flag
      0008F0 76 01            [12]  453 	mov	@r0,#0x01
      0008F2                        454 00105$:
                                    455 ;	preemptive.c:46: EA = 1;
      0008F2 D2 AF            [12]  456 	setb	_EA
                                    457 ;	preemptive.c:47: while(flag) {}
      0008F4                        458 00106$:
      0008F4 78 4B            [12]  459 	mov	r0,#_flag
      0008F6 E6               [12]  460 	mov	a,@r0
      0008F7 70 FB            [24]  461 	jnz	00106$
                                    462 ;	preemptive.c:48: EA = 0;
      0008F9 C2 AF            [12]  463 	clr	_EA
                                    464 ;	preemptive.c:49: if(temp2){
      0008FB 78 2B            [12]  465 	mov	r0,#_temp2
      0008FD E6               [12]  466 	mov	a,@r0
      0008FE 60 1F            [24]  467 	jz	00110$
                                    468 ;	preemptive.c:50: ID = temp2;
      000900 78 2B            [12]  469 	mov	r0,#_temp2
      000902 79 28            [12]  470 	mov	r1,#_ID
      000904 E6               [12]  471 	mov	a,@r0
      000905 F7               [12]  472 	mov	@r1,a
                                    473 ;	preemptive.c:51: temp2 = 0;
      000906 78 2B            [12]  474 	mov	r0,#_temp2
      000908 76 00            [12]  475 	mov	@r0,#0x00
                                    476 ;	preemptive.c:52: RESTORESTATE;
      00090A 78 28            [12]  477 	mov	r0,#_ID
      00090C E6               [12]  478 	mov	a,@r0
      00090D 24 20            [12]  479 	add	a,#_ssp
      00090F F9               [12]  480 	mov	r1,a
      000910 87 81            [24]  481 	mov	_SP,@r1
      000912 D0 D0            [24]  482 	pop PSW 
      000914 D0 83            [24]  483 	pop DPH 
      000916 D0 82            [24]  484 	pop DPL 
      000918 D0 F0            [24]  485 	pop B 
      00091A D0 E0            [24]  486 	pop ACC 
                                    487 ;	preemptive.c:53: EA = 1;
      00091C D2 AF            [12]  488 	setb	_EA
                                    489 ;	preemptive.c:54: return;
      00091E 22               [24]  490 	ret
      00091F                        491 00110$:
                                    492 ;	preemptive.c:56: EA = 1;
      00091F D2 AF            [12]  493 	setb	_EA
      000921 02 08 A5         [24]  494 	ljmp	00112$
                                    495 ;------------------------------------------------------------
                                    496 ;Allocation info for local variables in function 'myTimer0Handler'
                                    497 ;------------------------------------------------------------
                                    498 ;	preemptive.c:60: void myTimer0Handler(void){
                                    499 ;	-----------------------------------------
                                    500 ;	 function myTimer0Handler
                                    501 ;	-----------------------------------------
      000924                        502 _myTimer0Handler:
                                    503 ;	preemptive.c:61: SAVESTATE;
      000924 C0 E0            [24]  504 	push ACC 
      000926 C0 F0            [24]  505 	push B 
      000928 C0 82            [24]  506 	push DPL 
      00092A C0 83            [24]  507 	push DPH 
      00092C C0 D0            [24]  508 	push PSW 
      00092E C2 D4            [12]  509 	clr RS1 
      000930 C2 D3            [12]  510 	clr RS0 
      000932 78 28            [12]  511 	mov	r0,#_ID
      000934 E6               [12]  512 	mov	a,@r0
      000935 24 20            [12]  513 	add	a,#_ssp
      000937 F8               [12]  514 	mov	r0,a
      000938 A6 81            [24]  515 	mov	@r0,_SP
                                    516 ;	preemptive.c:63: flag = 0;
      00093A 78 4B            [12]  517 	mov	r0,#_flag
      00093C 76 00            [12]  518 	mov	@r0,#0x00
                                    519 ;	preemptive.c:65: counter = (counter==4) ? 0 : counter+1;
      00093E 78 3E            [12]  520 	mov	r0,#_counter
      000940 B6 04 04         [24]  521 	cjne	@r0,#0x04,00118$
      000943 7F 00            [12]  522 	mov	r7,#0x00
      000945 80 05            [24]  523 	sjmp	00119$
      000947                        524 00118$:
      000947 78 3E            [12]  525 	mov	r0,#_counter
      000949 E6               [12]  526 	mov	a,@r0
      00094A 04               [12]  527 	inc	a
      00094B FF               [12]  528 	mov	r7,a
      00094C                        529 00119$:
      00094C 78 3E            [12]  530 	mov	r0,#_counter
      00094E A6 07            [24]  531 	mov	@r0,ar7
                                    532 ;	preemptive.c:66: if(!counter) time++;
      000950 78 3E            [12]  533 	mov	r0,#_counter
      000952 E6               [12]  534 	mov	a,@r0
      000953 70 03            [24]  535 	jnz	00102$
      000955 78 3F            [12]  536 	mov	r0,#_time
      000957 06               [12]  537 	inc	@r0
      000958                        538 00102$:
                                    539 ;	preemptive.c:68: for(i=1;i<MAXTHREADS;i++){
      000958 78 2C            [12]  540 	mov	r0,#_i
      00095A 76 01            [12]  541 	mov	@r0,#0x01
      00095C                        542 00114$:
      00095C 78 2C            [12]  543 	mov	r0,#_i
      00095E C3               [12]  544 	clr	c
      00095F E6               [12]  545 	mov	a,@r0
      000960 64 80            [12]  546 	xrl	a,#0x80
      000962 94 84            [12]  547 	subb	a,#0x84
      000964 50 5A            [24]  548 	jnc	00112$
                                    549 ;	preemptive.c:69: if( bitmap[i]>0 ){
      000966 78 2C            [12]  550 	mov	r0,#_i
      000968 E6               [12]  551 	mov	a,@r0
      000969 24 24            [12]  552 	add	a,#_bitmap
      00096B F9               [12]  553 	mov	r1,a
      00096C 87 07            [24]  554 	mov	ar7,@r1
      00096E C3               [12]  555 	clr	c
      00096F 74 80            [12]  556 	mov	a,#(0x00 ^ 0x80)
      000971 8F F0            [24]  557 	mov	b,r7
      000973 63 F0 80         [24]  558 	xrl	b,#0x80
      000976 95 F0            [12]  559 	subb	a,b
      000978 50 20            [24]  560 	jnc	00110$
                                    561 ;	preemptive.c:70: if( i==ID ) bitmap[i]=1;
      00097A 78 2C            [12]  562 	mov	r0,#_i
      00097C 79 28            [12]  563 	mov	r1,#_ID
      00097E 86 F0            [24]  564 	mov	b,@r0
      000980 E7               [12]  565 	mov	a,@r1
      000981 B5 F0 0A         [24]  566 	cjne	a,b,00104$
      000984 78 2C            [12]  567 	mov	r0,#_i
      000986 E6               [12]  568 	mov	a,@r0
      000987 24 24            [12]  569 	add	a,#_bitmap
      000989 F8               [12]  570 	mov	r0,a
      00098A 76 01            [12]  571 	mov	@r0,#0x01
      00098C 80 2D            [24]  572 	sjmp	00115$
      00098E                        573 00104$:
                                    574 ;	preemptive.c:71: else bitmap[i]++;
      00098E 78 2C            [12]  575 	mov	r0,#_i
      000990 E6               [12]  576 	mov	a,@r0
      000991 24 24            [12]  577 	add	a,#_bitmap
      000993 F9               [12]  578 	mov	r1,a
      000994 E7               [12]  579 	mov	a,@r1
      000995 FF               [12]  580 	mov	r7,a
      000996 04               [12]  581 	inc	a
      000997 F7               [12]  582 	mov	@r1,a
      000998 80 21            [24]  583 	sjmp	00115$
      00099A                        584 00110$:
                                    585 ;	preemptive.c:73: else if( bitmap[i]==-2 && D[i]==time ) bitmap[i] = 9;
      00099A 78 2C            [12]  586 	mov	r0,#_i
      00099C E6               [12]  587 	mov	a,@r0
      00099D 24 24            [12]  588 	add	a,#_bitmap
      00099F F9               [12]  589 	mov	r1,a
      0009A0 87 07            [24]  590 	mov	ar7,@r1
      0009A2 BF FE 16         [24]  591 	cjne	r7,#0xFE,00115$
      0009A5 78 2C            [12]  592 	mov	r0,#_i
      0009A7 E6               [12]  593 	mov	a,@r0
      0009A8 24 2C            [12]  594 	add	a,#_D
      0009AA F9               [12]  595 	mov	r1,a
      0009AB 87 07            [24]  596 	mov	ar7,@r1
      0009AD 78 3F            [12]  597 	mov	r0,#_time
      0009AF E6               [12]  598 	mov	a,@r0
      0009B0 B5 07 08         [24]  599 	cjne	a,ar7,00115$
      0009B3 78 2C            [12]  600 	mov	r0,#_i
      0009B5 E6               [12]  601 	mov	a,@r0
      0009B6 24 24            [12]  602 	add	a,#_bitmap
      0009B8 F8               [12]  603 	mov	r0,a
      0009B9 76 09            [12]  604 	mov	@r0,#0x09
      0009BB                        605 00115$:
                                    606 ;	preemptive.c:68: for(i=1;i<MAXTHREADS;i++){
      0009BB 78 2C            [12]  607 	mov	r0,#_i
      0009BD 06               [12]  608 	inc	@r0
      0009BE 80 9C            [24]  609 	sjmp	00114$
      0009C0                        610 00112$:
                                    611 ;	preemptive.c:75: ID = 0;//manager_ID
      0009C0 78 28            [12]  612 	mov	r0,#_ID
      0009C2 76 00            [12]  613 	mov	@r0,#0x00
                                    614 ;	preemptive.c:76: RESTORESTATE;
      0009C4 78 28            [12]  615 	mov	r0,#_ID
      0009C6 E6               [12]  616 	mov	a,@r0
      0009C7 24 20            [12]  617 	add	a,#_ssp
      0009C9 F9               [12]  618 	mov	r1,a
      0009CA 87 81            [24]  619 	mov	_SP,@r1
      0009CC D0 D0            [24]  620 	pop PSW 
      0009CE D0 83            [24]  621 	pop DPH 
      0009D0 D0 82            [24]  622 	pop DPL 
      0009D2 D0 F0            [24]  623 	pop B 
      0009D4 D0 E0            [24]  624 	pop ACC 
                                    625 ;	preemptive.c:79: __endasm;
      0009D6 32               [24]  626 	reti
      0009D7 22               [24]  627 	ret
                                    628 ;------------------------------------------------------------
                                    629 ;Allocation info for local variables in function 'Bootstrap'
                                    630 ;------------------------------------------------------------
                                    631 ;	preemptive.c:82: void Bootstrap(void) {
                                    632 ;	-----------------------------------------
                                    633 ;	 function Bootstrap
                                    634 ;	-----------------------------------------
      0009D8                        635 _Bootstrap:
                                    636 ;	preemptive.c:83: bitmap[0] = bitmap[1] = bitmap[2] = bitmap[3] = 0;
      0009D8 78 27            [12]  637 	mov	r0,#(_bitmap + 0x0003)
      0009DA 76 00            [12]  638 	mov	@r0,#0x00
      0009DC 78 26            [12]  639 	mov	r0,#(_bitmap + 0x0002)
      0009DE 76 00            [12]  640 	mov	@r0,#0x00
      0009E0 78 25            [12]  641 	mov	r0,#(_bitmap + 0x0001)
      0009E2 76 00            [12]  642 	mov	@r0,#0x00
      0009E4 78 24            [12]  643 	mov	r0,#_bitmap
      0009E6 76 00            [12]  644 	mov	@r0,#0x00
                                    645 ;	preemptive.c:84: time = 1;
      0009E8 78 3F            [12]  646 	mov	r0,#_time
      0009EA 76 01            [12]  647 	mov	@r0,#0x01
                                    648 ;	preemptive.c:85: counter = 0;
      0009EC 78 3E            [12]  649 	mov	r0,#_counter
      0009EE 76 00            [12]  650 	mov	@r0,#0x00
                                    651 ;	preemptive.c:87: TMOD = 0;
      0009F0 75 89 00         [24]  652 	mov	_TMOD,#0x00
                                    653 ;	preemptive.c:88: IE = 0x82;
      0009F3 75 A8 82         [24]  654 	mov	_IE,#0x82
                                    655 ;	preemptive.c:89: TR0 = 1;
      0009F6 D2 8C            [12]  656 	setb	_TR0
                                    657 ;	preemptive.c:91: SemaphoreCreate(thread, 4);
      0009F8 78 3B            [12]  658 	mov	r0,#_thread
      0009FA 76 04            [12]  659 	mov	@r0,#0x04
                                    660 ;	preemptive.c:94: __endasm;
      0009FC 75 3D 7C         [24]  661 	mov _th_tail,#0x7C
                                    662 ;	preemptive.c:96: ThreadCreate(thread_manager);
      0009FF 90 08 A5         [24]  663 	mov	dptr,#_thread_manager
      000A02 12 0A 23         [24]  664 	lcall	_ThreadCreate
                                    665 ;	preemptive.c:97: ID = ThreadCreate(main);
      000A05 90 08 39         [24]  666 	mov	dptr,#_main
      000A08 12 0A 23         [24]  667 	lcall	_ThreadCreate
      000A0B E5 82            [12]  668 	mov	a,dpl
      000A0D 78 28            [12]  669 	mov	r0,#_ID
      000A0F F6               [12]  670 	mov	@r0,a
                                    671 ;	preemptive.c:98: RESTORESTATE;
      000A10 78 28            [12]  672 	mov	r0,#_ID
      000A12 E6               [12]  673 	mov	a,@r0
      000A13 24 20            [12]  674 	add	a,#_ssp
      000A15 F9               [12]  675 	mov	r1,a
      000A16 87 81            [24]  676 	mov	_SP,@r1
      000A18 D0 D0            [24]  677 	pop PSW 
      000A1A D0 83            [24]  678 	pop DPH 
      000A1C D0 82            [24]  679 	pop DPL 
      000A1E D0 F0            [24]  680 	pop B 
      000A20 D0 E0            [24]  681 	pop ACC 
      000A22 22               [24]  682 	ret
                                    683 ;------------------------------------------------------------
                                    684 ;Allocation info for local variables in function 'ThreadCreate'
                                    685 ;------------------------------------------------------------
                                    686 ;fp                        Allocated to registers 
                                    687 ;------------------------------------------------------------
                                    688 ;	preemptive.c:101: ThreadID ThreadCreate(FunctionPtr fp) {
                                    689 ;	-----------------------------------------
                                    690 ;	 function ThreadCreate
                                    691 ;	-----------------------------------------
      000A23                        692 _ThreadCreate:
                                    693 ;	preemptive.c:102: SemaphoreWait(thread,th_tail);
      000A23 C2 AF            [12]  694 	clr	_EA
      000A25 78 3B            [12]  695 	mov	r0,#_thread
      000A27 16               [12]  696 	dec	@r0
      000A28 78 3B            [12]  697 	mov	r0,#_thread
      000A2A E6               [12]  698 	mov	a,@r0
      000A2B 30 E7 13         [24]  699 	jnb	acc.7,00102$
      000A2E 05 3D            [12]  700 	inc	_th_tail
      000A30 A9 3D            [24]  701 	mov	r1,_th_tail
      000A32 78 28            [12]  702 	mov	r0,#_ID
      000A34 E6               [12]  703 	mov	a,@r0
      000A35 F7               [12]  704 	mov	@r1,a
      000A36 78 28            [12]  705 	mov	r0,#_ID
      000A38 E6               [12]  706 	mov	a,@r0
      000A39 24 24            [12]  707 	add	a,#_bitmap
      000A3B F8               [12]  708 	mov	r0,a
      000A3C 76 FF            [12]  709 	mov	@r0,#0xFF
      000A3E 12 0A BA         [24]  710 	lcall	_ThreadYield
      000A41                        711 00102$:
      000A41 D2 AF            [12]  712 	setb	_EA
                                    713 ;	preemptive.c:103: EA = 0;
      000A43 C2 AF            [12]  714 	clr	_EA
                                    715 ;	preemptive.c:104: for(i=0;i<MAXTHREADS;i++) if(!bitmap[i]) break;
      000A45 78 2C            [12]  716 	mov	r0,#_i
      000A47 76 00            [12]  717 	mov	@r0,#0x00
      000A49                        718 00109$:
      000A49 78 2C            [12]  719 	mov	r0,#_i
      000A4B C3               [12]  720 	clr	c
      000A4C E6               [12]  721 	mov	a,@r0
      000A4D 64 80            [12]  722 	xrl	a,#0x80
      000A4F 94 84            [12]  723 	subb	a,#0x84
      000A51 50 0E            [24]  724 	jnc	00105$
      000A53 78 2C            [12]  725 	mov	r0,#_i
      000A55 E6               [12]  726 	mov	a,@r0
      000A56 24 24            [12]  727 	add	a,#_bitmap
      000A58 F9               [12]  728 	mov	r1,a
      000A59 E7               [12]  729 	mov	a,@r1
      000A5A 60 05            [24]  730 	jz	00105$
      000A5C 78 2C            [12]  731 	mov	r0,#_i
      000A5E 06               [12]  732 	inc	@r0
      000A5F 80 E8            [24]  733 	sjmp	00109$
      000A61                        734 00105$:
                                    735 ;	preemptive.c:105: if(i==MAXTHREADS) return -1;
      000A61 78 2C            [12]  736 	mov	r0,#_i
      000A63 B6 04 04         [24]  737 	cjne	@r0,#0x04,00107$
      000A66 75 82 FF         [24]  738 	mov	dpl,#0xFF
      000A69 22               [24]  739 	ret
      000A6A                        740 00107$:
                                    741 ;	preemptive.c:107: bitmap[i] = 1;
      000A6A 78 2C            [12]  742 	mov	r0,#_i
      000A6C E6               [12]  743 	mov	a,@r0
      000A6D 24 24            [12]  744 	add	a,#_bitmap
      000A6F F8               [12]  745 	mov	r0,a
      000A70 76 01            [12]  746 	mov	@r0,#0x01
                                    747 ;	preemptive.c:108: temp1 = SP;
      000A72 78 2A            [12]  748 	mov	r0,#_temp1
      000A74 A6 81            [24]  749 	mov	@r0,_SP
                                    750 ;	preemptive.c:109: SP = 0x3F + i*0x10;
      000A76 78 2C            [12]  751 	mov	r0,#_i
      000A78 E6               [12]  752 	mov	a,@r0
      000A79 C4               [12]  753 	swap	a
      000A7A 54 F0            [12]  754 	anl	a,#0xF0
      000A7C FF               [12]  755 	mov	r7,a
      000A7D 24 3F            [12]  756 	add	a,#0x3F
      000A7F F5 81            [12]  757 	mov	_SP,a
                                    758 ;	preemptive.c:124: __endasm;
      000A81 E5 82            [12]  759 	mov a,DPL
      000A83 85 83 F0         [24]  760 	mov b,DPH
      000A86 90 0B 09         [24]  761 	mov dptr,#_ThreadExit
      000A89 C0 82            [24]  762 	push DPL
      000A8B C0 83            [24]  763 	push DPH
      000A8D C0 E0            [24]  764 	push a
      000A8F C0 F0            [24]  765 	push b
      000A91 74 00            [12]  766 	mov a,#0x00
      000A93 C0 E0            [24]  767 	push a
      000A95 C0 E0            [24]  768 	push a
      000A97 C0 E0            [24]  769 	push a
      000A99 C0 E0            [24]  770 	push a
                                    771 ;	preemptive.c:125: temp3 = i<<3;
      000A9B 78 2C            [12]  772 	mov	r0,#_i
      000A9D 79 6B            [12]  773 	mov	r1,#_temp3
      000A9F E6               [12]  774 	mov	a,@r0
      000AA0 C4               [12]  775 	swap	a
      000AA1 03               [12]  776 	rr	a
      000AA2 54 F8            [12]  777 	anl	a,#0xF8
      000AA4 F7               [12]  778 	mov	@r1,a
                                    779 ;	preemptive.c:128: __endasm;
      000AA5 C0 6B            [24]  780 	push _temp3
                                    781 ;	preemptive.c:130: ssp[i] = SP;
      000AA7 78 2C            [12]  782 	mov	r0,#_i
      000AA9 E6               [12]  783 	mov	a,@r0
      000AAA 24 20            [12]  784 	add	a,#_ssp
      000AAC F8               [12]  785 	mov	r0,a
      000AAD A6 81            [24]  786 	mov	@r0,_SP
                                    787 ;	preemptive.c:131: SP = temp1;
      000AAF 78 2A            [12]  788 	mov	r0,#_temp1
      000AB1 86 81            [24]  789 	mov	_SP,@r0
                                    790 ;	preemptive.c:132: EA = 1;
      000AB3 D2 AF            [12]  791 	setb	_EA
                                    792 ;	preemptive.c:133: return i;
      000AB5 78 2C            [12]  793 	mov	r0,#_i
      000AB7 86 82            [24]  794 	mov	dpl,@r0
      000AB9 22               [24]  795 	ret
                                    796 ;------------------------------------------------------------
                                    797 ;Allocation info for local variables in function 'ThreadYield'
                                    798 ;------------------------------------------------------------
                                    799 ;	preemptive.c:136: void ThreadYield(void) {
                                    800 ;	-----------------------------------------
                                    801 ;	 function ThreadYield
                                    802 ;	-----------------------------------------
      000ABA                        803 _ThreadYield:
                                    804 ;	preemptive.c:137: EA = 0;
      000ABA C2 AF            [12]  805 	clr	_EA
                                    806 ;	preemptive.c:138: SAVESTATE;
      000ABC C0 E0            [24]  807 	push ACC 
      000ABE C0 F0            [24]  808 	push B 
      000AC0 C0 82            [24]  809 	push DPL 
      000AC2 C0 83            [24]  810 	push DPH 
      000AC4 C0 D0            [24]  811 	push PSW 
      000AC6 C2 D4            [12]  812 	clr RS1 
      000AC8 C2 D3            [12]  813 	clr RS0 
      000ACA 78 28            [12]  814 	mov	r0,#_ID
      000ACC E6               [12]  815 	mov	a,@r0
      000ACD 24 20            [12]  816 	add	a,#_ssp
      000ACF F8               [12]  817 	mov	r0,a
      000AD0 A6 81            [24]  818 	mov	@r0,_SP
                                    819 ;	preemptive.c:139: do {
      000AD2                        820 00106$:
                                    821 ;	preemptive.c:140: if(ID==MAXTHREADS-1) ID = 0;
      000AD2 78 28            [12]  822 	mov	r0,#_ID
      000AD4 B6 03 06         [24]  823 	cjne	@r0,#0x03,00102$
      000AD7 78 28            [12]  824 	mov	r0,#_ID
      000AD9 76 00            [12]  825 	mov	@r0,#0x00
      000ADB 80 03            [24]  826 	sjmp	00103$
      000ADD                        827 00102$:
                                    828 ;	preemptive.c:141: else ID++;
      000ADD 78 28            [12]  829 	mov	r0,#_ID
      000ADF 06               [12]  830 	inc	@r0
      000AE0                        831 00103$:
                                    832 ;	preemptive.c:142: if(bitmap[ID]>0) break;
      000AE0 78 28            [12]  833 	mov	r0,#_ID
      000AE2 E6               [12]  834 	mov	a,@r0
      000AE3 24 24            [12]  835 	add	a,#_bitmap
      000AE5 F9               [12]  836 	mov	r1,a
      000AE6 87 07            [24]  837 	mov	ar7,@r1
      000AE8 C3               [12]  838 	clr	c
      000AE9 74 80            [12]  839 	mov	a,#(0x00 ^ 0x80)
      000AEB 8F F0            [24]  840 	mov	b,r7
      000AED 63 F0 80         [24]  841 	xrl	b,#0x80
      000AF0 95 F0            [12]  842 	subb	a,b
      000AF2 50 DE            [24]  843 	jnc	00106$
                                    844 ;	preemptive.c:144: RESTORESTATE;
      000AF4 78 28            [12]  845 	mov	r0,#_ID
      000AF6 E6               [12]  846 	mov	a,@r0
      000AF7 24 20            [12]  847 	add	a,#_ssp
      000AF9 F9               [12]  848 	mov	r1,a
      000AFA 87 81            [24]  849 	mov	_SP,@r1
      000AFC D0 D0            [24]  850 	pop PSW 
      000AFE D0 83            [24]  851 	pop DPH 
      000B00 D0 82            [24]  852 	pop DPL 
      000B02 D0 F0            [24]  853 	pop B 
      000B04 D0 E0            [24]  854 	pop ACC 
                                    855 ;	preemptive.c:145: EA = 1;
      000B06 D2 AF            [12]  856 	setb	_EA
      000B08 22               [24]  857 	ret
                                    858 ;------------------------------------------------------------
                                    859 ;Allocation info for local variables in function 'ThreadExit'
                                    860 ;------------------------------------------------------------
                                    861 ;	preemptive.c:148: void ThreadExit(void) {
                                    862 ;	-----------------------------------------
                                    863 ;	 function ThreadExit
                                    864 ;	-----------------------------------------
      000B09                        865 _ThreadExit:
                                    866 ;	preemptive.c:149: SemaphoreSignal(thread,th_tail);
      000B09 C2 AF            [12]  867 	clr	_EA
      000B0B 78 3B            [12]  868 	mov	r0,#_thread
      000B0D 06               [12]  869 	inc	@r0
      000B0E 78 3B            [12]  870 	mov	r0,#_thread
      000B10 C3               [12]  871 	clr	c
      000B11 74 80            [12]  872 	mov	a,#(0x00 ^ 0x80)
      000B13 86 F0            [24]  873 	mov	b,@r0
      000B15 63 F0 80         [24]  874 	xrl	b,#0x80
      000B18 95 F0            [12]  875 	subb	a,b
      000B1A 40 0B            [24]  876 	jc	00102$
      000B1C A9 3D            [24]  877 	mov	r1,_th_tail
      000B1E E7               [12]  878 	mov	a,@r1
      000B1F FF               [12]  879 	mov	r7,a
      000B20 24 24            [12]  880 	add	a,#_bitmap
      000B22 F8               [12]  881 	mov	r0,a
      000B23 76 01            [12]  882 	mov	@r0,#0x01
      000B25 15 3D            [12]  883 	dec	_th_tail
      000B27                        884 00102$:
      000B27 D2 AF            [12]  885 	setb	_EA
                                    886 ;	preemptive.c:150: EA = 0;
      000B29 C2 AF            [12]  887 	clr	_EA
                                    888 ;	preemptive.c:151: bitmap[ID] = 0;
      000B2B 78 28            [12]  889 	mov	r0,#_ID
      000B2D E6               [12]  890 	mov	a,@r0
      000B2E 24 24            [12]  891 	add	a,#_bitmap
      000B30 F8               [12]  892 	mov	r0,a
      000B31 76 00            [12]  893 	mov	@r0,#0x00
                                    894 ;	preemptive.c:155: __endasm;
      000B33 C2 D4            [12]  895 	clr RS1
      000B35 C2 D3            [12]  896 	clr RS0
                                    897 ;	preemptive.c:156: do {
      000B37                        898 00108$:
                                    899 ;	preemptive.c:157: if(ID==MAXTHREADS-1) ID = 0;
      000B37 78 28            [12]  900 	mov	r0,#_ID
      000B39 B6 03 06         [24]  901 	cjne	@r0,#0x03,00104$
      000B3C 78 28            [12]  902 	mov	r0,#_ID
      000B3E 76 00            [12]  903 	mov	@r0,#0x00
      000B40 80 03            [24]  904 	sjmp	00105$
      000B42                        905 00104$:
                                    906 ;	preemptive.c:158: else ID++;
      000B42 78 28            [12]  907 	mov	r0,#_ID
      000B44 06               [12]  908 	inc	@r0
      000B45                        909 00105$:
                                    910 ;	preemptive.c:159: if(bitmap[ID]>0) break;
      000B45 78 28            [12]  911 	mov	r0,#_ID
      000B47 E6               [12]  912 	mov	a,@r0
      000B48 24 24            [12]  913 	add	a,#_bitmap
      000B4A F9               [12]  914 	mov	r1,a
      000B4B 87 07            [24]  915 	mov	ar7,@r1
      000B4D C3               [12]  916 	clr	c
      000B4E 74 80            [12]  917 	mov	a,#(0x00 ^ 0x80)
      000B50 8F F0            [24]  918 	mov	b,r7
      000B52 63 F0 80         [24]  919 	xrl	b,#0x80
      000B55 95 F0            [12]  920 	subb	a,b
      000B57 50 DE            [24]  921 	jnc	00108$
                                    922 ;	preemptive.c:161: RESTORESTATE;
      000B59 78 28            [12]  923 	mov	r0,#_ID
      000B5B E6               [12]  924 	mov	a,@r0
      000B5C 24 20            [12]  925 	add	a,#_ssp
      000B5E F9               [12]  926 	mov	r1,a
      000B5F 87 81            [24]  927 	mov	_SP,@r1
      000B61 D0 D0            [24]  928 	pop PSW 
      000B63 D0 83            [24]  929 	pop DPH 
      000B65 D0 82            [24]  930 	pop DPL 
      000B67 D0 F0            [24]  931 	pop B 
      000B69 D0 E0            [24]  932 	pop ACC 
                                    933 ;	preemptive.c:162: EA = 1;
      000B6B D2 AF            [12]  934 	setb	_EA
      000B6D 22               [24]  935 	ret
                                    936 	.area CSEG    (CODE)
                                    937 	.area CONST   (CODE)
                                    938 	.area XINIT   (CODE)
                                    939 	.area CABS    (ABS,CODE)
