#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
int perf_event_interrupt_Snippet(unsigned long val){
   if ((int)val < 0){
        return 1;
    }
    return 0;
}
int main(){
    unsigned long val;
	scanf("%lu", &val);
	printf("Return value: %d\n", perf_event_interrupt_Snippet(val));
 return 0;
} 