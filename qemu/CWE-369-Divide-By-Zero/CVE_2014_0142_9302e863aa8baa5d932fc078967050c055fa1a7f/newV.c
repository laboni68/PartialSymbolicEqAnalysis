#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define EINVAL 22
#define EFBIG 27

int parallels_open_Snippet(unsigned int tracks){
    int ret = 0;
    if (tracks == 0) {
        ret = -EINVAL;
    }
    if (tracks > INT32_MAX/513) {
        ret = -EFBIG;
    }
    return ret;
}

int main(){
    unsigned int tracks;
    scanf("%u",&tracks);
    printf("%d",parallels_open_Snippet(tracks));
 return 0;
} 