#include <8051.h>
#include "preemptive.h"

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

void thread_manager(void){
    do {
        if(ID==MAXTHREADS-1) ID = 0;
        else ID++;
        if(bitmap[ID]>0) break;
    } while (1);
    RESTORESTATE;
    __asm
    reti
    __endasm;
}

void myTimer0Handler(void){
    SAVESTATE;
    temp1 = ID;
    ID = manager_ID;
    RESTORESTATE;
    ID = temp1;
}

void Bootstrap(void) {
    bitmap[0] = bitmap[1] = bitmap[2] = bitmap[3] = 0;

    TMOD = 0;
    IE = 0x82;
    TR0 = 1;

    manager_ID = ThreadCreate(thread_manager);
    ID = ThreadCreate(main);
    RESTORESTATE;
}

ThreadID ThreadCreate(FunctionPtr fp) {
    EA = 0;
    for(i=0;i<MAXTHREADS;i++) if(!bitmap[i]) break;
    if(i==MAXTHREADS) return -1;

    bitmap[i] = 1;
    temp1 = SP;
    SP = 0x3F + i*0x10;

    __asm
    mov a,DPL
    mov b,DPH
    mov	dptr,#_ThreadExit
    push DPL
    push DPH
    push a
    push b
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
    EA = 1;
    return i;
}

void ThreadYield(void) {
    EA = 0;
    SAVESTATE;
    do {
        if(ID==MAXTHREADS-1) ID = 0;
        else ID++;
        if(bitmap[ID]>0) break;
    } while (1);
    RESTORESTATE;
    EA = 1;
}

void ThreadExit(void) {
    EA = 0;
    bitmap[ID] = 0;
    do {
        if(ID==MAXTHREADS-1) ID = 0;
        else ID++;
        if(bitmap[ID]>0) break;
    } while (1);
    RESTORESTATE;
    EA = 1;
}
