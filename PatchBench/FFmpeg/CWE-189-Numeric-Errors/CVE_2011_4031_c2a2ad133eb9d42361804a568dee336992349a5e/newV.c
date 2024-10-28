#include<stdio.h>
#include<stdint.h>
#include<limits.h> 


static int asfrtp_parse_packet_Snippet(int len,int off, int cur_len)
{
    uint8_t buf=1;
    if (len > 0) {
        if (len < 4)
            return -1;
        int a=cur_len;
        int b=len - off;
        if(!buf || ((a) > (b) ? (b) : (a))<0){
        return -1;
     }
    }
     
    return 0;
}


int main(){
 return 0;
} 