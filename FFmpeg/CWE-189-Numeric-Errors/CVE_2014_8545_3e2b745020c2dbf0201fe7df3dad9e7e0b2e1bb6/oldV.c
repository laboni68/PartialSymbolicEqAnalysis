#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
#define AV_PIX_FMT_RGB24 0
#define AV_PIX_FMT_RGBA 1
#define AV_PIX_FMT_GRAY8 2
#define AV_PIX_FMT_GRAY16BE 3
#define AV_PIX_FMT_RGB48BE 4
#define AV_PIX_FMT_RGBA64BE 5
#define AV_PIX_FMT_PAL8 6
#define AV_PIX_FMT_MONOBLACK 7
#define AV_PIX_FMT_YA8 8
#define AV_PIX_FMT_YA16BE 9

#define PNG_COLOR_MASK_PALETTE    1
#define PNG_COLOR_MASK_COLOR      2
#define PNG_COLOR_MASK_ALPHA      4

#define PNG_COLOR_TYPE_GRAY 0
#define PNG_COLOR_TYPE_PALETTE  (PNG_COLOR_MASK_COLOR | PNG_COLOR_MASK_PALETTE)
#define PNG_COLOR_TYPE_RGB        (PNG_COLOR_MASK_COLOR)
#define PNG_COLOR_TYPE_RGB_ALPHA  (PNG_COLOR_MASK_COLOR | PNG_COLOR_MASK_ALPHA)
#define PNG_COLOR_TYPE_GRAY_ALPHA (PNG_COLOR_MASK_ALPHA)

static int decode_frame_Snippet(int bit_depth, int color_type, int bits_per_pixel){
    int pix_fmt;
    if ((bit_depth == 2 || bit_depth == 4 || bit_depth == 8) &&
                    color_type == PNG_COLOR_TYPE_RGB) {
                    pix_fmt = AV_PIX_FMT_RGB24;
                } else if ((bit_depth == 2 || bit_depth == 4 || bit_depth == 8) &&
                           color_type == PNG_COLOR_TYPE_RGB_ALPHA) {
                    pix_fmt = AV_PIX_FMT_RGBA;
                } else if ((bit_depth == 2 || bit_depth == 4 || bit_depth == 8) &&
                           color_type == PNG_COLOR_TYPE_GRAY) {
                    pix_fmt = AV_PIX_FMT_GRAY8;
                } else if (bit_depth == 16 &&
                           color_type == PNG_COLOR_TYPE_GRAY) {
                    pix_fmt = AV_PIX_FMT_GRAY16BE;
                } else if (bit_depth == 16 &&
                           color_type == PNG_COLOR_TYPE_RGB) {
                    pix_fmt = AV_PIX_FMT_RGB48BE;
                } else if (bit_depth == 16 &&
                           color_type == PNG_COLOR_TYPE_RGB_ALPHA) {
                    pix_fmt = AV_PIX_FMT_RGBA64BE;
                } else if ((bits_per_pixel == 1 || bits_per_pixel == 2 || bits_per_pixel == 4 || bits_per_pixel == 8) &&
                           color_type == PNG_COLOR_TYPE_PALETTE) {
                    pix_fmt = AV_PIX_FMT_PAL8;
                } else if (bit_depth == 1) {
                    pix_fmt = AV_PIX_FMT_MONOBLACK;
                } else if (bit_depth == 8 &&
                           color_type == PNG_COLOR_TYPE_GRAY_ALPHA) {
                    pix_fmt = AV_PIX_FMT_YA8;
                } else if (bit_depth == 16 &&
                           color_type == PNG_COLOR_TYPE_GRAY_ALPHA) {
                    pix_fmt = AV_PIX_FMT_YA16BE;
                } else {
                   return -1;
                }
                return pix_fmt;
}
int main(){
 return 0;
} 