#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
#define AV_SAMPLE_FMT_FLTP 1 


int on2avc_decode_init_Snippet(int channels){
    int sample_fmt;
    sample_fmt     = AV_SAMPLE_FMT_FLTP;
    return sample_fmt;

}
int main(){
 return 0;
} 