#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
#include<stdbool.h>

#define unlikely(cond) (cond)
#define E1000_RXD_STAT_EOP      0x02    /* End of Packet */

int e1000_clean_rx_irq_Snippet(int length, unsigned char status){

    if (unlikely(!(status & E1000_RXD_STAT_EOP) || (length <= 4))) {
			/* All receives must fit into a single buffer */
			/* recycle */
			return -1;
		}
        return length-4;
}
int main(){
	int length;
	unsigned char status;
	scanf("%d %c",&length,&status);
	printf("%d\n",e1000_clean_rx_irq_Snippet(length,status));
 return 0;
} 