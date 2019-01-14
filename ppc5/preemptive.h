#ifndef __PREEMPTIVE_H__
#define __PREEMPTIVE_H__

#define MAXTHREADS 4  /* not including the scheduler */
/* the scheduler does not take up a thread of its own */

__idata __at (0x20) char ssp[MAXTHREADS];
__idata __at (0x24) char bitmap[MAXTHREADS];
__idata __at (0x28) char ID;
__idata __at (0x29) char car_temp;
__idata __at (0x2A) char temp1;
__idata __at (0x2B) char temp2;
__idata __at (0x2C) char i;
__idata __at (0x2C) unsigned char D[MAXTHREADS];//never use 0
__idata __at (0x3F) unsigned char time;
__idata __at (0x3E) char counter;

__idata __at (0x30) unsigned char log[10];
__idata __at (0x3A) char mutex;
__idata __at (0x3B) char thread;
__idata __at (0x3C) char* m_tail;
__idata __at (0x3D) char* th_tail;
__idata __at (0x4E) char plot[2];

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
unsigned char now(void);
void delay(unsigned char n);
typedef char ThreadID;
typedef void (*FunctionPtr)(void);

ThreadID ThreadCreate(FunctionPtr);
void ThreadYield(void);
void ThreadExit(void);

#endif
