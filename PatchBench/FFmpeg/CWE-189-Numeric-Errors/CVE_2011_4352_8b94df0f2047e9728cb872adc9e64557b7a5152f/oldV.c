#include<stdio.h>
#include<stdint.h>
#include<limits.h> 


static int vp3_dequant_Snippet(int i, int token){
    i += (token >> 2) & 0x7f;
    i=i+1;
    return i;
}


int main(){
 return 0;
} 