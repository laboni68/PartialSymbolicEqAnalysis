#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define EINVAL 22
#define MAX_NFRAMES 256
#define RX_RTR_FRAME        0x0400

int bcm_rx_setup_Snippet(unsigned int msg_head_nframes, unsigned int msg_head_flags)
{
	/* the first element contains the mux-mask => MAX_NFRAMES + 1  */
	if (msg_head_nframes > MAX_NFRAMES + 1)
		return -EINVAL;

	if ((msg_head_flags & RX_RTR_FRAME) &&
	    (msg_head_nframes != 1))
		return -EINVAL;

    return 0;

}

int main(){
 return 0;
} 