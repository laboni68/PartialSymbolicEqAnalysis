#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define EINVAL 22
#define AVERROR(e) (-(e)) 
#define MKTAG(a,b,c,d) ((a) | ((b) << 8) | ((c) << 16) | ((unsigned)(d) << 24))
#define AVERROR_INVALIDDATA        (-MKTAG( 'I','N','D','A')) ///< Invalid data found when processing input

int av_image_check_size(unsigned int w, unsigned int h)
{
    if ((int)w>0 && (int)h>0 && (w+128)*(uint64_t)(h+128) < INT_MAX/8)
        return 0;
    return AVERROR(EINVAL);
}

int ff_ivi_init_planes_Snippet2( uint16_t pic_width,uint16_t pic_height, uint8_t luma_bands,uint8_t chroma_bands){
    if (av_image_check_size(pic_width, pic_height) < 0 ||
        luma_bands < 1 || chroma_bands < 1)
        return AVERROR_INVALIDDATA;
    return 0;
}
int ff_ivi_init_planes_Snippet( uint16_t pic_width,uint16_t pic_height){
    uint8_t luma_bands=2, chroma_bands=2;
    if (av_image_check_size(pic_width, pic_height) < 0 ||
        luma_bands < 1 || chroma_bands < 1)
        return AVERROR_INVALIDDATA;
    return 0;
}

int main(){
     uint16_t pic_width, pic_height;
    scanf("%hd %hd", &pic_width, &pic_height);
    printf("%d\n",ff_ivi_init_planes_Snippet(pic_width, pic_height));
 return 0;
} 