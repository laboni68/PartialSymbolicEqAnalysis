#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define ENXIO 6
int snd_seq_oss_synth_make_info_Snippet(int dev, int dp_max_synthdev)
{
    if (dev < 0 || dev >= dp_max_synthdev)
		return -ENXIO;
    return dev;
}

int main(){
 return 0;
} 