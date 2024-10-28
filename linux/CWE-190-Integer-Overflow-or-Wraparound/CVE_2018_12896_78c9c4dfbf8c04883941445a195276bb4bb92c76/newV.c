#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

typedef long long ___s64;
#define s64 ___s64

static inline int timer_overrun_to_int(s64 it_overrun_last, int baseval)
{
	s64 sum = it_overrun_last + (s64)baseval;
	return sum > (s64)INT_MAX ? INT_MAX : (int)sum;
}

int SYSCALL_Snippet(s64	it_overrun_last)
{
	int overrun;
	overrun = timer_overrun_to_int(it_overrun_last, 0);
	return overrun;
}


int main(){
	s64 it_overrun_last;
	scanf("%lld", &it_overrun_last);
	printf("%d\n", SYSCALL_Snippet(it_overrun_last));
 return 0;
} 