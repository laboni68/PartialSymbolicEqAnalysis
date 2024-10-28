#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define FFMAX(a,b) ((a) > (b) ? (a) : (b))

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

static int process_frame_obj_Snippet(int width, int height){
    uint16_t top=5, left=7, w=9, h=8;
    int avctx_width = FFMAX(left + w, width);
    int avctx_height = FFMAX(top  + h, height);
    // ctx->avctx->width  = FFMAX(left + w, ctx->width);
    // ctx->avctx->height = FFMAX(top + h, ctx->height);
    return 0;
}

int main(){
 return 0;
} 