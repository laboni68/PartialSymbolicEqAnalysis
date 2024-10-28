#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define EINVAL          22

int dvb_ca_ioctl_Snippet(int info_num){
    if (info_num < 0 || info_num > 1)
			return -EINVAL;
    return info_num;
}

int main(){
 return 0;
} 