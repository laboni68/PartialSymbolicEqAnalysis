#include<stdio.h>
#include<stdint.h>
#include<limits.h>

#define EINVAL 22
#define AVERROR(e) (-(e)) 

int av_image_check_size(unsigned int w, unsigned int h)
{
    if ((int)w>0 && (int)h>0 && (w+128)*(uint64_t)(h+128) < INT_MAX/8)
        return 0;
    return AVERROR(EINVAL);
}

int ff_h263_decode_picture_header_Snippet(int width, int height){
    int  ret;
    if ((ret = av_image_check_size(width, height)) < 0)
        return ret;

    int mb_width = (width  + 15) / 16;
    int mb_height = (height  + 15) / 16;
    return mb_width * mb_height;

}


int main(){
 return 0;
} 