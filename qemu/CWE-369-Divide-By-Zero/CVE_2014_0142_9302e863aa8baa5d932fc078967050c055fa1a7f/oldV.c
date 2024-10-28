#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define EFBIG 27

int parallels_open_Snippet(int tracks){
    int ret = 0;
    if (tracks > INT32_MAX/513) {
        ret = -EFBIG;
    }
    return ret;
}

int main(){
    int tracks;
    scanf("%d",&tracks);
    printf("%d",parallels_open_Snippet(tracks));
 return 0;
} 