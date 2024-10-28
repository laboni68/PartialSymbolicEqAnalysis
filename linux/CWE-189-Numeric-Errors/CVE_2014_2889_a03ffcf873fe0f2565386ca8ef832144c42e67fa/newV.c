#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
#include<stdbool.h>

static inline bool is_near(int offset)
{
	return offset <= 127 && offset >= -128;
}

int bpf_jit_compile_Snippet(int t_offset, int f_offset){
    // if (filter[i].jt != 0) {
	// 				if (filter[i].jf && f_offset)
		t_offset += is_near(f_offset) ? 2 : 5;
        return t_offset;
}

int main(){
 return 0;
} 