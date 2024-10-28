#include<stdio.h>
#include<stdint.h>
#include<limits.h>

static int adpcm_decode_frame_Snippet(int n, int nb_samples, int st){
    int v=5; //random value is assigned
    for (n = (nb_samples - 1) >> (1 - st); n > 0; n--) {
        v= v >> 4; 
        v=v & 0x0F;
    }
    return v;

}

int main(){
 return 0;
} 