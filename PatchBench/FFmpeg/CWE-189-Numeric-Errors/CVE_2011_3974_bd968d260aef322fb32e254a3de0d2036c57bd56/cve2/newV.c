#include<stdio.h>
#include<stdint.h>
#include<limits.h> 


static int decode_mb_i_Snippet( unsigned pred_mode_uv) {
       if(pred_mode_uv > 6) {
        return -1;
    }
    return 0;
}

int main(){
    unsigned pred_mode_uv;
    scanf("%d",&pred_mode_uv);
    printf("%d\n",decode_mb_i_Snippet(pred_mode_uv));
 return 0;
} 