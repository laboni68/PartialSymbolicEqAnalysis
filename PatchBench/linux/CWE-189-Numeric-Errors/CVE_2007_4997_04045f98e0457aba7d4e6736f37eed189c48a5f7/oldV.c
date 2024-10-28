#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define rx_dropped -1

int ieee80211_rx_Snippet(int skb_len, int hdrlen){
    if (skb_len < 10) {
		return rx_dropped;
	}
    if (skb_len >= hdrlen + 3) { //considering the can_be_decrypted is true
			/* Top two-bits of byte 3 are the key index */
			return hdrlen;
		}
    return skb_len;
}

int main(){
	int skb_len, hdrlen;
	scanf("%d", &skb_len);
	scanf("%d", &hdrlen);
	printf("%d\n", ieee80211_rx_Snippet(skb_len, hdrlen));
 return 0;
} 