#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define FFMAX_dummy -1

static int cavs_decode_frame_Snippet(const uint8_t buf_end, const uint8_t buf_ptr  ) {
    //   uint32_t stc = -1;
     uint32_t stc = 0;
      int input_size;
      if((stc & 0xFFFFFE00)){
            return FFMAX_dummy;}
      input_size = (buf_end - buf_ptr)*8;
      return input_size;
}

int main(){
     uint8_t buf_end;
      uint32_t stc;
      scanf("%hhd %d",&buf_end,&stc);
      printf("%d\n",cavs_decode_frame_Snippet(buf_end,stc));
 return 0;
} 