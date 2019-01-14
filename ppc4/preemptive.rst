                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Mon Jan 14 14:52:52 2019
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
                                    112 	.globl _i
                                    113 	.globl _temp2
                                    114 	.globl _temp1
                                    115 	.globl _manager_ID
                                    116 	.globl _ID
                                    117 	.globl _bitmap
                                    118 	.globl _ssp
                                    119 	.globl _ThreadCreate
                                    120 	.globl _ThreadYield
                                    121 	.globl _ThreadExit
                                    122 ;--------------------------------------------------------
                                    123 ; special function registers
                                    124 ;--------------------------------------------------------
                                    125 	.area RSEG    (ABS,DATA)
      000000                        126 	.org 0x0000
                           000080   127 _P0	=	0x0080
                           000081   128 _SP	=	0x0081
                           000082   129 _DPL	=	0x0082
                           000083   130 _DPH	=	0x0083
                           000087   131 _PCON	=	0x0087
                           000088   132 _TCON	=	0x0088
                           000089   133 _TMOD	=	0x0089
                           00008A   134 _TL0	=	0x008a
                           00008B   135 _TL1	=	0x008b
                           00008C   136 _TH0	=	0x008c
                           00008D   137 _TH1	=	0x008d
                           000090   138 _P1	=	0x0090
                           000098   139 _SCON	=	0x0098
                           000099   140 _SBUF	=	0x0099
                           0000A0   141 _P2	=	0x00a0
                           0000A8   142 _IE	=	0x00a8
                           0000B0   143 _P3	=	0x00b0
                           0000B8   144 _IP	=	0x00b8
                           0000D0   145 _PSW	=	0x00d0
                           0000E0   146 _ACC	=	0x00e0
                           0000F0   147 _B	=	0x00f0
                                    148 ;--------------------------------------------------------
                                    149 ; special function bits
                                    150 ;--------------------------------------------------------
                                    151 	.area RSEG    (ABS,DATA)
      000000                        152 	.org 0x0000
                           000080   153 _P0_0	=	0x0080
                           000081   154 _P0_1	=	0x0081
                           000082   155 _P0_2	=	0x0082
                           000083   156 _P0_3	=	0x0083
                           000084   157 _P0_4	=	0x0084
                           000085   158 _P0_5	=	0x0085
                           000086   159 _P0_6	=	0x0086
                           000087   160 _P0_7	=	0x0087
                           000088   161 _IT0	=	0x0088
                           000089   162 _IE0	=	0x0089
                           00008A   163 _IT1	=	0x008a
                           00008B   164 _IE1	=	0x008b
                           00008C   165 _TR0	=	0x008c
                           00008D   166 _TF0	=	0x008d
                           00008E   167 _TR1	=	0x008e
                           00008F   168 _TF1	=	0x008f
                           000090   169 _P1_0	=	0x0090
                           000091   170 _P1_1	=	0x0091
                           000092   171 _P1_2	=	0x0092
                           000093   172 _P1_3	=	0x0093
                           000094   173 _P1_4	=	0x0094
                           000095   174 _P1_5	=	0x0095
                           000096   175 _P1_6	=	0x0096
                           000097   176 _P1_7	=	0x0097
                           000098   177 _RI	=	0x0098
                           000099   178 _TI	=	0x0099
                           00009A   179 _RB8	=	0x009a
                           00009B   180 _TB8	=	0x009b
                           00009C   181 _REN	=	0x009c
                           00009D   182 _SM2	=	0x009d
                           00009E   183 _SM1	=	0x009e
                           00009F   184 _SM0	=	0x009f
                           0000A0   185 _P2_0	=	0x00a0
                           0000A1   186 _P2_1	=	0x00a1
                           0000A2   187 _P2_2	=	0x00a2
                           0000A3   188 _P2_3	=	0x00a3
                           0000A4   189 _P2_4	=	0x00a4
                           0000A5   190 _P2_5	=	0x00a5
                           0000A6   191 _P2_6	=	0x00a6
                           0000A7   192 _P2_7	=	0x00a7
                           0000A8   193 _EX0	=	0x00a8
                           0000A9   194 _ET0	=	0x00a9
                           0000AA   195 _EX1	=	0x00aa
                           0000AB   196 _ET1	=	0x00ab
                           0000AC   197 _ES	=	0x00ac
                           0000AF   198 _EA	=	0x00af
                           0000B0   199 _P3_0	=	0x00b0
                           0000B1   200 _P3_1	=	0x00b1
                           0000B2   201 _P3_2	=	0x00b2
                           0000B3   202 _P3_3	=	0x00b3
                           0000B4   203 _P3_4	=	0x00b4
                           0000B5   204 _P3_5	=	0x00b5
                           0000B6   205 _P3_6	=	0x00b6
                           0000B7   206 _P3_7	=	0x00b7
                           0000B0   207 _RXD	=	0x00b0
                           0000B1   208 _TXD	=	0x00b1
                           0000B2   209 _INT0	=	0x00b2
                           0000B3   210 _INT1	=	0x00b3
                           0000B4   211 _T0	=	0x00b4
                           0000B5   212 _T1	=	0x00b5
                           0000B6   213 _WR	=	0x00b6
                           0000B7   214 _RD	=	0x00b7
                           0000B8   215 _PX0	=	0x00b8
                           0000B9   216 _PT0	=	0x00b9
                           0000BA   217 _PX1	=	0x00ba
                           0000BB   218 _PT1	=	0x00bb
                           0000BC   219 _PS	=	0x00bc
                           0000D0   220 _P	=	0x00d0
                           0000D1   221 _F1	=	0x00d1
                           0000D2   222 _OV	=	0x00d2
                           0000D3   223 _RS0	=	0x00d3
                           0000D4   224 _RS1	=	0x00d4
                           0000D5   225 _F0	=	0x00d5
                           0000D6   226 _AC	=	0x00d6
                           0000D7   227 _CY	=	0x00d7
                                    228 ;--------------------------------------------------------
                                    229 ; overlayable register banks
                                    230 ;--------------------------------------------------------
                                    231 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        232 	.ds 8
                                    233 ;--------------------------------------------------------
                                    234 ; internal ram data
                                    235 ;--------------------------------------------------------
                                    236 	.area DSEG    (DATA)
                                    237 ;--------------------------------------------------------
                                    238 ; overlayable items in internal ram 
                                    239 ;--------------------------------------------------------
                                    240 	.area	OSEG    (OVR,DATA)
                                    241 ;--------------------------------------------------------
                                    242 ; indirectly addressable internal ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area ISEG    (DATA)
                           000020   245 _ssp	=	0x0020
                           000024   246 _bitmap	=	0x0024
                           000028   247 _ID	=	0x0028
                           000029   248 _manager_ID	=	0x0029
                           00002A   249 _temp1	=	0x002a
                           00002B   250 _temp2	=	0x002b
                           00002C   251 _i	=	0x002c
                                    252 ;--------------------------------------------------------
                                    253 ; absolute internal ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area IABS    (ABS,DATA)
                                    256 	.area IABS    (ABS,DATA)
                                    257 ;--------------------------------------------------------
                                    258 ; bit data
                                    259 ;--------------------------------------------------------
                                    260 	.area BSEG    (BIT)
                                    261 ;--------------------------------------------------------
                                    262 ; paged external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area PSEG    (PAG,XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XSEG    (XDATA)
                                    269 ;--------------------------------------------------------
                                    270 ; absolute external ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area XABS    (ABS,XDATA)
                                    273 ;--------------------------------------------------------
                                    274 ; external initialized ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area XISEG   (XDATA)
                                    277 	.area HOME    (CODE)
                                    278 	.area GSINIT0 (CODE)
                                    279 	.area GSINIT1 (CODE)
                                    280 	.area GSINIT2 (CODE)
                                    281 	.area GSINIT3 (CODE)
                                    282 	.area GSINIT4 (CODE)
                                    283 	.area GSINIT5 (CODE)
                                    284 	.area GSINIT  (CODE)
                                    285 	.area GSFINAL (CODE)
                                    286 	.area CSEG    (CODE)
                                    287 ;--------------------------------------------------------
                                    288 ; global & static initialisations
                                    289 ;--------------------------------------------------------
                                    290 	.area HOME    (CODE)
                                    291 	.area GSINIT  (CODE)
                                    292 	.area GSFINAL (CODE)
                                    293 	.area GSINIT  (CODE)
                                    294 ;--------------------------------------------------------
                                    295 ; Home
                                    296 ;--------------------------------------------------------
                                    297 	.area HOME    (CODE)
                                    298 	.area HOME    (CODE)
                                    299 ;--------------------------------------------------------
                                    300 ; code
                                    301 ;--------------------------------------------------------
                                    302 	.area CSEG    (CODE)
                                    303 ;------------------------------------------------------------
                                    304 ;Allocation info for local variables in function 'thread_manager'
                                    305 ;------------------------------------------------------------
                                    306 ;	preemptive.c:30: void thread_manager(void){
                                    307 ;	-----------------------------------------
                                    308 ;	 function thread_manager
                                    309 ;	-----------------------------------------
      00025C                        310 _thread_manager:
                           000007   311 	ar7 = 0x07
                           000006   312 	ar6 = 0x06
                           000005   313 	ar5 = 0x05
                           000004   314 	ar4 = 0x04
                           000003   315 	ar3 = 0x03
                           000002   316 	ar2 = 0x02
                           000001   317 	ar1 = 0x01
                           000000   318 	ar0 = 0x00
                                    319 ;	preemptive.c:31: temp1 = temp2 = 0;
      00025C 78 2B            [12]  320 	mov	r0,#_temp2
      00025E 76 00            [12]  321 	mov	@r0,#0x00
      000260 78 2A            [12]  322 	mov	r0,#_temp1
      000262 76 00            [12]  323 	mov	@r0,#0x00
                                    324 ;	preemptive.c:32: while(temp2==0){
      000264                        325 00104$:
      000264 78 2B            [12]  326 	mov	r0,#_temp2
      000266 E6               [12]  327 	mov	a,@r0
      000267 70 3A            [24]  328 	jnz	00106$
                                    329 ;	preemptive.c:33: for(i=1;i<MAXTHREADS;i++) if( temp1<bitmap[i] ) {
      000269 78 2C            [12]  330 	mov	r0,#_i
      00026B 76 01            [12]  331 	mov	@r0,#0x01
      00026D                        332 00108$:
      00026D 78 2C            [12]  333 	mov	r0,#_i
      00026F C3               [12]  334 	clr	c
      000270 E6               [12]  335 	mov	a,@r0
      000271 64 80            [12]  336 	xrl	a,#0x80
      000273 94 84            [12]  337 	subb	a,#0x84
      000275 50 ED            [24]  338 	jnc	00104$
      000277 78 2C            [12]  339 	mov	r0,#_i
      000279 E6               [12]  340 	mov	a,@r0
      00027A 24 24            [12]  341 	add	a,#_bitmap
      00027C F9               [12]  342 	mov	r1,a
      00027D 87 07            [24]  343 	mov	ar7,@r1
      00027F 78 2A            [12]  344 	mov	r0,#_temp1
      000281 C3               [12]  345 	clr	c
      000282 E6               [12]  346 	mov	a,@r0
      000283 64 80            [12]  347 	xrl	a,#0x80
      000285 8F F0            [24]  348 	mov	b,r7
      000287 63 F0 80         [24]  349 	xrl	b,#0x80
      00028A 95 F0            [12]  350 	subb	a,b
      00028C 50 10            [24]  351 	jnc	00109$
                                    352 ;	preemptive.c:34: temp1 = bitmap[i];
      00028E 78 2C            [12]  353 	mov	r0,#_i
      000290 E6               [12]  354 	mov	a,@r0
      000291 24 24            [12]  355 	add	a,#_bitmap
      000293 F9               [12]  356 	mov	r1,a
      000294 78 2A            [12]  357 	mov	r0,#_temp1
      000296 E7               [12]  358 	mov	a,@r1
      000297 F6               [12]  359 	mov	@r0,a
                                    360 ;	preemptive.c:35: temp2 = i;
      000298 78 2C            [12]  361 	mov	r0,#_i
      00029A 79 2B            [12]  362 	mov	r1,#_temp2
      00029C E6               [12]  363 	mov	a,@r0
      00029D F7               [12]  364 	mov	@r1,a
      00029E                        365 00109$:
                                    366 ;	preemptive.c:33: for(i=1;i<MAXTHREADS;i++) if( temp1<bitmap[i] ) {
      00029E 78 2C            [12]  367 	mov	r0,#_i
      0002A0 06               [12]  368 	inc	@r0
      0002A1 80 CA            [24]  369 	sjmp	00108$
      0002A3                        370 00106$:
                                    371 ;	preemptive.c:38: ID = temp2;
      0002A3 78 2B            [12]  372 	mov	r0,#_temp2
      0002A5 79 28            [12]  373 	mov	r1,#_ID
      0002A7 E6               [12]  374 	mov	a,@r0
      0002A8 F7               [12]  375 	mov	@r1,a
                                    376 ;	preemptive.c:39: RESTORESTATE;
      0002A9 78 28            [12]  377 	mov	r0,#_ID
      0002AB E6               [12]  378 	mov	a,@r0
      0002AC 24 20            [12]  379 	add	a,#_ssp
      0002AE F9               [12]  380 	mov	r1,a
      0002AF 87 81            [24]  381 	mov	_SP,@r1
      0002B1 D0 D0            [24]  382 	pop PSW 
      0002B3 D0 83            [24]  383 	pop DPH 
      0002B5 D0 82            [24]  384 	pop DPL 
      0002B7 D0 F0            [24]  385 	pop B 
      0002B9 D0 E0            [24]  386 	pop ACC 
                                    387 ;	preemptive.c:42: __endasm;
      0002BB 32               [24]  388 	reti
      0002BC 22               [24]  389 	ret
                                    390 ;------------------------------------------------------------
                                    391 ;Allocation info for local variables in function 'myTimer0Handler'
                                    392 ;------------------------------------------------------------
                                    393 ;	preemptive.c:45: void myTimer0Handler(void){
                                    394 ;	-----------------------------------------
                                    395 ;	 function myTimer0Handler
                                    396 ;	-----------------------------------------
      0002BD                        397 _myTimer0Handler:
                                    398 ;	preemptive.c:46: SAVESTATE;
      0002BD C0 E0            [24]  399 	push ACC 
      0002BF C0 F0            [24]  400 	push B 
      0002C1 C0 82            [24]  401 	push DPL 
      0002C3 C0 83            [24]  402 	push DPH 
      0002C5 C0 D0            [24]  403 	push PSW 
      0002C7 C2 D4            [12]  404 	clr RS1 
      0002C9 C2 D3            [12]  405 	clr RS0 
      0002CB 78 28            [12]  406 	mov	r0,#_ID
      0002CD E6               [12]  407 	mov	a,@r0
      0002CE 24 20            [12]  408 	add	a,#_ssp
      0002D0 F8               [12]  409 	mov	r0,a
      0002D1 A6 81            [24]  410 	mov	@r0,_SP
                                    411 ;	preemptive.c:47: for(i=1;i<MAXTHREADS;i++){
      0002D3 78 2C            [12]  412 	mov	r0,#_i
      0002D5 76 01            [12]  413 	mov	@r0,#0x01
      0002D7                        414 00108$:
      0002D7 78 2C            [12]  415 	mov	r0,#_i
      0002D9 C3               [12]  416 	clr	c
      0002DA E6               [12]  417 	mov	a,@r0
      0002DB 64 80            [12]  418 	xrl	a,#0x80
      0002DD 94 84            [12]  419 	subb	a,#0x84
      0002DF 50 37            [24]  420 	jnc	00106$
                                    421 ;	preemptive.c:48: if( bitmap[i]>0 ){
      0002E1 78 2C            [12]  422 	mov	r0,#_i
      0002E3 E6               [12]  423 	mov	a,@r0
      0002E4 24 24            [12]  424 	add	a,#_bitmap
      0002E6 F9               [12]  425 	mov	r1,a
      0002E7 87 07            [24]  426 	mov	ar7,@r1
      0002E9 C3               [12]  427 	clr	c
      0002EA 74 80            [12]  428 	mov	a,#(0x00 ^ 0x80)
      0002EC 8F F0            [24]  429 	mov	b,r7
      0002EE 63 F0 80         [24]  430 	xrl	b,#0x80
      0002F1 95 F0            [12]  431 	subb	a,b
      0002F3 50 1E            [24]  432 	jnc	00109$
                                    433 ;	preemptive.c:49: if( i==ID ) bitmap[i]=1;
      0002F5 78 2C            [12]  434 	mov	r0,#_i
      0002F7 79 28            [12]  435 	mov	r1,#_ID
      0002F9 86 F0            [24]  436 	mov	b,@r0
      0002FB E7               [12]  437 	mov	a,@r1
      0002FC B5 F0 0A         [24]  438 	cjne	a,b,00102$
      0002FF 78 2C            [12]  439 	mov	r0,#_i
      000301 E6               [12]  440 	mov	a,@r0
      000302 24 24            [12]  441 	add	a,#_bitmap
      000304 F8               [12]  442 	mov	r0,a
      000305 76 01            [12]  443 	mov	@r0,#0x01
      000307 80 0A            [24]  444 	sjmp	00109$
      000309                        445 00102$:
                                    446 ;	preemptive.c:50: else bitmap[i]++;
      000309 78 2C            [12]  447 	mov	r0,#_i
      00030B E6               [12]  448 	mov	a,@r0
      00030C 24 24            [12]  449 	add	a,#_bitmap
      00030E F9               [12]  450 	mov	r1,a
      00030F E7               [12]  451 	mov	a,@r1
      000310 FF               [12]  452 	mov	r7,a
      000311 04               [12]  453 	inc	a
      000312 F7               [12]  454 	mov	@r1,a
      000313                        455 00109$:
                                    456 ;	preemptive.c:47: for(i=1;i<MAXTHREADS;i++){
      000313 78 2C            [12]  457 	mov	r0,#_i
      000315 06               [12]  458 	inc	@r0
      000316 80 BF            [24]  459 	sjmp	00108$
      000318                        460 00106$:
                                    461 ;	preemptive.c:53: ID = manager_ID;
      000318 78 29            [12]  462 	mov	r0,#_manager_ID
      00031A 79 28            [12]  463 	mov	r1,#_ID
      00031C E6               [12]  464 	mov	a,@r0
      00031D F7               [12]  465 	mov	@r1,a
                                    466 ;	preemptive.c:54: RESTORESTATE;
      00031E 78 28            [12]  467 	mov	r0,#_ID
      000320 E6               [12]  468 	mov	a,@r0
      000321 24 20            [12]  469 	add	a,#_ssp
      000323 F9               [12]  470 	mov	r1,a
      000324 87 81            [24]  471 	mov	_SP,@r1
      000326 D0 D0            [24]  472 	pop PSW 
      000328 D0 83            [24]  473 	pop DPH 
      00032A D0 82            [24]  474 	pop DPL 
      00032C D0 F0            [24]  475 	pop B 
      00032E D0 E0            [24]  476 	pop ACC 
      000330 22               [24]  477 	ret
                                    478 ;------------------------------------------------------------
                                    479 ;Allocation info for local variables in function 'Bootstrap'
                                    480 ;------------------------------------------------------------
                                    481 ;	preemptive.c:57: void Bootstrap(void) {
                                    482 ;	-----------------------------------------
                                    483 ;	 function Bootstrap
                                    484 ;	-----------------------------------------
      000331                        485 _Bootstrap:
                                    486 ;	preemptive.c:58: bitmap[0] = bitmap[1] = bitmap[2] = bitmap[3] = 0;
      000331 78 27            [12]  487 	mov	r0,#(_bitmap + 0x0003)
      000333 76 00            [12]  488 	mov	@r0,#0x00
      000335 78 26            [12]  489 	mov	r0,#(_bitmap + 0x0002)
      000337 76 00            [12]  490 	mov	@r0,#0x00
      000339 78 25            [12]  491 	mov	r0,#(_bitmap + 0x0001)
      00033B 76 00            [12]  492 	mov	@r0,#0x00
      00033D 78 24            [12]  493 	mov	r0,#_bitmap
      00033F 76 00            [12]  494 	mov	@r0,#0x00
                                    495 ;	preemptive.c:60: TMOD = 0;
      000341 75 89 00         [24]  496 	mov	_TMOD,#0x00
                                    497 ;	preemptive.c:61: IE = 0x82;
      000344 75 A8 82         [24]  498 	mov	_IE,#0x82
                                    499 ;	preemptive.c:62: TR0 = 1;
      000347 D2 8C            [12]  500 	setb	_TR0
                                    501 ;	preemptive.c:64: manager_ID = ThreadCreate(thread_manager);
      000349 90 02 5C         [24]  502 	mov	dptr,#_thread_manager
      00034C 12 03 72         [24]  503 	lcall	_ThreadCreate
      00034F E5 82            [12]  504 	mov	a,dpl
      000351 78 29            [12]  505 	mov	r0,#_manager_ID
      000353 F6               [12]  506 	mov	@r0,a
                                    507 ;	preemptive.c:65: ID = ThreadCreate(main);
      000354 90 02 19         [24]  508 	mov	dptr,#_main
      000357 12 03 72         [24]  509 	lcall	_ThreadCreate
      00035A E5 82            [12]  510 	mov	a,dpl
      00035C 78 28            [12]  511 	mov	r0,#_ID
      00035E F6               [12]  512 	mov	@r0,a
                                    513 ;	preemptive.c:66: RESTORESTATE;
      00035F 78 28            [12]  514 	mov	r0,#_ID
      000361 E6               [12]  515 	mov	a,@r0
      000362 24 20            [12]  516 	add	a,#_ssp
      000364 F9               [12]  517 	mov	r1,a
      000365 87 81            [24]  518 	mov	_SP,@r1
      000367 D0 D0            [24]  519 	pop PSW 
      000369 D0 83            [24]  520 	pop DPH 
      00036B D0 82            [24]  521 	pop DPL 
      00036D D0 F0            [24]  522 	pop B 
      00036F D0 E0            [24]  523 	pop ACC 
      000371 22               [24]  524 	ret
                                    525 ;------------------------------------------------------------
                                    526 ;Allocation info for local variables in function 'ThreadCreate'
                                    527 ;------------------------------------------------------------
                                    528 ;fp                        Allocated to registers 
                                    529 ;------------------------------------------------------------
                                    530 ;	preemptive.c:69: ThreadID ThreadCreate(FunctionPtr fp) {
                                    531 ;	-----------------------------------------
                                    532 ;	 function ThreadCreate
                                    533 ;	-----------------------------------------
      000372                        534 _ThreadCreate:
                                    535 ;	preemptive.c:70: EA = 0;
      000372 C2 AF            [12]  536 	clr	_EA
                                    537 ;	preemptive.c:71: for(i=0;i<MAXTHREADS;i++) if(!bitmap[i]) break;
      000374 78 2C            [12]  538 	mov	r0,#_i
      000376 76 00            [12]  539 	mov	@r0,#0x00
      000378                        540 00107$:
      000378 78 2C            [12]  541 	mov	r0,#_i
      00037A C3               [12]  542 	clr	c
      00037B E6               [12]  543 	mov	a,@r0
      00037C 64 80            [12]  544 	xrl	a,#0x80
      00037E 94 84            [12]  545 	subb	a,#0x84
      000380 50 0E            [24]  546 	jnc	00103$
      000382 78 2C            [12]  547 	mov	r0,#_i
      000384 E6               [12]  548 	mov	a,@r0
      000385 24 24            [12]  549 	add	a,#_bitmap
      000387 F9               [12]  550 	mov	r1,a
      000388 E7               [12]  551 	mov	a,@r1
      000389 60 05            [24]  552 	jz	00103$
      00038B 78 2C            [12]  553 	mov	r0,#_i
      00038D 06               [12]  554 	inc	@r0
      00038E 80 E8            [24]  555 	sjmp	00107$
      000390                        556 00103$:
                                    557 ;	preemptive.c:72: if(i==MAXTHREADS) return -1;
      000390 78 2C            [12]  558 	mov	r0,#_i
      000392 B6 04 04         [24]  559 	cjne	@r0,#0x04,00105$
      000395 75 82 FF         [24]  560 	mov	dpl,#0xFF
      000398 22               [24]  561 	ret
      000399                        562 00105$:
                                    563 ;	preemptive.c:74: bitmap[i] = 1;
      000399 78 2C            [12]  564 	mov	r0,#_i
      00039B E6               [12]  565 	mov	a,@r0
      00039C 24 24            [12]  566 	add	a,#_bitmap
      00039E F8               [12]  567 	mov	r0,a
      00039F 76 01            [12]  568 	mov	@r0,#0x01
                                    569 ;	preemptive.c:75: temp1 = SP;
      0003A1 78 2A            [12]  570 	mov	r0,#_temp1
      0003A3 A6 81            [24]  571 	mov	@r0,_SP
                                    572 ;	preemptive.c:76: SP = 0x3F + i*0x10;
      0003A5 78 2C            [12]  573 	mov	r0,#_i
      0003A7 E6               [12]  574 	mov	a,@r0
      0003A8 C4               [12]  575 	swap	a
      0003A9 54 F0            [12]  576 	anl	a,#0xF0
      0003AB FF               [12]  577 	mov	r7,a
      0003AC 24 3F            [12]  578 	add	a,#0x3F
      0003AE F5 81            [12]  579 	mov	_SP,a
                                    580 ;	preemptive.c:91: __endasm;
      0003B0 E5 82            [12]  581 	mov a,DPL
      0003B2 85 83 F0         [24]  582 	mov b,DPH
      0003B5 90 04 38         [24]  583 	mov dptr,#_ThreadExit
      0003B8 C0 82            [24]  584 	push DPL
      0003BA C0 83            [24]  585 	push DPH
      0003BC C0 E0            [24]  586 	push a
      0003BE C0 F0            [24]  587 	push b
      0003C0 74 00            [12]  588 	mov a,#0x00
      0003C2 C0 E0            [24]  589 	push a
      0003C4 C0 E0            [24]  590 	push a
      0003C6 C0 E0            [24]  591 	push a
      0003C8 C0 E0            [24]  592 	push a
                                    593 ;	preemptive.c:92: temp2 = i<<3;
      0003CA 78 2C            [12]  594 	mov	r0,#_i
      0003CC 79 2B            [12]  595 	mov	r1,#_temp2
      0003CE E6               [12]  596 	mov	a,@r0
      0003CF C4               [12]  597 	swap	a
      0003D0 03               [12]  598 	rr	a
      0003D1 54 F8            [12]  599 	anl	a,#0xF8
      0003D3 F7               [12]  600 	mov	@r1,a
                                    601 ;	preemptive.c:95: __endasm;
      0003D4 C0 2B            [24]  602 	push _temp2
                                    603 ;	preemptive.c:97: ssp[i] = SP;
      0003D6 78 2C            [12]  604 	mov	r0,#_i
      0003D8 E6               [12]  605 	mov	a,@r0
      0003D9 24 20            [12]  606 	add	a,#_ssp
      0003DB F8               [12]  607 	mov	r0,a
      0003DC A6 81            [24]  608 	mov	@r0,_SP
                                    609 ;	preemptive.c:98: SP = temp1;
      0003DE 78 2A            [12]  610 	mov	r0,#_temp1
      0003E0 86 81            [24]  611 	mov	_SP,@r0
                                    612 ;	preemptive.c:99: EA = 1;
      0003E2 D2 AF            [12]  613 	setb	_EA
                                    614 ;	preemptive.c:100: return i;
      0003E4 78 2C            [12]  615 	mov	r0,#_i
      0003E6 86 82            [24]  616 	mov	dpl,@r0
      0003E8 22               [24]  617 	ret
                                    618 ;------------------------------------------------------------
                                    619 ;Allocation info for local variables in function 'ThreadYield'
                                    620 ;------------------------------------------------------------
                                    621 ;	preemptive.c:103: void ThreadYield(void) {
                                    622 ;	-----------------------------------------
                                    623 ;	 function ThreadYield
                                    624 ;	-----------------------------------------
      0003E9                        625 _ThreadYield:
                                    626 ;	preemptive.c:104: EA = 0;
      0003E9 C2 AF            [12]  627 	clr	_EA
                                    628 ;	preemptive.c:105: SAVESTATE;
      0003EB C0 E0            [24]  629 	push ACC 
      0003ED C0 F0            [24]  630 	push B 
      0003EF C0 82            [24]  631 	push DPL 
      0003F1 C0 83            [24]  632 	push DPH 
      0003F3 C0 D0            [24]  633 	push PSW 
      0003F5 C2 D4            [12]  634 	clr RS1 
      0003F7 C2 D3            [12]  635 	clr RS0 
      0003F9 78 28            [12]  636 	mov	r0,#_ID
      0003FB E6               [12]  637 	mov	a,@r0
      0003FC 24 20            [12]  638 	add	a,#_ssp
      0003FE F8               [12]  639 	mov	r0,a
      0003FF A6 81            [24]  640 	mov	@r0,_SP
                                    641 ;	preemptive.c:106: do {
      000401                        642 00106$:
                                    643 ;	preemptive.c:107: if(ID==MAXTHREADS-1) ID = 1;
      000401 78 28            [12]  644 	mov	r0,#_ID
      000403 B6 03 06         [24]  645 	cjne	@r0,#0x03,00102$
      000406 78 28            [12]  646 	mov	r0,#_ID
      000408 76 01            [12]  647 	mov	@r0,#0x01
      00040A 80 03            [24]  648 	sjmp	00103$
      00040C                        649 00102$:
                                    650 ;	preemptive.c:108: else ID++;
      00040C 78 28            [12]  651 	mov	r0,#_ID
      00040E 06               [12]  652 	inc	@r0
      00040F                        653 00103$:
                                    654 ;	preemptive.c:109: if(bitmap[ID]>0) break;
      00040F 78 28            [12]  655 	mov	r0,#_ID
      000411 E6               [12]  656 	mov	a,@r0
      000412 24 24            [12]  657 	add	a,#_bitmap
      000414 F9               [12]  658 	mov	r1,a
      000415 87 07            [24]  659 	mov	ar7,@r1
      000417 C3               [12]  660 	clr	c
      000418 74 80            [12]  661 	mov	a,#(0x00 ^ 0x80)
      00041A 8F F0            [24]  662 	mov	b,r7
      00041C 63 F0 80         [24]  663 	xrl	b,#0x80
      00041F 95 F0            [12]  664 	subb	a,b
      000421 50 DE            [24]  665 	jnc	00106$
                                    666 ;	preemptive.c:111: RESTORESTATE;
      000423 78 28            [12]  667 	mov	r0,#_ID
      000425 E6               [12]  668 	mov	a,@r0
      000426 24 20            [12]  669 	add	a,#_ssp
      000428 F9               [12]  670 	mov	r1,a
      000429 87 81            [24]  671 	mov	_SP,@r1
      00042B D0 D0            [24]  672 	pop PSW 
      00042D D0 83            [24]  673 	pop DPH 
      00042F D0 82            [24]  674 	pop DPL 
      000431 D0 F0            [24]  675 	pop B 
      000433 D0 E0            [24]  676 	pop ACC 
                                    677 ;	preemptive.c:112: EA = 1;
      000435 D2 AF            [12]  678 	setb	_EA
      000437 22               [24]  679 	ret
                                    680 ;------------------------------------------------------------
                                    681 ;Allocation info for local variables in function 'ThreadExit'
                                    682 ;------------------------------------------------------------
                                    683 ;	preemptive.c:115: void ThreadExit(void) {
                                    684 ;	-----------------------------------------
                                    685 ;	 function ThreadExit
                                    686 ;	-----------------------------------------
      000438                        687 _ThreadExit:
                                    688 ;	preemptive.c:116: EA = 0;
      000438 C2 AF            [12]  689 	clr	_EA
                                    690 ;	preemptive.c:117: bitmap[ID] = 0;
      00043A 78 28            [12]  691 	mov	r0,#_ID
      00043C E6               [12]  692 	mov	a,@r0
      00043D 24 24            [12]  693 	add	a,#_bitmap
      00043F F8               [12]  694 	mov	r0,a
      000440 76 00            [12]  695 	mov	@r0,#0x00
                                    696 ;	preemptive.c:118: do {
      000442                        697 00106$:
                                    698 ;	preemptive.c:119: if(ID==MAXTHREADS-1) ID = 1;
      000442 78 28            [12]  699 	mov	r0,#_ID
      000444 B6 03 06         [24]  700 	cjne	@r0,#0x03,00102$
      000447 78 28            [12]  701 	mov	r0,#_ID
      000449 76 01            [12]  702 	mov	@r0,#0x01
      00044B 80 03            [24]  703 	sjmp	00103$
      00044D                        704 00102$:
                                    705 ;	preemptive.c:120: else ID++;
      00044D 78 28            [12]  706 	mov	r0,#_ID
      00044F 06               [12]  707 	inc	@r0
      000450                        708 00103$:
                                    709 ;	preemptive.c:121: if(bitmap[ID]>0) break;
      000450 78 28            [12]  710 	mov	r0,#_ID
      000452 E6               [12]  711 	mov	a,@r0
      000453 24 24            [12]  712 	add	a,#_bitmap
      000455 F9               [12]  713 	mov	r1,a
      000456 87 07            [24]  714 	mov	ar7,@r1
      000458 C3               [12]  715 	clr	c
      000459 74 80            [12]  716 	mov	a,#(0x00 ^ 0x80)
      00045B 8F F0            [24]  717 	mov	b,r7
      00045D 63 F0 80         [24]  718 	xrl	b,#0x80
      000460 95 F0            [12]  719 	subb	a,b
      000462 50 DE            [24]  720 	jnc	00106$
                                    721 ;	preemptive.c:123: RESTORESTATE;
      000464 78 28            [12]  722 	mov	r0,#_ID
      000466 E6               [12]  723 	mov	a,@r0
      000467 24 20            [12]  724 	add	a,#_ssp
      000469 F9               [12]  725 	mov	r1,a
      00046A 87 81            [24]  726 	mov	_SP,@r1
      00046C D0 D0            [24]  727 	pop PSW 
      00046E D0 83            [24]  728 	pop DPH 
      000470 D0 82            [24]  729 	pop DPL 
      000472 D0 F0            [24]  730 	pop B 
      000474 D0 E0            [24]  731 	pop ACC 
                                    732 ;	preemptive.c:124: EA = 1;
      000476 D2 AF            [12]  733 	setb	_EA
      000478 22               [24]  734 	ret
                                    735 	.area CSEG    (CODE)
                                    736 	.area CONST   (CODE)
                                    737 	.area XINIT   (CODE)
                                    738 	.area CABS    (ABS,CODE)
