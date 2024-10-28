#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define PREROLL_TIME 3100
#define AV_NOPTS_VALUE          ((int64_t)UINT64_C(0x8000000000000000))
#define ASF_INDEXED_INTERVAL    10000000
#define EINVAL                  22

int asf_write_packet(int64_t pts, int64_t dts){
    pts = (pts != AV_NOPTS_VALUE) ? pts : dts;
    if(pts == AV_NOPTS_VALUE){
        return -1;
    }
    if (   pts < - PREROLL_TIME
        || pts > (INT_MAX-3)/10000LL * ASF_INDEXED_INTERVAL - PREROLL_TIME) {
        return EINVAL;
    }
    return 0;
}



int main(){
 return 0;
} 