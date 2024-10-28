#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

/* Minimal accepted MSS. It is (60+60+8) - (20+20). */
#define TCP_MIN_MSS		88U
#define __u16 unsigned short

int tcp_disconnect_Snippet(__u16 rcv_mss){
    rcv_mss = TCP_MIN_MSS;
    uint32_t rcv_wnd=50; //assigned a constant value to rcv_wnd
    return rcv_wnd / (2 * rcv_mss);
    
}


int main(){
 return 0;
} 