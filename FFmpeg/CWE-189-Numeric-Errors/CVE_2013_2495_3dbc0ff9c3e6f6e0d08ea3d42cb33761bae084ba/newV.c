#include<stdio.h>
#include<stdint.h>
#include<limits.h>
#define FF_DWT_MAX_DECLVLS 32
#define IFF_EXTRA_VIDEO_SIZE 41
#define FF_INPUT_BUFFER_PADDING_SIZE 16
#define MKTAG(a,b,c,d) ((a) | ((b) << 8) | ((c) << 16) | ((unsigned)(d) << 24))
#define AVERROR_INVALIDDATA        (-MKTAG( 'I','N','D','A')) ///< Invalid data found when processing input

static int iff_read_header_Snippet(uint32_t data_size){
    if (data_size > INT_MAX - IFF_EXTRA_VIDEO_SIZE - FF_INPUT_BUFFER_PADDING_SIZE)
                return AVERROR_INVALIDDATA;
    return data_size + IFF_EXTRA_VIDEO_SIZE;
} 
int main(){
 return 0;
} 