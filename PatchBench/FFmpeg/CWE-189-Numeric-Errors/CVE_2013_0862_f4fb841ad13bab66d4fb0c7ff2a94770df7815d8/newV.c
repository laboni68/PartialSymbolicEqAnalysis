#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define MKTAG(a,b,c,d) ((a) | ((b) << 8) | ((c) << 16) | ((unsigned)(d) << 24))
#define FFERRTAG(a, b, c, d) (-(int)MKTAG(a, b, c, d))
#define AVERROR_INVALIDDATA        FFERRTAG( 'I','N','D','A') ///< Invalid data found when processing input
#define EINVAL 22
#define FFMAX(a,b) ((a) > (b) ? (a) : (b))
#define AVERROR(e) (-(e)) 

typedef struct AVCodecContext {
    int width;
    int height;
    int lowres;
} AVCodecContext;

typedef struct SANMVideoContext {
    int width;
    int height;
    AVCodecContext* avctx;
} SANMVideoContext;

int av_image_check_size(unsigned int w, unsigned int h)
{
    if ((int)w>0 && (int)h>0 && (w+128)*(uint64_t)(h+128) < INT_MAX/8)
        return 0;
    return AVERROR(EINVAL);
}

static int process_frame_obj_Snippet(int width, int height){
    uint16_t top=5, left=7, w=9, h=8;
    int avctx_width, avctx_height;
        if (av_image_check_size(FFMAX(left + w, width),
                                FFMAX(top  + h, height)) < 0)
            return AVERROR_INVALIDDATA;
        avctx_height = -((-FFMAX(top  + h, height)) >>0);
        avctx_width = -((-FFMAX(left + w, width)) >>0);
    return 0;
}

int main(){
 return 0;
} 