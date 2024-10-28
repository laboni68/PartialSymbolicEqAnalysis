#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
static int cinepak_decode_vectors_Snippet(int height){
    unsigned int   y;
    int ip0=0, ip1=0, ip2=0, ip3=0;
    uint16_t y1=0, y2=5;
    for (y=y1; y < y2; y+=4) {
        if(height - y > 1) {
            ip1 = ip0 + 2;
            if(height - y > 2) {
                ip2 = ip1 + 2;
                if(height - y > 3) {
                    ip3 = ip2 + 2;
                }
            }
        }
    }
    return ip1 + ip2 + ip3;

}
static int cinepak_decode_vectors_Snippet2(uint16_t y1, uint16_t y2, int height){
    unsigned int   y;
    int ip0=0, ip1=0, ip2=0, ip3=0;

    for (y=y1; y < y2; y+=4) {

        if(height - y > 1) {
            ip1 = ip0 + 2;
            if(height - y > 2) {
                ip2 = ip1 + 2;
                if(height - y > 3) {
                    ip3 = ip2 + 2;
                }
            }
        }
    }
    return ip1 + ip2 + ip3;

}
int main(){
 return 0;
} 