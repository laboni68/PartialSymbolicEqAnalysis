#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define AV_SAMPLE_FMT_FLTP 1 
#define MKTAG(a,b,c,d) ((a) | ((b) << 8) | ((c) << 16) | ((unsigned)(d) << 24))
#define FFERRTAG(a, b, c, d) (-(int)MKTAG(a, b, c, d))
#define AVERROR_PATCHWELCOME       FFERRTAG( 'P','A','W','E') ///< Not yet implemented in FFmpeg, patches welcome

int on2avc_decode_init_Snippet(int channels){
    int sample_fmt;
    if (channels > 2U) {
        return AVERROR_PATCHWELCOME;
    }

    sample_fmt     = AV_SAMPLE_FMT_FLTP;
    return sample_fmt;

}

int main(){
 return 0;
} 