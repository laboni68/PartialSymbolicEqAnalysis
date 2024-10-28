#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define EINVAL 22
#define MAX_NFRAMES 256

int bcm_tx_setup_Snippet(unsigned int msg_head_nframes)
{
	/* check nframes boundaries - we need at least one can_frame */
	if (msg_head_nframes < 1 || msg_head_nframes > MAX_NFRAMES)
		return -EINVAL;

    return 0;

}

int main(){
 return 0;
} 