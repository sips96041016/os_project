#include <8051.h>
#include "cooperative.h"
__idata __at (0x20) char ssp[MAXTHREADS];
__idata __at (0x24) char bitmap[MAXTHREADS];
__idata __at (0x28) char ID;
__idata __at (0x29) char manager_ID;
__idata __at (0x2A) char temp1;
__idata __at (0x2B) char temp2;
__idata __at (0x2C) char i;

#define SAVESTATE \
{ __asm \
push ACC \
push B \
push DPL \
push DPH \
push PSW \
clr RS1 \
clr RS0 \
__endasm; \
ssp[ID] = SP;\
}

#define RESTORESTATE \
{ SP = ssp[ID];\
__asm \
pop PSW \
pop DPH \
pop DPL \
pop B \
pop ACC \
__endasm; \
}

extern void main(void);

void Bootstrap(void) {
    bitmap[0] = bitmap[1] = bitmap[2] = bitmap[3] = 0;
    ID = ThreadCreate(main);
    RESTORESTATE;
}

ThreadID ThreadCreate(FunctionPtr fp) {
    for(i=0;i<MAXTHREADS;i++) if(!bitmap[i]) break;
    if(i==MAXTHREADS) return -1;

    bitmap[i] = 1;
    temp1 = SP;
    SP = 0x3F + i*0x10;

    __asm
    push DPL
    push DPH
    mov a,#0x00
    push a
    push a
    push a
    push a
    __endasm;
    temp2 = i<<3;
    __asm
    push _temp2
    __endasm;

    ssp[i] = SP;
    SP = temp1;
    return i;
}

void ThreadYield(void) {
    SAVESTATE;
    do {
        ID = (ID==MAXTHREADS-1) ? 0 : ID+1;
        if(bitmap[ID]>0) break;
    } while (1);
    RESTORESTATE;
}

void ThreadExit(void) {
    bitmap[ID] = 0;
    do {
        ID = (ID==MAXTHREADS-1) ? 0 : ID+1;
        if(bitmap[ID]>0) break;
    } while (1);
    RESTORESTATE;
}
