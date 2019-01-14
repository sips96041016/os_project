;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
; This file was generated Tue Jan 15 02:58:35 2019
;--------------------------------------------------------
	.module testparking
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _timer0_ISR
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genXINIT
	.globl __mcs51_genRAMCLEAR
	.globl __sdcc_gsinit_startup
	.globl _main
	.globl _Printer
	.globl _Car5
	.globl _Car4
	.globl _Car3
	.globl _Car2
	.globl _Car1
	.globl _ThreadYield
	.globl _ThreadCreate
	.globl _delay
	.globl _now
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _print
	.globl _c_temp3
	.globl _c_temp2
	.globl _flag
	.globl _current
	.globl _j
	.globl _plot
	.globl _thread
	.globl _mutex
	.globl _log
	.globl _counter
	.globl _time
	.globl _D
	.globl _i
	.globl _temp2
	.globl _temp1
	.globl _c_temp
	.globl _ID
	.globl _bitmap
	.globl _ssp
	.globl _p_tail
	.globl _th_tail
	.globl _m_tail
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_m_tail	=	0x003c
_th_tail	=	0x003d
_p_tail	=	0x006c
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
_ssp	=	0x0020
_bitmap	=	0x0024
_ID	=	0x0028
_c_temp	=	0x0029
_temp1	=	0x002a
_temp2	=	0x002b
_i	=	0x002c
_D	=	0x002c
_time	=	0x003f
_counter	=	0x003e
_log	=	0x0030
_mutex	=	0x003a
_thread	=	0x003b
_plot	=	0x004e
_j	=	0x004d
_current	=	0x004c
_flag	=	0x004b
_c_temp2	=	0x004a
_c_temp3	=	0x005c
_print	=	0x005b
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer0_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Car1'
;------------------------------------------------------------
;	testparking.c:4: void Car1(void) {
;	-----------------------------------------
;	 function Car1
;	-----------------------------------------
_Car1:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	testparking.c:5: log[0] = now();
	lcall	_now
	mov	a,dpl
	mov	r0,#_log
	mov	@r0,a
;	testparking.c:6: SemaphoreWait(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	dec	@r0
	mov	r0,#_mutex
	mov	a,@r0
	jnb	acc.7,00102$
	inc	_m_tail
	mov	r1,_m_tail
	mov	r0,#_ID
	mov	a,@r0
	mov	@r1,a
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0xFF
	lcall	_ThreadYield
00102$:
	setb	_EA
;	testparking.c:7: if(!plot[0]) {
	mov	r0,#_plot
	mov	a,@r0
	jnz	00104$
;	testparking.c:8: plot[0] = 1;
	mov	r0,#_plot
	mov	@r0,#0x01
;	testparking.c:16: __endasm;
	mov r0,#(_log + 0x0000)
	mov a,@r0
	mov r7,a
	mov a,#0x7F
	anl a,r7
	mov @r0,a
	sjmp	00105$
00104$:
;	testparking.c:19: plot[1] = 1;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x01
;	testparking.c:27: __endasm;
	mov r0,#(_log + 0x0000)
	mov a,@r0
	mov r7,a
	mov a,#0x80
	orl a,r7
	mov @r0,a
00105$:
;	testparking.c:29: SemaphoreSignal(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	inc	@r0
	mov	r0,#_mutex
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00107$
	mov	r1,_m_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_m_tail
00107$:
	setb	_EA
;	testparking.c:30: SemaphoreSignal(print,p_tail);
	clr	_EA
	mov	r0,#_print
	inc	@r0
	mov	r0,#_print
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00109$
	mov	r1,_p_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_p_tail
00109$:
	setb	_EA
;	testparking.c:31: delay(1);
	mov	dpl,#0x01
	lcall	_delay
;	testparking.c:32: log[1] = now();
	lcall	_now
	mov	a,dpl
	mov	r0,#(_log + 0x0001)
	mov	@r0,a
;	testparking.c:33: SemaphoreWait(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	dec	@r0
	mov	r0,#_mutex
	mov	a,@r0
	jnb	acc.7,00111$
	inc	_m_tail
	mov	r1,_m_tail
	mov	r0,#_ID
	mov	a,@r0
	mov	@r1,a
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0xFF
	lcall	_ThreadYield
00111$:
	setb	_EA
;	testparking.c:34: if(!(plot[0]-1)) {
	mov	r0,#_plot
	mov	a,@r0
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	dec	r7
	cjne	r7,#0xFF,00150$
	dec	r6
00150$:
	mov	a,r7
	orl	a,r6
;	testparking.c:35: plot[0] = 0;
	jnz	00113$
	mov	r0,#_plot
	mov	@r0,a
;	testparking.c:43: __endasm;
	mov r0,#(_log + 0x0001)
	mov a,@r0
	mov r7,a
	mov a,#0x7F
	anl a,r7
	mov @r0,a
	sjmp	00114$
00113$:
;	testparking.c:46: plot[1] = 0;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x00
;	testparking.c:54: __endasm;
	mov r0,#(_log + 0x0001)
	mov a,@r0
	mov r7,a
	mov a,#0x80
	orl a,r7
	mov @r0,a
00114$:
;	testparking.c:56: SemaphoreSignal(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	inc	@r0
	mov	r0,#_mutex
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00116$
	mov	r1,_m_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_m_tail
00116$:
	setb	_EA
;	testparking.c:57: SemaphoreSignal(print,p_tail);
	clr	_EA
	mov	r0,#_print
	inc	@r0
	mov	r0,#_print
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00118$
	mov	r1,_p_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_p_tail
00118$:
	setb	_EA
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Car2'
;------------------------------------------------------------
;	testparking.c:60: void Car2(void) {
;	-----------------------------------------
;	 function Car2
;	-----------------------------------------
_Car2:
;	testparking.c:61: log[2] = now();
	lcall	_now
	mov	a,dpl
	mov	r0,#(_log + 0x0002)
	mov	@r0,a
;	testparking.c:62: SemaphoreWait(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	dec	@r0
	mov	r0,#_mutex
	mov	a,@r0
	jnb	acc.7,00102$
	inc	_m_tail
	mov	r1,_m_tail
	mov	r0,#_ID
	mov	a,@r0
	mov	@r1,a
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0xFF
	lcall	_ThreadYield
00102$:
	setb	_EA
;	testparking.c:63: if(!plot[0]) {
	mov	r0,#_plot
	mov	a,@r0
	jnz	00104$
;	testparking.c:64: plot[0] = 2;
	mov	r0,#_plot
	mov	@r0,#0x02
;	testparking.c:72: __endasm;
	mov r0,#(_log + 0x0002)
	mov a,@r0
	mov r7,a
	mov a,#0x7F
	anl a,r7
	mov @r0,a
	sjmp	00105$
00104$:
;	testparking.c:75: plot[1] = 2;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x02
;	testparking.c:83: __endasm;
	mov r0,#(_log + 0x0002)
	mov a,@r0
	mov r7,a
	mov a,#0x80
	orl a,r7
	mov @r0,a
00105$:
;	testparking.c:85: SemaphoreSignal(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	inc	@r0
	mov	r0,#_mutex
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00107$
	mov	r1,_m_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_m_tail
00107$:
	setb	_EA
;	testparking.c:86: SemaphoreSignal(print,p_tail);
	clr	_EA
	mov	r0,#_print
	inc	@r0
	mov	r0,#_print
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00109$
	mov	r1,_p_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_p_tail
00109$:
	setb	_EA
;	testparking.c:87: delay(2);
	mov	dpl,#0x02
	lcall	_delay
;	testparking.c:88: log[3] = now();
	lcall	_now
	mov	a,dpl
	mov	r0,#(_log + 0x0003)
	mov	@r0,a
;	testparking.c:89: SemaphoreWait(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	dec	@r0
	mov	r0,#_mutex
	mov	a,@r0
	jnb	acc.7,00111$
	inc	_m_tail
	mov	r1,_m_tail
	mov	r0,#_ID
	mov	a,@r0
	mov	@r1,a
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0xFF
	lcall	_ThreadYield
00111$:
	setb	_EA
;	testparking.c:90: if(!(plot[0]-2)) {
	mov	r0,#_plot
	mov	a,@r0
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r7
	add	a,#0xFE
	mov	r7,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	orl	a,r7
;	testparking.c:91: plot[0] = 0;
	jnz	00113$
	mov	r0,#_plot
	mov	@r0,a
;	testparking.c:99: __endasm;
	mov r0,#(_log + 0x0003)
	mov a,@r0
	mov r7,a
	mov a,#0x7F
	anl a,r7
	mov @r0,a
	sjmp	00114$
00113$:
;	testparking.c:102: plot[1] = 0;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x00
;	testparking.c:110: __endasm;
	mov r0,#(_log + 0x0003)
	mov a,@r0
	mov r7,a
	mov a,#0x80
	orl a,r7
	mov @r0,a
00114$:
;	testparking.c:112: SemaphoreSignal(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	inc	@r0
	mov	r0,#_mutex
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00116$
	mov	r1,_m_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_m_tail
00116$:
	setb	_EA
;	testparking.c:113: SemaphoreSignal(print,p_tail);
	clr	_EA
	mov	r0,#_print
	inc	@r0
	mov	r0,#_print
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00118$
	mov	r1,_p_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_p_tail
00118$:
	setb	_EA
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Car3'
;------------------------------------------------------------
;	testparking.c:116: void Car3(void) {
;	-----------------------------------------
;	 function Car3
;	-----------------------------------------
_Car3:
;	testparking.c:117: log[4] = now();
	lcall	_now
	mov	a,dpl
	mov	r0,#(_log + 0x0004)
	mov	@r0,a
;	testparking.c:118: SemaphoreWait(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	dec	@r0
	mov	r0,#_mutex
	mov	a,@r0
	jnb	acc.7,00102$
	inc	_m_tail
	mov	r1,_m_tail
	mov	r0,#_ID
	mov	a,@r0
	mov	@r1,a
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0xFF
	lcall	_ThreadYield
00102$:
	setb	_EA
;	testparking.c:119: if(!plot[0]) {
	mov	r0,#_plot
	mov	a,@r0
	jnz	00104$
;	testparking.c:120: plot[0] = 3;
	mov	r0,#_plot
	mov	@r0,#0x03
;	testparking.c:128: __endasm;
	mov r0,#(_log + 0x0004)
	mov a,@r0
	mov r7,a
	mov a,#0x7F
	anl a,r7
	mov @r0,a
	sjmp	00105$
00104$:
;	testparking.c:131: plot[1] = 3;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x03
;	testparking.c:139: __endasm;
	mov r0,#(_log + 0x0004)
	mov a,@r0
	mov r7,a
	mov a,#0x80
	orl a,r7
	mov @r0,a
00105$:
;	testparking.c:141: SemaphoreSignal(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	inc	@r0
	mov	r0,#_mutex
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00107$
	mov	r1,_m_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_m_tail
00107$:
	setb	_EA
;	testparking.c:142: SemaphoreSignal(print,p_tail);
	clr	_EA
	mov	r0,#_print
	inc	@r0
	mov	r0,#_print
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00109$
	mov	r1,_p_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_p_tail
00109$:
	setb	_EA
;	testparking.c:143: delay(2);
	mov	dpl,#0x02
	lcall	_delay
;	testparking.c:144: log[5] = now();
	lcall	_now
	mov	a,dpl
	mov	r0,#(_log + 0x0005)
	mov	@r0,a
;	testparking.c:145: SemaphoreWait(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	dec	@r0
	mov	r0,#_mutex
	mov	a,@r0
	jnb	acc.7,00111$
	inc	_m_tail
	mov	r1,_m_tail
	mov	r0,#_ID
	mov	a,@r0
	mov	@r1,a
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0xFF
	lcall	_ThreadYield
00111$:
	setb	_EA
;	testparking.c:146: if(!(plot[0]-3)) {
	mov	r0,#_plot
	mov	a,@r0
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r7
	add	a,#0xFD
	mov	r7,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	orl	a,r7
;	testparking.c:147: plot[0] = 0;
	jnz	00113$
	mov	r0,#_plot
	mov	@r0,a
;	testparking.c:155: __endasm;
	mov r0,#(_log + 0x0005)
	mov a,@r0
	mov r7,a
	mov a,#0x7F
	anl a,r7
	mov @r0,a
	sjmp	00114$
00113$:
;	testparking.c:158: plot[1] = 0;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x00
;	testparking.c:166: __endasm;
	mov r0,#(_log + 0x0005)
	mov a,@r0
	mov r7,a
	mov a,#0x80
	orl a,r7
	mov @r0,a
00114$:
;	testparking.c:168: SemaphoreSignal(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	inc	@r0
	mov	r0,#_mutex
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00116$
	mov	r1,_m_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_m_tail
00116$:
	setb	_EA
;	testparking.c:169: SemaphoreSignal(print,p_tail);
	clr	_EA
	mov	r0,#_print
	inc	@r0
	mov	r0,#_print
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00118$
	mov	r1,_p_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_p_tail
00118$:
	setb	_EA
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Car4'
;------------------------------------------------------------
;	testparking.c:172: void Car4(void) {
;	-----------------------------------------
;	 function Car4
;	-----------------------------------------
_Car4:
;	testparking.c:173: log[6] = now();
	lcall	_now
	mov	a,dpl
	mov	r0,#(_log + 0x0006)
	mov	@r0,a
;	testparking.c:174: SemaphoreWait(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	dec	@r0
	mov	r0,#_mutex
	mov	a,@r0
	jnb	acc.7,00102$
	inc	_m_tail
	mov	r1,_m_tail
	mov	r0,#_ID
	mov	a,@r0
	mov	@r1,a
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0xFF
	lcall	_ThreadYield
00102$:
	setb	_EA
;	testparking.c:175: if(!plot[0]) {
	mov	r0,#_plot
	mov	a,@r0
	jnz	00104$
;	testparking.c:176: plot[0] = 4;
	mov	r0,#_plot
	mov	@r0,#0x04
;	testparking.c:184: __endasm;
	mov r0,#(_log + 0x0006)
	mov a,@r0
	mov r7,a
	mov a,#0x7F
	anl a,r7
	mov @r0,a
	sjmp	00105$
00104$:
;	testparking.c:187: plot[1] = 4;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x04
;	testparking.c:195: __endasm;
	mov r0,#(_log + 0x0006)
	mov a,@r0
	mov r7,a
	mov a,#0x80
	orl a,r7
	mov @r0,a
00105$:
;	testparking.c:197: SemaphoreSignal(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	inc	@r0
	mov	r0,#_mutex
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00107$
	mov	r1,_m_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_m_tail
00107$:
	setb	_EA
;	testparking.c:198: SemaphoreSignal(print,p_tail);
	clr	_EA
	mov	r0,#_print
	inc	@r0
	mov	r0,#_print
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00109$
	mov	r1,_p_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_p_tail
00109$:
	setb	_EA
;	testparking.c:199: delay(2);
	mov	dpl,#0x02
	lcall	_delay
;	testparking.c:200: log[7] = now();
	lcall	_now
	mov	a,dpl
	mov	r0,#(_log + 0x0007)
	mov	@r0,a
;	testparking.c:201: SemaphoreWait(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	dec	@r0
	mov	r0,#_mutex
	mov	a,@r0
	jnb	acc.7,00111$
	inc	_m_tail
	mov	r1,_m_tail
	mov	r0,#_ID
	mov	a,@r0
	mov	@r1,a
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0xFF
	lcall	_ThreadYield
00111$:
	setb	_EA
;	testparking.c:202: if(!(plot[0]-4)) {
	mov	r0,#_plot
	mov	a,@r0
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r7
	add	a,#0xFC
	mov	r7,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	orl	a,r7
;	testparking.c:203: plot[0] = 0;
	jnz	00113$
	mov	r0,#_plot
	mov	@r0,a
;	testparking.c:211: __endasm;
	mov r0,#(_log + 0x0007)
	mov a,@r0
	mov r7,a
	mov a,#0x7F
	anl a,r7
	mov @r0,a
	sjmp	00114$
00113$:
;	testparking.c:214: plot[1] = 0;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x00
;	testparking.c:222: __endasm;
	mov r0,#(_log + 0x0007)
	mov a,@r0
	mov r7,a
	mov a,#0x80
	orl a,r7
	mov @r0,a
00114$:
;	testparking.c:224: SemaphoreSignal(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	inc	@r0
	mov	r0,#_mutex
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00116$
	mov	r1,_m_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_m_tail
00116$:
	setb	_EA
;	testparking.c:225: SemaphoreSignal(print,p_tail);
	clr	_EA
	mov	r0,#_print
	inc	@r0
	mov	r0,#_print
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00118$
	mov	r1,_p_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_p_tail
00118$:
	setb	_EA
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Car5'
;------------------------------------------------------------
;	testparking.c:228: void Car5(void) {
;	-----------------------------------------
;	 function Car5
;	-----------------------------------------
_Car5:
;	testparking.c:229: log[8] = now();
	lcall	_now
	mov	a,dpl
	mov	r0,#(_log + 0x0008)
	mov	@r0,a
;	testparking.c:230: SemaphoreWait(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	dec	@r0
	mov	r0,#_mutex
	mov	a,@r0
	jnb	acc.7,00102$
	inc	_m_tail
	mov	r1,_m_tail
	mov	r0,#_ID
	mov	a,@r0
	mov	@r1,a
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0xFF
	lcall	_ThreadYield
00102$:
	setb	_EA
;	testparking.c:231: if(!plot[0]) {
	mov	r0,#_plot
	mov	a,@r0
	jnz	00104$
;	testparking.c:232: plot[0] = 5;
	mov	r0,#_plot
	mov	@r0,#0x05
;	testparking.c:240: __endasm;
	mov r0,#(_log + 0x0008)
	mov a,@r0
	mov r7,a
	mov a,#0x7F
	anl a,r7
	mov @r0,a
	sjmp	00105$
00104$:
;	testparking.c:243: plot[1] = 5;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x05
;	testparking.c:251: __endasm;
	mov r0,#(_log + 0x0008)
	mov a,@r0
	mov r7,a
	mov a,#0x80
	orl a,r7
	mov @r0,a
00105$:
;	testparking.c:253: SemaphoreSignal(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	inc	@r0
	mov	r0,#_mutex
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00107$
	mov	r1,_m_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_m_tail
00107$:
	setb	_EA
;	testparking.c:254: SemaphoreSignal(print,p_tail);
	clr	_EA
	mov	r0,#_print
	inc	@r0
	mov	r0,#_print
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00109$
	mov	r1,_p_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_p_tail
00109$:
	setb	_EA
;	testparking.c:255: delay(2);
	mov	dpl,#0x02
	lcall	_delay
;	testparking.c:256: log[9] = now();
	lcall	_now
	mov	a,dpl
	mov	r0,#(_log + 0x0009)
	mov	@r0,a
;	testparking.c:257: SemaphoreWait(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	dec	@r0
	mov	r0,#_mutex
	mov	a,@r0
	jnb	acc.7,00111$
	inc	_m_tail
	mov	r1,_m_tail
	mov	r0,#_ID
	mov	a,@r0
	mov	@r1,a
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0xFF
	lcall	_ThreadYield
00111$:
	setb	_EA
;	testparking.c:258: if(!(plot[0]-5)) {
	mov	r0,#_plot
	mov	a,@r0
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r7
	add	a,#0xFB
	mov	r7,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	orl	a,r7
;	testparking.c:259: plot[0] = 0;
	jnz	00113$
	mov	r0,#_plot
	mov	@r0,a
;	testparking.c:267: __endasm;
	mov r0,#(_log + 0x0009)
	mov a,@r0
	mov r7,a
	mov a,#0x7F
	anl a,r7
	mov @r0,a
	sjmp	00114$
00113$:
;	testparking.c:270: plot[1] = 0;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x00
;	testparking.c:278: __endasm;
	mov r0,#(_log + 0x0009)
	mov a,@r0
	mov r7,a
	mov a,#0x80
	orl a,r7
	mov @r0,a
00114$:
;	testparking.c:280: SemaphoreSignal(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	inc	@r0
	mov	r0,#_mutex
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00116$
	mov	r1,_m_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_m_tail
00116$:
	setb	_EA
;	testparking.c:281: SemaphoreSignal(print,p_tail);
	clr	_EA
	mov	r0,#_print
	inc	@r0
	mov	r0,#_print
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00118$
	mov	r1,_p_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_p_tail
00118$:
	setb	_EA
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Printer'
;------------------------------------------------------------
;	testparking.c:284: void Printer(void) {
;	-----------------------------------------
;	 function Printer
;	-----------------------------------------
_Printer:
;	testparking.c:285: TMOD |= 0x20;
	orl	_TMOD,#0x20
;	testparking.c:286: TH1 = -6;
	mov	_TH1,#0xFA
;	testparking.c:287: SCON = 0x50;
	mov	_SCON,#0x50
;	testparking.c:288: TR1 = 1;
	setb	_TR1
;	testparking.c:290: SemaphoreWait(print,p_tail);
	clr	_EA
	mov	r0,#_print
	dec	@r0
	mov	r0,#_print
	mov	a,@r0
	jnb	acc.7,00102$
	inc	_p_tail
	mov	r1,_p_tail
	mov	r0,#_ID
	mov	a,@r0
	mov	@r1,a
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0xFF
	lcall	_ThreadYield
00102$:
	setb	_EA
;	testparking.c:291: SemaphoreWait(print,p_tail);
	clr	_EA
	mov	r0,#_print
	dec	@r0
	mov	r0,#_print
	mov	a,@r0
	jnb	acc.7,00104$
	inc	_p_tail
	mov	r1,_p_tail
	mov	r0,#_ID
	mov	a,@r0
	mov	@r1,a
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0xFF
	lcall	_ThreadYield
00104$:
	setb	_EA
;	testparking.c:292: SemaphoreWait(print,p_tail);
	clr	_EA
	mov	r0,#_print
	dec	@r0
	mov	r0,#_print
	mov	a,@r0
	jnb	acc.7,00106$
	inc	_p_tail
	mov	r1,_p_tail
	mov	r0,#_ID
	mov	a,@r0
	mov	@r1,a
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0xFF
	lcall	_ThreadYield
00106$:
	setb	_EA
;	testparking.c:293: SemaphoreWait(print,p_tail);
	clr	_EA
	mov	r0,#_print
	dec	@r0
	mov	r0,#_print
	mov	a,@r0
	jnb	acc.7,00108$
	inc	_p_tail
	mov	r1,_p_tail
	mov	r0,#_ID
	mov	a,@r0
	mov	@r1,a
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0xFF
	lcall	_ThreadYield
00108$:
	setb	_EA
;	testparking.c:294: SemaphoreWait(print,p_tail);
	clr	_EA
	mov	r0,#_print
	dec	@r0
	mov	r0,#_print
	mov	a,@r0
	jnb	acc.7,00110$
	inc	_p_tail
	mov	r1,_p_tail
	mov	r0,#_ID
	mov	a,@r0
	mov	@r1,a
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0xFF
	lcall	_ThreadYield
00110$:
	setb	_EA
;	testparking.c:295: SemaphoreWait(print,p_tail);
	clr	_EA
	mov	r0,#_print
	dec	@r0
	mov	r0,#_print
	mov	a,@r0
	jnb	acc.7,00112$
	inc	_p_tail
	mov	r1,_p_tail
	mov	r0,#_ID
	mov	a,@r0
	mov	@r1,a
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0xFF
	lcall	_ThreadYield
00112$:
	setb	_EA
;	testparking.c:296: SemaphoreWait(print,p_tail);
	clr	_EA
	mov	r0,#_print
	dec	@r0
	mov	r0,#_print
	mov	a,@r0
	jnb	acc.7,00114$
	inc	_p_tail
	mov	r1,_p_tail
	mov	r0,#_ID
	mov	a,@r0
	mov	@r1,a
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0xFF
	lcall	_ThreadYield
00114$:
	setb	_EA
;	testparking.c:297: SemaphoreWait(print,p_tail);
	clr	_EA
	mov	r0,#_print
	dec	@r0
	mov	r0,#_print
	mov	a,@r0
	jnb	acc.7,00116$
	inc	_p_tail
	mov	r1,_p_tail
	mov	r0,#_ID
	mov	a,@r0
	mov	@r1,a
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0xFF
	lcall	_ThreadYield
00116$:
	setb	_EA
;	testparking.c:298: SemaphoreWait(print,p_tail);
	clr	_EA
	mov	r0,#_print
	dec	@r0
	mov	r0,#_print
	mov	a,@r0
	jnb	acc.7,00118$
	inc	_p_tail
	mov	r1,_p_tail
	mov	r0,#_ID
	mov	a,@r0
	mov	@r1,a
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0xFF
	lcall	_ThreadYield
00118$:
	setb	_EA
;	testparking.c:299: SemaphoreWait(print,p_tail);
	clr	_EA
	mov	r0,#_print
	dec	@r0
	mov	r0,#_print
	mov	a,@r0
	jnb	acc.7,00120$
	inc	_p_tail
	mov	r1,_p_tail
	mov	r0,#_ID
	mov	a,@r0
	mov	@r1,a
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0xFF
	lcall	_ThreadYield
00120$:
	setb	_EA
;	testparking.c:300: c_temp = 0;
	mov	r0,#_c_temp
	mov	@r0,#0x00
;	testparking.c:301: current = 1;
	mov	r0,#_current
	mov	@r0,#0x01
;	testparking.c:302: while(c_temp<4){
00190$:
	mov	r0,#_c_temp
	clr	c
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x84
	jc	00382$
	ret
00382$:
;	testparking.c:303: for(j=0;j<10;j++){
	mov	r0,#_j
	mov	@r0,#0x00
00194$:
	mov	r0,#_j
	clr	c
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x8a
	jc	00383$
	ljmp	00189$
00383$:
;	testparking.c:304: c_temp2 = log[j];
	mov	r0,#_j
	mov	a,@r0
	add	a,#_log
	mov	r1,a
	mov	r0,#_c_temp2
	mov	a,@r1
	mov	@r0,a
;	testparking.c:305: c_temp3 = c_temp2&0x7F;
	mov	r0,#_c_temp2
	mov	r1,#_c_temp3
	mov	a,#0x7F
	anl	a,@r0
	mov	@r1,a
;	testparking.c:306: if(c_temp3==current){
	mov	r0,#_c_temp3
	mov	r1,#_current
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00384$
	sjmp	00385$
00384$:
	ljmp	00195$
00385$:
;	testparking.c:307: SBUF = 'c';
	mov	_SBUF,#0x63
;	testparking.c:308: while (!TI) { }
00121$:
;	testparking.c:309: TI = 0;
	jbc	_TI,00386$
	sjmp	00121$
00386$:
;	testparking.c:310: SBUF = 'a';
	mov	_SBUF,#0x61
;	testparking.c:311: while (!TI) { }
00124$:
;	testparking.c:312: TI = 0;
	jbc	_TI,00387$
	sjmp	00124$
00387$:
;	testparking.c:313: SBUF = 'r';
	mov	_SBUF,#0x72
;	testparking.c:314: while (!TI) { }
00127$:
;	testparking.c:315: TI = 0;
	jbc	_TI,00388$
	sjmp	00127$
00388$:
;	testparking.c:316: SBUF = '0' + j/2;
	mov	r0,#_j
	clr	F0
	mov	b,#0x02
	mov	a,@r0
	jnb	acc.7,00389$
	cpl	F0
	cpl	a
	inc	a
00389$:
	div	ab
	jnb	F0,00390$
	cpl	a
	inc	a
00390$:
	add	a,#0x30
	mov	_SBUF,a
;	testparking.c:317: while (!TI) { }
00130$:
;	testparking.c:318: TI = 0;
	jbc	_TI,00391$
	sjmp	00130$
00391$:
;	testparking.c:319: SBUF = ' ';
	mov	_SBUF,#0x20
;	testparking.c:320: while (!TI) { }
00133$:
;	testparking.c:321: TI = 0;
	jbc	_TI,00392$
	sjmp	00133$
00392$:
;	testparking.c:322: if(j%2){
	mov	r0,#_j
	mov	a,@r0
	mov	c,acc.7
	anl	a,#0x01
	jz	00393$
	jnc	00393$
	orl	a,#0xfe
00393$:
	jz	00152$
;	testparking.c:323: SBUF = 'o';
	mov	_SBUF,#0x6F
;	testparking.c:324: while (!TI) { }
00136$:
;	testparking.c:325: TI = 0;
	jbc	_TI,00395$
	sjmp	00136$
00395$:
;	testparking.c:326: SBUF = 'u';
	mov	_SBUF,#0x75
;	testparking.c:327: while (!TI) { }
00139$:
;	testparking.c:328: TI = 0;
	jbc	_TI,00396$
	sjmp	00139$
00396$:
;	testparking.c:329: SBUF = 't';
	mov	_SBUF,#0x74
;	testparking.c:330: while (!TI) { }
00142$:
;	testparking.c:331: TI = 0;
	jbc	_TI,00397$
	sjmp	00142$
00397$:
	sjmp	00153$
00152$:
;	testparking.c:334: SBUF = 'i';
	mov	_SBUF,#0x69
;	testparking.c:335: while (!TI) { }
00145$:
;	testparking.c:336: TI = 0;
	jbc	_TI,00398$
	sjmp	00145$
00398$:
;	testparking.c:337: SBUF = 'n';
	mov	_SBUF,#0x6E
;	testparking.c:338: while (!TI) { }
00148$:
;	testparking.c:339: TI = 0;
	jbc	_TI,00399$
	sjmp	00148$
00399$:
00153$:
;	testparking.c:341: SBUF = ' ';
	mov	_SBUF,#0x20
;	testparking.c:342: while (!TI) { }
00154$:
;	testparking.c:343: TI = 0;
	jbc	_TI,00400$
	sjmp	00154$
00400$:
;	testparking.c:344: SBUF = 'p';
	mov	_SBUF,#0x70
;	testparking.c:345: while (!TI) { }
00157$:
;	testparking.c:346: TI = 0;
	jbc	_TI,00401$
	sjmp	00157$
00401$:
;	testparking.c:347: SBUF = 'l';
	mov	_SBUF,#0x6C
;	testparking.c:348: while (!TI) { }
00160$:
;	testparking.c:349: TI = 0;
	jbc	_TI,00402$
	sjmp	00160$
00402$:
;	testparking.c:350: SBUF = 'o';
	mov	_SBUF,#0x6F
;	testparking.c:351: while (!TI) { }
00163$:
;	testparking.c:352: TI = 0;
	jbc	_TI,00403$
	sjmp	00163$
00403$:
;	testparking.c:353: SBUF = 't';
	mov	_SBUF,#0x74
;	testparking.c:354: while (!TI) { }
00166$:
;	testparking.c:355: TI = 0;
	jbc	_TI,00404$
	sjmp	00166$
00404$:
;	testparking.c:356: SBUF = '0' + c_temp2/0x80;
	mov	r0,#_c_temp2
	mov	a,@r0
	rl	a
	anl	a,#0x01
	mov	r7,a
	add	a,#0x30
	mov	_SBUF,a
;	testparking.c:357: while (!TI) { }
00169$:
;	testparking.c:358: TI = 0;
	jbc	_TI,00405$
	sjmp	00169$
00405$:
;	testparking.c:359: SBUF = ' ';
	mov	_SBUF,#0x20
;	testparking.c:360: while (!TI) { }
00172$:
;	testparking.c:361: TI = 0;
	jbc	_TI,00406$
	sjmp	00172$
00406$:
;	testparking.c:362: SBUF = 'a';
	mov	_SBUF,#0x61
;	testparking.c:363: while (!TI) { }
00175$:
;	testparking.c:364: TI = 0;
	jbc	_TI,00407$
	sjmp	00175$
00407$:
;	testparking.c:365: SBUF = 't';
	mov	_SBUF,#0x74
;	testparking.c:366: while (!TI) { }
00178$:
;	testparking.c:367: TI = 0;
	jbc	_TI,00408$
	sjmp	00178$
00408$:
;	testparking.c:368: SBUF = '0' + (c_temp2&0x7F);
	mov	r0,#_c_temp2
	mov	a,#0x7F
	anl	a,@r0
	mov	r7,a
	add	a,#0x30
	mov	_SBUF,a
;	testparking.c:369: while (!TI) { }
00181$:
;	testparking.c:370: TI = 0;
	jbc	_TI,00409$
	sjmp	00181$
00409$:
;	testparking.c:371: SBUF = '\n';
	mov	_SBUF,#0x0A
;	testparking.c:372: while (!TI) { }
00184$:
;	testparking.c:373: TI = 0;
	jbc	_TI,00410$
	sjmp	00184$
00410$:
;	testparking.c:374: c_temp++;
	mov	r0,#_c_temp
	inc	@r0
00195$:
;	testparking.c:303: for(j=0;j<10;j++){
	mov	r0,#_j
	inc	@r0
	ljmp	00194$
00189$:
;	testparking.c:377: current++;
	mov	r0,#_current
	inc	@r0
	ljmp	00190$
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	testparking.c:381: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	testparking.c:383: plot[0] = plot[1] = 0;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x00
	mov	r0,#_plot
	mov	@r0,#0x00
;	testparking.c:385: SemaphoreCreate(mutex, 1);
	mov	r0,#_mutex
	mov	@r0,#0x01
;	testparking.c:386: SemaphoreCreate(print, 0);
	mov	r0,#_print
	mov	@r0,#0x00
;	testparking.c:390: __endasm;
	mov _p_tail,#0x5C
	mov _m_tail,#0x6C
;	testparking.c:392: ThreadCreate(Car1);
	mov	dptr,#_Car1
	lcall	_ThreadCreate
;	testparking.c:393: ThreadCreate(Car2);
	mov	dptr,#_Car2
	lcall	_ThreadCreate
;	testparking.c:394: ThreadCreate(Car3);
	mov	dptr,#_Car3
	lcall	_ThreadCreate
;	testparking.c:395: ThreadCreate(Car4);
	mov	dptr,#_Car4
	lcall	_ThreadCreate
;	testparking.c:396: ThreadCreate(Car5);
	mov	dptr,#_Car5
	lcall	_ThreadCreate
;	testparking.c:397: ThreadCreate(Printer);
	mov	dptr,#_Printer
	ljmp	_ThreadCreate
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_gsinit_startup'
;------------------------------------------------------------
;	testparking.c:400: void _sdcc_gsinit_startup(void) {
;	-----------------------------------------
;	 function _sdcc_gsinit_startup
;	-----------------------------------------
__sdcc_gsinit_startup:
;	testparking.c:403: __endasm;
	ljmp _Bootstrap
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
;------------------------------------------------------------
;	testparking.c:406: void _mcs51_genRAMCLEAR(void) {}
;	-----------------------------------------
;	 function _mcs51_genRAMCLEAR
;	-----------------------------------------
__mcs51_genRAMCLEAR:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genXINIT'
;------------------------------------------------------------
;	testparking.c:407: void _mcs51_genXINIT(void) {}
;	-----------------------------------------
;	 function _mcs51_genXINIT
;	-----------------------------------------
__mcs51_genXINIT:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
;------------------------------------------------------------
;	testparking.c:408: void _mcs51_genXRAMCLEAR(void) {}
;	-----------------------------------------
;	 function _mcs51_genXRAMCLEAR
;	-----------------------------------------
__mcs51_genXRAMCLEAR:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_ISR'
;------------------------------------------------------------
;	testparking.c:409: void timer0_ISR(void) __interrupt(1) {
;	-----------------------------------------
;	 function timer0_ISR
;	-----------------------------------------
_timer0_ISR:
;	testparking.c:412: __endasm;
	ljmp _myTimer0Handler
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
