#include<stdio.h>
#include<stdint.h>
#include<limits.h> 


int SYSCALL_Snippet(int	it_overrun_last)
{
	int overrun;
	overrun = it_overrun_last;
	return overrun;
}

int main(){
	int it_overrun_last;
	scanf("%d", &it_overrun_last);
	printf("%d\n", SYSCALL_Snippet(it_overrun_last));
 return 0;
} 