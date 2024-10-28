#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
#define __u16 unsigned short
#define RCV_WND 50

int tcp_disconnect_Snippet(__u16 rcv_mss){
    uint32_t rcv_wnd=RCV_WND; //assigned a constant value to rcv_wnd
    return rcv_wnd / (2 * rcv_mss);
    
}
int main(){
 return 0;
} 