#ifndef __PREEMPTIVE_H__
#define __PREEMPTIVE_H__

#define MAXTHREADS 4  /* not including the scheduler */
/* the scheduler does not take up a thread of its own */

__idata __at (0x20) char ssp[MAXTHREADS];
__idata __at (0x24) char bitmap[MAXTHREADS];
__idata __at (0x28) char ID;
__idata __at (0x29) char manager_ID;
__idata __at (0x2A) char temp1;
__idata __at (0x2B) char temp2;
__idata __at (0x2C) char i;

#define SemaphoreCreate(s, n) s=n;
#define SemaphoreWait(s,s_tail)\
{\
 EA=0;\
 s--;\
 if(s<0) {\
  s_tail++;\
  *s_tail = ID;\
  bitmap[ID] = -1;\
  ThreadYield();\
  }\
 EA=1;\
}
#define SemaphoreSignal(s,s_tail)\
{\
 EA=0;\
 s++;\
 if(s<=0){\
  bitmap[*s_tail] = 1;\
  s_tail--;\
 }\
 EA=1;\
}

typedef char ThreadID;
typedef void (*FunctionPtr)(void);

ThreadID ThreadCreate(FunctionPtr);
void ThreadYield(void);
void ThreadExit(void);

#endif
