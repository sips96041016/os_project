#include <8051.h>
#include "cooperative.h"

__idata __at (0x30) char buffer[3];
__idata __at (0x33) char c1;
__idata __at (0x34) char c2;

void Producer(void) {
    c1 = 'A';
    while (1) {
         if(buffer[0]!=0) ThreadYield();
         buffer[0] = c1;
         if(c1=='Z') c1 = 'A';
         else c1++;
    }
}

void Consumer(void) {
    TMOD = 0x20;
    TH1 = -6;
    SCON = 0x50;
    TR1 = 1;
    while (1) {
        if(buffer[0]==0) ThreadYield();
        SBUF = buffer[0];
        buffer[0] = 0;
        while (!TI) { }
        TI = 0;
    }
}

void main(void) {
    buffer[0] = buffer[1] = buffer[2] = 0;
    c2 = '1';

    ThreadCreate(Producer);
    ThreadCreate(Consumer);
    ThreadExit();
}

void _sdcc_gsinit_startup(void) {
        __asm
                ljmp  _Bootstrap
        __endasm;
}

void _mcs51_genRAMCLEAR(void) {}
void _mcs51_genXINIT(void) {}
void _mcs51_genXRAMCLEAR(void) {}
