#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

int usb_net_handle_dataout(uint32_t len,uint32_t offs, uint32_t size){
     if (offs + size <= len) {
        return offs;
    }
    return 0;
}

int main(){
 return 0;
} 