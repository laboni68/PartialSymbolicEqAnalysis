#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

int64_t cveSnippet(unsigned int sample_size){
    int64_t current_offset;
    if (sample_size > 0x3FFFFFFF) {
            return 0;
        }
    current_offset=sample_size;
    return current_offset;
}

int main(){
 return 0;
} 