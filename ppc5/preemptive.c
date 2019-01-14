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

unsigned char now(void) { return time; }
void delay(unsigned char n) {
    D[ID] = now() + n;
    bitmap[ID] = -2;
    ThreadYield();
}

void thread_manager(void){
    while(1){
        EA = 0;
        temp1 = temp2 = 0;
        for(i=1;i<MAXTHREADS;i++) if( temp1<bitmap[i] ) {
            temp1 = bitmap[i];
            temp2 = i;
        }
        if(temp2==0) flag = 1;
        EA = 1;
        while(flag) {}
        EA = 0;
        if(temp2){
            ID = temp2;
            temp2 = 0;
            RESTORESTATE;
            EA = 1;
            return;
        }
        EA = 1;
    }
}

void myTimer0Handler(void){
    SAVESTATE;

    flag = 0;

    counter = (counter==4) ? 0 : counter+1;
    if(!counter) time++;

    for(i=1;i<MAXTHREADS;i++){
        if( bitmap[i]>0 ){
            if( i==ID ) bitmap[i]=1;
            else bitmap[i]++;
        }
        else if( bitmap[i]==-2 && D[i]==time ) bitmap[i] = 9;
    }
    ID = 0;//manager_ID
    RESTORESTATE;
    __asm
    reti
    __endasm;
}

void Bootstrap(void) {
    bitmap[0] = bitmap[1] = bitmap[2] = bitmap[3] = 0;
    time = 1;
    counter = 0;

    TMOD = 0;
    IE = 0x82;
    TR0 = 1;

    SemaphoreCreate(thread, 4);
    __asm
    mov _th_tail,#0x7C
    __endasm;

    ThreadCreate(thread_manager);
    ID = ThreadCreate(main);
    RESTORESTATE;
}

ThreadID ThreadCreate(FunctionPtr fp) {
    SemaphoreWait(thread,th_tail);
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
    temp3 = i<<3;
    __asm
    push _temp3
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
    SemaphoreSignal(thread,th_tail);
    EA = 0;
    bitmap[ID] = 0;
    __asm
        clr RS1
        clr RS0
    __endasm;
    do {
        if(ID==MAXTHREADS-1) ID = 0;
        else ID++;
        if(bitmap[ID]>0) break;
    } while (1);
    RESTORESTATE;
    EA = 1;
}
