#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

int serial_update_parameters_Snippet(uint16_t divider, int baudbase)
{
    if (divider == 0 || divider> baudbase) {
        return 0;
    }
    int speed= baudbase/divider;
    return speed;
}

int main(){
 return 0;
} 