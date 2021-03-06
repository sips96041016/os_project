;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
; This file was generated Sun Jan 13 01:22:26 2019
;--------------------------------------------------------
	.module testpreempt
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
	.globl _Consumer
	.globl _Producer
	.globl _ThreadExit
	.globl _ThreadYield
	.globl _ThreadCreate
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
	.globl _b_tail
	.globl _b_head
	.globl _empty
	.globl _full
	.globl _mutex
	.globl _c2
	.globl _c1
	.globl _buffer
	.globl _i
	.globl _temp2
	.globl _temp1
	.globl _manager_ID
	.globl _ID
	.globl _bitmap
	.globl _ssp
	.globl _e_tail
	.globl _f_tail
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
_m_tail	=	0x0038
_f_tail	=	0x0039
_e_tail	=	0x003a
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
_manager_ID	=	0x0029
_temp1	=	0x002a
_temp2	=	0x002b
_i	=	0x002c
_buffer	=	0x0030
_c1	=	0x0033
_c2	=	0x0034
_mutex	=	0x0035
_full	=	0x0036
_empty	=	0x0037
_b_head	=	0x003b
_b_tail	=	0x003c
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
;Allocation info for local variables in function 'Producer'
;------------------------------------------------------------
;	testpreempt.c:16: void Producer(void) {
;	-----------------------------------------
;	 function Producer
;	-----------------------------------------
_Producer:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	testpreempt.c:17: c1 = 'A';
	mov	r0,#_c1
	mov	@r0,#0x41
;	testpreempt.c:18: while (1) {
00116$:
;	testpreempt.c:19: SemaphoreWait(empty,e_tail);
	clr	_EA
	mov	r0,#_empty
	dec	@r0
	mov	r0,#_empty
	mov	a,@r0
	jnb	acc.7,00102$
	inc	_e_tail
	mov	r1,_e_tail
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
;	testpreempt.c:20: SemaphoreWait(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	dec	@r0
	mov	r0,#_mutex
	mov	a,@r0
	jnb	acc.7,00104$
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
00104$:
	setb	_EA
;	testpreempt.c:21: buffer[b_head] = c1;
	mov	r0,#_b_head
	mov	a,@r0
	add	a,#_buffer
	mov	r0,a
	mov	r1,#_c1
	mov	a,@r1
	mov	@r0,a
;	testpreempt.c:22: SemaphoreSignal(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	inc	@r0
	mov	r0,#_mutex
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00106$
	mov	r1,_m_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_m_tail
00106$:
	setb	_EA
;	testpreempt.c:23: SemaphoreSignal(full,f_tail);
	clr	_EA
	mov	r0,#_full
	inc	@r0
	mov	r0,#_full
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00108$
	mov	r1,_f_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_f_tail
00108$:
	setb	_EA
;	testpreempt.c:24: if(b_head==2) b_head=0;
	mov	r0,#_b_head
	cjne	@r0,#0x02,00110$
	mov	r0,#_b_head
	mov	@r0,#0x00
	sjmp	00111$
00110$:
;	testpreempt.c:25: else b_head++;
	mov	r0,#_b_head
	inc	@r0
00111$:
;	testpreempt.c:26: if(c1=='Z') c1 = 'A';
	mov	r0,#_c1
	cjne	@r0,#0x5A,00113$
	mov	r0,#_c1
	mov	@r0,#0x41
	ljmp	00116$
00113$:
;	testpreempt.c:27: else c1++;
	mov	r0,#_c1
	inc	@r0
	ljmp	00116$
;------------------------------------------------------------
;Allocation info for local variables in function 'Consumer'
;------------------------------------------------------------
;	testpreempt.c:31: void Consumer(void) {
;	-----------------------------------------
;	 function Consumer
;	-----------------------------------------
_Consumer:
;	testpreempt.c:32: TMOD |= 0x20;
	orl	_TMOD,#0x20
;	testpreempt.c:33: TH1 = -6;
	mov	_TH1,#0xFA
;	testpreempt.c:34: SCON = 0x50;
	mov	_SCON,#0x50
;	testpreempt.c:35: TR1 = 1;
	setb	_TR1
;	testpreempt.c:36: while (1) {
00116$:
;	testpreempt.c:37: SemaphoreWait(full,f_tail);
	clr	_EA
	mov	r0,#_full
	dec	@r0
	mov	r0,#_full
	mov	a,@r0
	jnb	acc.7,00102$
	inc	_f_tail
	mov	r1,_f_tail
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
;	testpreempt.c:38: SemaphoreWait(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	dec	@r0
	mov	r0,#_mutex
	mov	a,@r0
	jnb	acc.7,00104$
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
00104$:
	setb	_EA
;	testpreempt.c:39: SBUF = buffer[b_tail];
	mov	r0,#_b_tail
	mov	a,@r0
	add	a,#_buffer
	mov	r1,a
	mov	_SBUF,@r1
;	testpreempt.c:40: SemaphoreSignal(mutex,m_tail);
	clr	_EA
	mov	r0,#_mutex
	inc	@r0
	mov	r0,#_mutex
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00106$
	mov	r1,_m_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_m_tail
00106$:
	setb	_EA
;	testpreempt.c:41: SemaphoreSignal(empty,e_tail);
	clr	_EA
	mov	r0,#_empty
	inc	@r0
	mov	r0,#_empty
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00108$
	mov	r1,_e_tail
	mov	a,@r1
	mov	r7,a
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	dec	_e_tail
00108$:
	setb	_EA
;	testpreempt.c:42: if(b_tail==2) b_tail=0;
	mov	r0,#_b_tail
	cjne	@r0,#0x02,00110$
	mov	r0,#_b_tail
	mov	@r0,#0x00
	sjmp	00112$
00110$:
;	testpreempt.c:43: else b_tail++;
	mov	r0,#_b_tail
	inc	@r0
;	testpreempt.c:44: while (!TI) { }
00112$:
;	testpreempt.c:45: TI = 0;
	jbc	_TI,00150$
	sjmp	00112$
00150$:
	ljmp	00116$
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	testpreempt.c:49: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	testpreempt.c:50: buffer[0] = buffer[1] = buffer[2] = 0;
	mov	r0,#(_buffer + 0x0002)
	mov	@r0,#0x00
	mov	r0,#(_buffer + 0x0001)
	mov	@r0,#0x00
	mov	r0,#_buffer
	mov	@r0,#0x00
;	testpreempt.c:51: c2 = '1';
	mov	r0,#_c2
	mov	@r0,#0x31
;	testpreempt.c:52: b_head = b_tail = 0;
	mov	r0,#_b_tail
	mov	@r0,#0x00
	mov	r0,#_b_head
	mov	@r0,#0x00
;	testpreempt.c:54: SemaphoreCreate(mutex, 1);
	mov	r0,#_mutex
	mov	@r0,#0x01
;	testpreempt.c:55: SemaphoreCreate(full, 0);
	mov	r0,#_full
	mov	@r0,#0x00
;	testpreempt.c:56: SemaphoreCreate(empty, 3);
	mov	r0,#_empty
	mov	@r0,#0x03
;	testpreempt.c:61: __endasm;
	mov _m_tail,#0x5C
	mov _f_tail,#0x6C
	mov _e_tail,#0x7C
;	testpreempt.c:63: ThreadCreate(Producer);
	mov	dptr,#_Producer
	lcall	_ThreadCreate
;	testpreempt.c:64: ThreadCreate(Consumer);
	mov	dptr,#_Consumer
	lcall	_ThreadCreate
;	testpreempt.c:65: ThreadExit();
	ljmp	_ThreadExit
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_gsinit_startup'
;------------------------------------------------------------
;	testpreempt.c:68: void _sdcc_gsinit_startup(void) {
;	-----------------------------------------
;	 function _sdcc_gsinit_startup
;	-----------------------------------------
__sdcc_gsinit_startup:
;	testpreempt.c:71: __endasm;
	ljmp _Bootstrap
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
;------------------------------------------------------------
;	testpreempt.c:74: void _mcs51_genRAMCLEAR(void) {}
;	-----------------------------------------
;	 function _mcs51_genRAMCLEAR
;	-----------------------------------------
__mcs51_genRAMCLEAR:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genXINIT'
;------------------------------------------------------------
;	testpreempt.c:75: void _mcs51_genXINIT(void) {}
;	-----------------------------------------
;	 function _mcs51_genXINIT
;	-----------------------------------------
__mcs51_genXINIT:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
;------------------------------------------------------------
;	testpreempt.c:76: void _mcs51_genXRAMCLEAR(void) {}
;	-----------------------------------------
;	 function _mcs51_genXRAMCLEAR
;	-----------------------------------------
__mcs51_genXRAMCLEAR:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_ISR'
;------------------------------------------------------------
;	testpreempt.c:77: void timer0_ISR(void) __interrupt(1) {
;	-----------------------------------------
;	 function timer0_ISR
;	-----------------------------------------
_timer0_ISR:
;	testpreempt.c:80: __endasm;
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
