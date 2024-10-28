#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define MAX_TCP_OPTION_SPACE 40
#define TCP_MIN_SND_MSS		48
#define TCP_MIN_GSO_SIZE	(TCP_MIN_SND_MSS - MAX_TCP_OPTION_SPACE)
#define unlikely(cond) (cond)

int skb_shift_Dummy(int to_len, int from,int shiftlen, int to_skb_count){
    return to_len+from+shiftlen+to_skb_count;
}


int tcp_shift_skb_data_Snippet(int tcp_skb_pcount, int to_len, int from, int len, int to_skb_count){
    int pcount = 0;
    if(skb_shift_Dummy(to_len, from, len, to_skb_count)){
        pcount+= tcp_skb_pcount;
        return tcp_skb_pcount;
    }
    return 1;
        
}

int main(){
 return 0;
} 