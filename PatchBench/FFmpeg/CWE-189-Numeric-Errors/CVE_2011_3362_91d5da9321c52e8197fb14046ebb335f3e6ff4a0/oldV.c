#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
#define ESCAPE_CODE   59

int decode_residual_block(int level_code){
    int level=1, mask;
    if(level_code >= ESCAPE_CODE) {
            mask = -(level_code & 1);
            level = (level^mask) - mask;
        }
    return level;
}

int main(){
 return 0;
} 