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

int tcp_skb_shift(int to_len, int from,int pcount, int shiftlen, int to_skb_count)
{
	/* TCP min gso_size is 8 bytes (TCP_MIN_GSO_SIZE)
	 * Since TCP_SKB_CB(skb)->tcp_gso_segs is 16 bits, we need
	 * to make sure not storing more than 65535 * 8 bytes per skb,
	 * even if current MSS is bigger.
	 */
	if (unlikely(to_len + shiftlen >= 65535 * TCP_MIN_GSO_SIZE))
		return 0;
	if (unlikely(to_skb_count + pcount > 65535))
		return 0;
	return skb_shift_Dummy(to_len, from, shiftlen, to_skb_count);
}

int tcp_shift_skb_data_Snippet(int tcp_skb_pcount, int to_len, int from, int len, int to_skb_count){
    int pcount = 0;
    pcount = tcp_skb_pcount;
	if (tcp_skb_shift(to_len, from, pcount, len, to_skb_count))
        return pcount;
    return 1;
}

int main(){
 return 0;
} 