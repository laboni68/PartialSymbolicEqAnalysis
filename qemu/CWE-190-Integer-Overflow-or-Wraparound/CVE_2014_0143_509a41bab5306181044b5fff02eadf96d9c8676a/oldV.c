#include <limits.h>
#include <stdint.h>
#include <stdio.h>

int cloop_open_Snippet(uint32_t n_blocks){
    uint32_t offsets_size;
    offsets_size = n_blocks * sizeof(uint64_t);
    return offsets_size;
}
int main(){
    uint32_t n_blocks;
    scanf("%u", &n_blocks);
    printf("%d\n", cloop_open_Snippet(n_blocks));
    return 0;
}