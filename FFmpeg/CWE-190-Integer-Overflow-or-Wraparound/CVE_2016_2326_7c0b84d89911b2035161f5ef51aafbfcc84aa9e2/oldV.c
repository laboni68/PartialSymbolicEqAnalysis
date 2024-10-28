#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define AV_NOPTS_VALUE          ((int64_t)UINT64_C(0x8000000000000000))

// /**
//  * assert() equivalent, that is always enabled.
//  */
// #define av_assert0(cond) do {                                           \
//     if (!(cond)) {                                                      \
//         av_log(NULL, AV_LOG_PANIC, "Assertion %s failed at %s:%d\n",    \
//                AV_STRINGIFY(cond), __FILE__, __LINE__);                 \
//         abort();                                                        \
//     }                                                                   \
// } while (0)
int asf_write_packet(int64_t pts, int64_t dts){
    pts = (pts != AV_NOPTS_VALUE) ? pts : dts;
    if(pts == AV_NOPTS_VALUE){
        return -1;
    }
    return 0;
}


int main(){
 return 0;
} 