#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
uint8_t* ff_mjpeg_decode_frame_Snippet(int w,int is16bit){
 uint8_t *line={0};
 if (is16bit) {
        ((uint16_t*)line)[w - 1] = ((uint16_t*)line)[w - 2]= ((uint16_t*)line)[(w - 1) / 3];
            } else {
                line[w - 1] =  line[w - 2] = line[w - 1];
            }
    return line;
}

int main(){
 return 0;
} 