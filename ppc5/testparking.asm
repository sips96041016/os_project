;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
; This file was generated Mon Jan 14 18:58:00 2019
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
	.globl _car_temp
	.globl _ID
	.globl _bitmap
	.globl _ssp
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
_car_temp	=	0x0029
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
;	testparking.c:9: log[0] &= 0x7F;
	mov	r0,#_log
	mov	ar7,@r0
	mov	a,#0x7F
	anl	a,r7
	mov	r0,#_log
	mov	@r0,a
	sjmp	00105$
00104$:
;	testparking.c:12: plot[1] = 1;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x01
;	testparking.c:13: log[0] |= 0x80;
	mov	r0,#_log
	mov	ar7,@r0
	mov	a,#0x80
	orl	a,r7
	mov	r0,#_log
	mov	@r0,a
00105$:
;	testparking.c:15: SemaphoreSignal(mutex,m_tail);
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
;	testparking.c:16: delay(1);
	mov	dpl,#0x01
	lcall	_delay
;	testparking.c:17: log[1] = now();
	lcall	_now
	mov	a,dpl
	mov	r0,#(_log + 0x0001)
	mov	@r0,a
;	testparking.c:18: SemaphoreWait(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	dec	@r0
	mov	r0,#_mutex
	mov	a,@r0
	jnb	acc.7,00109$
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
00109$:
	setb	_EA
;	testparking.c:19: if(plot[0]==1) {
	mov	r0,#_plot
	mov	ar7,@r0
	cjne	r7,#0x01,00111$
;	testparking.c:20: plot[0] = 0;
	mov	r0,#_plot
	mov	@r0,#0x00
;	testparking.c:21: log[1] &= 0x7F;
	mov	r0,#(_log + 0x0001)
	mov	ar7,@r0
	mov	a,#0x7F
	anl	a,r7
	mov	r0,#(_log + 0x0001)
	mov	@r0,a
	sjmp	00112$
00111$:
;	testparking.c:24: plot[1] = 0;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x00
;	testparking.c:25: log[1] |= 0x80;
	mov	r0,#(_log + 0x0001)
	mov	ar7,@r0
	mov	a,#0x80
	orl	a,r7
	mov	r0,#(_log + 0x0001)
	mov	@r0,a
00112$:
;	testparking.c:27: SemaphoreSignal(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	inc	@r0
	mov	r0,#_mutex
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00114$
	mov	r1,_m_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_m_tail
00114$:
	setb	_EA
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Car2'
;------------------------------------------------------------
;	testparking.c:29: void Car2(void) {
;	-----------------------------------------
;	 function Car2
;	-----------------------------------------
_Car2:
;	testparking.c:30: log[2] = now();
	lcall	_now
	mov	a,dpl
	mov	r0,#(_log + 0x0002)
	mov	@r0,a
;	testparking.c:31: SemaphoreWait(mutex,m_tail);
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
;	testparking.c:32: if(!plot[0]) {
	mov	r0,#_plot
	mov	a,@r0
	jnz	00104$
;	testparking.c:33: plot[0] = 2;
	mov	r0,#_plot
	mov	@r0,#0x02
;	testparking.c:34: log[2] &= 0x7F;
	mov	r0,#(_log + 0x0002)
	mov	ar7,@r0
	mov	a,#0x7F
	anl	a,r7
	mov	r0,#(_log + 0x0002)
	mov	@r0,a
	sjmp	00105$
00104$:
;	testparking.c:37: plot[1] = 2;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x02
;	testparking.c:38: log[2] |= 0x80;
	mov	r0,#(_log + 0x0002)
	mov	ar7,@r0
	mov	a,#0x80
	orl	a,r7
	mov	r0,#(_log + 0x0002)
	mov	@r0,a
00105$:
;	testparking.c:40: SemaphoreSignal(mutex,m_tail);
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
;	testparking.c:41: delay(2);
	mov	dpl,#0x02
	lcall	_delay
;	testparking.c:42: log[3] = now();
	lcall	_now
	mov	a,dpl
	mov	r0,#(_log + 0x0003)
	mov	@r0,a
;	testparking.c:43: SemaphoreWait(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	dec	@r0
	mov	r0,#_mutex
	mov	a,@r0
	jnb	acc.7,00109$
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
00109$:
	setb	_EA
;	testparking.c:44: if(plot[0]==2) {
	mov	r0,#_plot
	mov	ar7,@r0
	cjne	r7,#0x02,00111$
;	testparking.c:45: plot[0] = 0;
	mov	r0,#_plot
	mov	@r0,#0x00
;	testparking.c:46: log[3] &= 0x7F;
	mov	r0,#(_log + 0x0003)
	mov	ar7,@r0
	mov	a,#0x7F
	anl	a,r7
	mov	r0,#(_log + 0x0003)
	mov	@r0,a
	sjmp	00112$
00111$:
;	testparking.c:49: plot[1] = 0;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x00
;	testparking.c:50: log[3] |= 0x80;
	mov	r0,#(_log + 0x0003)
	mov	ar7,@r0
	mov	a,#0x80
	orl	a,r7
	mov	r0,#(_log + 0x0003)
	mov	@r0,a
00112$:
;	testparking.c:52: SemaphoreSignal(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	inc	@r0
	mov	r0,#_mutex
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00114$
	mov	r1,_m_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_m_tail
00114$:
	setb	_EA
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Printer'
;------------------------------------------------------------
;	testparking.c:54: void Printer(void) {
;	-----------------------------------------
;	 function Printer
;	-----------------------------------------
_Printer:
;	testparking.c:55: TMOD |= 0x20;
	orl	_TMOD,#0x20
;	testparking.c:56: TH1 = -6;
	mov	_TH1,#0xFA
;	testparking.c:57: SCON = 0x50;
	mov	_SCON,#0x50
;	testparking.c:58: TR1 = 1;
	setb	_TR1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	testparking.c:61: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	testparking.c:63: plot[0] = plot[1] = 0;
	mov	r0,#(_plot + 0x0001)
	mov	@r0,#0x00
	mov	r0,#_plot
	mov	@r0,#0x00
;	testparking.c:65: SemaphoreCreate(mutex, 1);
	mov	r0,#_mutex
	mov	@r0,#0x01
;	testparking.c:68: __endasm;
	mov _m_tail,#0x6C
;	testparking.c:70: car_temp = 0;
	mov	r0,#_car_temp
	mov	@r0,#0x00
;	testparking.c:72: ThreadCreate(Car1);
	mov	dptr,#_Car1
	lcall	_ThreadCreate
;	testparking.c:73: ThreadCreate(Car2);
	mov	dptr,#_Car2
	lcall	_ThreadCreate
;	testparking.c:77: ThreadCreate(Printer);
	mov	dptr,#_Printer
	ljmp	_ThreadCreate
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_gsinit_startup'
;------------------------------------------------------------
;	testparking.c:80: void _sdcc_gsinit_startup(void) {
;	-----------------------------------------
;	 function _sdcc_gsinit_startup
;	-----------------------------------------
__sdcc_gsinit_startup:
;	testparking.c:83: __endasm;
	ljmp _Bootstrap
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
;------------------------------------------------------------
;	testparking.c:86: void _mcs51_genRAMCLEAR(void) {}
;	-----------------------------------------
;	 function _mcs51_genRAMCLEAR
;	-----------------------------------------
__mcs51_genRAMCLEAR:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genXINIT'
;------------------------------------------------------------
;	testparking.c:87: void _mcs51_genXINIT(void) {}
;	-----------------------------------------
;	 function _mcs51_genXINIT
;	-----------------------------------------
__mcs51_genXINIT:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
;------------------------------------------------------------
;	testparking.c:88: void _mcs51_genXRAMCLEAR(void) {}
;	-----------------------------------------
;	 function _mcs51_genXRAMCLEAR
;	-----------------------------------------
__mcs51_genXRAMCLEAR:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_ISR'
;------------------------------------------------------------
;	testparking.c:89: void timer0_ISR(void) __interrupt(1) {
;	-----------------------------------------
;	 function timer0_ISR
;	-----------------------------------------
_timer0_ISR:
;	testparking.c:92: __endasm;
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
