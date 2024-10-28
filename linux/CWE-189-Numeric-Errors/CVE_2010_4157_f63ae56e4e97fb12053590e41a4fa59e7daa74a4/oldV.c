#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define EINVAL 22

int ioc_general_Snippet( unsigned long gen_data_len, unsigned long gen_sense_len ){
    if (gen_data_len + gen_sense_len != 0) {
        return 1;
    }
    return 0;
}
int main(){
 return 0;
} 