#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define USB_RET_STALL -3

int rndis_query_response(unsigned int length,uint32_t bufoffs, uint32_t buflen){
    
     if (buflen > length || bufoffs >= length || bufoffs + buflen > length) {
        return USB_RET_STALL;
    }
    return 0;
}

int rndis_query_response2(unsigned int length){
    uint32_t bufoffs=-8;
    uint32_t buflen=9;
     if (buflen > length || bufoffs >= length || bufoffs + buflen > length) {
        return USB_RET_STALL;
    }
    return 0;
}

int main(){
    unsigned int length;
    uint32_t bufoffs;
    uint32_t buflen;
    scanf("%u %u %u",&length,&bufoffs,&buflen);
    printf("%d",rndis_query_response(length,bufoffs,buflen));
    // rndis_query_response2(length);
 return 0;
} 