;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
; This file was generated Mon Jan 14 14:52:52 2019
;--------------------------------------------------------
	.module preemptive
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Bootstrap
	.globl _myTimer0Handler
	.globl _thread_manager
	.globl _main
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
	.globl _i
	.globl _temp2
	.globl _temp1
	.globl _manager_ID
	.globl _ID
	.globl _bitmap
	.globl _ssp
	.globl _ThreadCreate
	.globl _ThreadYield
	.globl _ThreadExit
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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'thread_manager'
;------------------------------------------------------------
;	preemptive.c:30: void thread_manager(void){
;	-----------------------------------------
;	 function thread_manager
;	-----------------------------------------
_thread_manager:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	preemptive.c:31: temp1 = temp2 = 0;
	mov	r0,#_temp2
	mov	@r0,#0x00
	mov	r0,#_temp1
	mov	@r0,#0x00
;	preemptive.c:32: while(temp2==0){
00104$:
	mov	r0,#_temp2
	mov	a,@r0
	jnz	00106$
;	preemptive.c:33: for(i=1;i<MAXTHREADS;i++) if( temp1<bitmap[i] ) {
	mov	r0,#_i
	mov	@r0,#0x01
00108$:
	mov	r0,#_i
	clr	c
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00104$
	mov	r0,#_i
	mov	a,@r0
	add	a,#_bitmap
	mov	r1,a
	mov	ar7,@r1
	mov	r0,#_temp1
	clr	c
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	preemptive.c:34: temp1 = bitmap[i];
	mov	r0,#_i
	mov	a,@r0
	add	a,#_bitmap
	mov	r1,a
	mov	r0,#_temp1
	mov	a,@r1
	mov	@r0,a
;	preemptive.c:35: temp2 = i;
	mov	r0,#_i
	mov	r1,#_temp2
	mov	a,@r0
	mov	@r1,a
00109$:
;	preemptive.c:33: for(i=1;i<MAXTHREADS;i++) if( temp1<bitmap[i] ) {
	mov	r0,#_i
	inc	@r0
	sjmp	00108$
00106$:
;	preemptive.c:38: ID = temp2;
	mov	r0,#_temp2
	mov	r1,#_ID
	mov	a,@r0
	mov	@r1,a
;	preemptive.c:39: RESTORESTATE;
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_ssp
	mov	r1,a
	mov	_SP,@r1
	pop PSW 
	pop DPH 
	pop DPL 
	pop B 
	pop ACC 
;	preemptive.c:42: __endasm;
	reti
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'myTimer0Handler'
;------------------------------------------------------------
;	preemptive.c:45: void myTimer0Handler(void){
;	-----------------------------------------
;	 function myTimer0Handler
;	-----------------------------------------
_myTimer0Handler:
;	preemptive.c:46: SAVESTATE;
	push ACC 
	push B 
	push DPL 
	push DPH 
	push PSW 
	clr RS1 
	clr RS0 
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_ssp
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:47: for(i=1;i<MAXTHREADS;i++){
	mov	r0,#_i
	mov	@r0,#0x01
00108$:
	mov	r0,#_i
	clr	c
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00106$
;	preemptive.c:48: if( bitmap[i]>0 ){
	mov	r0,#_i
	mov	a,@r0
	add	a,#_bitmap
	mov	r1,a
	mov	ar7,@r1
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	preemptive.c:49: if( i==ID ) bitmap[i]=1;
	mov	r0,#_i
	mov	r1,#_ID
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00102$
	mov	r0,#_i
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
	sjmp	00109$
00102$:
;	preemptive.c:50: else bitmap[i]++;
	mov	r0,#_i
	mov	a,@r0
	add	a,#_bitmap
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	inc	a
	mov	@r1,a
00109$:
;	preemptive.c:47: for(i=1;i<MAXTHREADS;i++){
	mov	r0,#_i
	inc	@r0
	sjmp	00108$
00106$:
;	preemptive.c:53: ID = manager_ID;
	mov	r0,#_manager_ID
	mov	r1,#_ID
	mov	a,@r0
	mov	@r1,a
;	preemptive.c:54: RESTORESTATE;
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_ssp
	mov	r1,a
	mov	_SP,@r1
	pop PSW 
	pop DPH 
	pop DPL 
	pop B 
	pop ACC 
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Bootstrap'
;------------------------------------------------------------
;	preemptive.c:57: void Bootstrap(void) {
;	-----------------------------------------
;	 function Bootstrap
;	-----------------------------------------
_Bootstrap:
;	preemptive.c:58: bitmap[0] = bitmap[1] = bitmap[2] = bitmap[3] = 0;
	mov	r0,#(_bitmap + 0x0003)
	mov	@r0,#0x00
	mov	r0,#(_bitmap + 0x0002)
	mov	@r0,#0x00
	mov	r0,#(_bitmap + 0x0001)
	mov	@r0,#0x00
	mov	r0,#_bitmap
	mov	@r0,#0x00
;	preemptive.c:60: TMOD = 0;
	mov	_TMOD,#0x00
;	preemptive.c:61: IE = 0x82;
	mov	_IE,#0x82
;	preemptive.c:62: TR0 = 1;
	setb	_TR0
;	preemptive.c:64: manager_ID = ThreadCreate(thread_manager);
	mov	dptr,#_thread_manager
	lcall	_ThreadCreate
	mov	a,dpl
	mov	r0,#_manager_ID
	mov	@r0,a
;	preemptive.c:65: ID = ThreadCreate(main);
	mov	dptr,#_main
	lcall	_ThreadCreate
	mov	a,dpl
	mov	r0,#_ID
	mov	@r0,a
;	preemptive.c:66: RESTORESTATE;
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_ssp
	mov	r1,a
	mov	_SP,@r1
	pop PSW 
	pop DPH 
	pop DPL 
	pop B 
	pop ACC 
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadCreate'
;------------------------------------------------------------
;fp                        Allocated to registers 
;------------------------------------------------------------
;	preemptive.c:69: ThreadID ThreadCreate(FunctionPtr fp) {
;	-----------------------------------------
;	 function ThreadCreate
;	-----------------------------------------
_ThreadCreate:
;	preemptive.c:70: EA = 0;
	clr	_EA
;	preemptive.c:71: for(i=0;i<MAXTHREADS;i++) if(!bitmap[i]) break;
	mov	r0,#_i
	mov	@r0,#0x00
00107$:
	mov	r0,#_i
	clr	c
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00103$
	mov	r0,#_i
	mov	a,@r0
	add	a,#_bitmap
	mov	r1,a
	mov	a,@r1
	jz	00103$
	mov	r0,#_i
	inc	@r0
	sjmp	00107$
00103$:
;	preemptive.c:72: if(i==MAXTHREADS) return -1;
	mov	r0,#_i
	cjne	@r0,#0x04,00105$
	mov	dpl,#0xFF
	ret
00105$:
;	preemptive.c:74: bitmap[i] = 1;
	mov	r0,#_i
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
;	preemptive.c:75: temp1 = SP;
	mov	r0,#_temp1
	mov	@r0,_SP
;	preemptive.c:76: SP = 0x3F + i*0x10;
	mov	r0,#_i
	mov	a,@r0
	swap	a
	anl	a,#0xF0
	mov	r7,a
	add	a,#0x3F
	mov	_SP,a
;	preemptive.c:91: __endasm;
	mov a,DPL
	mov b,DPH
	mov dptr,#_ThreadExit
	push DPL
	push DPH
	push a
	push b
	mov a,#0x00
	push a
	push a
	push a
	push a
;	preemptive.c:92: temp2 = i<<3;
	mov	r0,#_i
	mov	r1,#_temp2
	mov	a,@r0
	swap	a
	rr	a
	anl	a,#0xF8
	mov	@r1,a
;	preemptive.c:95: __endasm;
	push _temp2
;	preemptive.c:97: ssp[i] = SP;
	mov	r0,#_i
	mov	a,@r0
	add	a,#_ssp
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:98: SP = temp1;
	mov	r0,#_temp1
	mov	_SP,@r0
;	preemptive.c:99: EA = 1;
	setb	_EA
;	preemptive.c:100: return i;
	mov	r0,#_i
	mov	dpl,@r0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadYield'
;------------------------------------------------------------
;	preemptive.c:103: void ThreadYield(void) {
;	-----------------------------------------
;	 function ThreadYield
;	-----------------------------------------
_ThreadYield:
;	preemptive.c:104: EA = 0;
	clr	_EA
;	preemptive.c:105: SAVESTATE;
	push ACC 
	push B 
	push DPL 
	push DPH 
	push PSW 
	clr RS1 
	clr RS0 
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_ssp
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:106: do {
00106$:
;	preemptive.c:107: if(ID==MAXTHREADS-1) ID = 1;
	mov	r0,#_ID
	cjne	@r0,#0x03,00102$
	mov	r0,#_ID
	mov	@r0,#0x01
	sjmp	00103$
00102$:
;	preemptive.c:108: else ID++;
	mov	r0,#_ID
	inc	@r0
00103$:
;	preemptive.c:109: if(bitmap[ID]>0) break;
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_bitmap
	mov	r1,a
	mov	ar7,@r1
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00106$
;	preemptive.c:111: RESTORESTATE;
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_ssp
	mov	r1,a
	mov	_SP,@r1
	pop PSW 
	pop DPH 
	pop DPL 
	pop B 
	pop ACC 
;	preemptive.c:112: EA = 1;
	setb	_EA
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadExit'
;------------------------------------------------------------
;	preemptive.c:115: void ThreadExit(void) {
;	-----------------------------------------
;	 function ThreadExit
;	-----------------------------------------
_ThreadExit:
;	preemptive.c:116: EA = 0;
	clr	_EA
;	preemptive.c:117: bitmap[ID] = 0;
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x00
;	preemptive.c:118: do {
00106$:
;	preemptive.c:119: if(ID==MAXTHREADS-1) ID = 1;
	mov	r0,#_ID
	cjne	@r0,#0x03,00102$
	mov	r0,#_ID
	mov	@r0,#0x01
	sjmp	00103$
00102$:
;	preemptive.c:120: else ID++;
	mov	r0,#_ID
	inc	@r0
00103$:
;	preemptive.c:121: if(bitmap[ID]>0) break;
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_bitmap
	mov	r1,a
	mov	ar7,@r1
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00106$
;	preemptive.c:123: RESTORESTATE;
	mov	r0,#_ID
	mov	a,@r0
	add	a,#_ssp
	mov	r1,a
	mov	_SP,@r1
	pop PSW 
	pop DPH 
	pop DPL 
	pop B 
	pop ACC 
;	preemptive.c:124: EA = 1;
	setb	_EA
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
