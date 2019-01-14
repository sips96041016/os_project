#include <8051.h>
#include "preemptive.h"

__idata __at (0x30) char buffer[3];
__idata __at (0x33) char c1;
__idata __at (0x34) char c2;
__idata __at (0x35) char mutex;
__idata __at (0x36) char full;
__idata __at (0x37) char empty;
__idata __at (0x38) char* m_tail;
__idata __at (0x39) char* f_tail;
__idata __at (0x3A) char* e_tail;
__idata __at (0x3B) char b_head;
__idata __at (0x3C) char b_tail;

void Producer1(void) {
    c1 = 'A';
    while (1) {
        SemaphoreWait(empty,e_tail);
        SemaphoreWait(mutex,m_tail);
        buffer[b_head] = c1;
        if(b_head==2) b_head=0;
        else b_head++;
        SemaphoreSignal(mutex,m_tail);
        SemaphoreSignal(full,f_tail);
        if(c1=='Z') c1 = 'A';
        else c1++;
    }
}
void Producer2(void) {
    c2 = '0';
    while (1) {
        SemaphoreWait(empty,e_tail);
        SemaphoreWait(mutex,m_tail);
        buffer[b_head] = c2;
        if(b_head==2) b_head=0;
        else b_head++;
        SemaphoreSignal(mutex,m_tail);
        SemaphoreSignal(full,f_tail);
        if(c2=='9') c2 = '0';
        else c2++;
    }
}

void Consumer(void) {
    TMOD |= 0x20;
    TH1 = -6;
    SCON = 0x50;
    TR1 = 1;
    while (1) {
        SemaphoreWait(full,f_tail);
        SemaphoreWait(mutex,m_tail);
        SBUF = buffer[b_tail];
        if(b_tail==2) b_tail=0;
        else b_tail++;
        SemaphoreSignal(mutex,m_tail);
        SemaphoreSignal(empty,e_tail);
        while (!TI) { }
        TI = 0;
    }
}

void main(void) {
    buffer[0] = buffer[1] = buffer[2] = 0;
    b_head = b_tail = 0;

    SemaphoreCreate(mutex, 1);
    SemaphoreCreate(full, 0);
    SemaphoreCreate(empty, 3);
    __asm
    mov _m_tail,#0x5C
    mov _f_tail,#0x6C
    mov _e_tail,#0x7C
    __endasm;

    ThreadCreate(Producer1);
    ThreadCreate(Producer2);
    Consumer();
}

void _sdcc_gsinit_startup(void) {
    __asm
        ljmp  _Bootstrap
    __endasm;
}

void _mcs51_genRAMCLEAR(void) {}
void _mcs51_genXINIT(void) {}
void _mcs51_genXRAMCLEAR(void) {}
void timer0_ISR(void) __interrupt(1) {
    __asm
        ljmp _myTimer0Handler
    __endasm;
}

