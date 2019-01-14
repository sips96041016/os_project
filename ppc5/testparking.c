#include <8051.h>
#include "preemptive.h"

void Car1(void) {
    log[0] = now();
    SemaphoreWait(mutex,m_tail);
    if(!plot[0]) {
        plot[0] = 1;
        log[0] &= 0x7F;
    }
    else {
        plot[1] = 1;
        log[0] |= 0x80;
    }
    SemaphoreSignal(mutex,m_tail);
    delay(1);
    log[1] = now();
    SemaphoreWait(mutex,m_tail);
    if(plot[0]==1) {
        plot[0] = 0;
        log[1] &= 0x7F;
    }
    else {
        plot[1] = 0;
        log[1] |= 0x80;
    }
    SemaphoreSignal(mutex,m_tail);
}
void Car2(void) {
    log[2] = now();
    SemaphoreWait(mutex,m_tail);
    if(!plot[0]) {
        plot[0] = 2;
        log[2] &= 0x7F;
    }
    else {
        plot[1] = 2;
        log[2] |= 0x80;
    }
    SemaphoreSignal(mutex,m_tail);
    delay(2);
    log[3] = now();
    SemaphoreWait(mutex,m_tail);
    if(plot[0]==2) {
        plot[0] = 0;
        log[3] &= 0x7F;
    }
    else {
        plot[1] = 0;
        log[3] |= 0x80;
    }
    SemaphoreSignal(mutex,m_tail);
}
void Printer(void) {
    TMOD |= 0x20;
    TH1 = -6;
    SCON = 0x50;
    TR1 = 1;
}

void main(void) {

    plot[0] = plot[1] = 0;

    SemaphoreCreate(mutex, 1);
    __asm
    mov _m_tail,#0x6C
    __endasm;

    car_temp = 0;

    ThreadCreate(Car1);
    ThreadCreate(Car2);
    //ThreadCreate(Car3);
    //ThreadCreate(Car4);
    //ThreadCreate(Car5);
    ThreadCreate(Printer);
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

