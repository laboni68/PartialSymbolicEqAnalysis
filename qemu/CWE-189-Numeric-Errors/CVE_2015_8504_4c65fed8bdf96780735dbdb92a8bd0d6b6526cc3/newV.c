#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

int set_pixel_format_Snippet(int red_max){
  int rmax = red_max ? red_max : 0xFF;
  return rmax ;
}

int main(){
  printf("%d\n", set_pixel_format_Snippet(1048577));
 return 0;
} 