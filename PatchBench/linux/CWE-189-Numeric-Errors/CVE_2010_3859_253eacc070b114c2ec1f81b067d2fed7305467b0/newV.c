#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

int SYSCALL_DEFINE6_Snippet(size_t len){
    if (len > INT_MAX)
		len = INT_MAX;
    return len;
}

int main(){
 return 0;
} 