#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
#define H323_ERROR_NONE 0	
#define H323_ERROR_RANGE -2

int decode_choice_Snippet(unsigned type, unsigned char f_lb, unsigned char f_ub){
    if(type>= f_lb){
        return H323_ERROR_RANGE;
    }
    if (type >= f_ub){
        return H323_ERROR_NONE;
    }
    return 1;
}

int main(){
 return 0;
} 