#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
static int allocate_buffers_Snippet(uint32_t max_samples_per_frame){
    int buf_size=max_samples_per_frame * sizeof(int32_t);
    return buf_size;
}
int main(){
    uint32_t max_samples_per_frame;
    scanf("%d",&max_samples_per_frame);
    printf("%d\n",allocate_buffers_Snippet(max_samples_per_frame));
 return 0;
} 