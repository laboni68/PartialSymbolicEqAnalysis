#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

int ff_add_png_paeth_prediction_Snippet(int bpp, int size)
{
    int i=0,r=0;
    for(; i <= size - bpp; i+=bpp) {
        r=r+i;
    }
    return r;
}


int main(){
 return 0;
} 