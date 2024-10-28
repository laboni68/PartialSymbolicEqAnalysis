#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define ESCAPE_CODE                     59


static int decode_residual_block(int level_code, int level) {
        // int8_t rltab[59][3]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
        // int8_t rltab[59][3]={1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,8,7,6,5,4,3,2,2,2,2,1,1,1};
        int run;
        int rltab_val_one=90;
        if(level_code >= ESCAPE_CODE) {
            run = ((level_code - ESCAPE_CODE) >> 1) + 1;
        } else if (level_code >= 0) {
            // level = rltab[level_code][0];
            if(!level) //end of block signal
                return -1;
            run = rltab_val_one;
        } else {
            return -1;
        }
        return run;
}

int main(){
 int level_code, level;
 scanf("%d",&level_code);
 scanf("%d",&level);
 printf("%d\n",decode_residual_block(level_code, level));
 return 0;
} 