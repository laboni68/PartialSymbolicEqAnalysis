#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define IFF_EXTRA_VIDEO_SIZE 41

static int iff_read_header_Snippet(uint32_t data_size){
    return data_size + IFF_EXTRA_VIDEO_SIZE;
} 

int main(){
 return 0;
} 