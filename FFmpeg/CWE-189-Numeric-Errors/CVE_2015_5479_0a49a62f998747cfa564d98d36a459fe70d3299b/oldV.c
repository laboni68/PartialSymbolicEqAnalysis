#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
int ff_h263_decode_picture_header_Snippet(int width, int height){
    int mb_width = (width  + 15) / 16;
    int mb_height = (height  + 15) / 16;
    return mb_width * mb_height;

}
int main(){
 return 0;
} 