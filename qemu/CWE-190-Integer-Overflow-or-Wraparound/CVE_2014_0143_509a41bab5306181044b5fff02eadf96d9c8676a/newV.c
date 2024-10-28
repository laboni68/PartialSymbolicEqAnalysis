#include <limits.h>
#include <stdint.h>
#include <stdio.h>

#define EINVAL 22

int cloop_open_Snippet(uint32_t n_blocks){
    uint32_t offsets_size;
    if (n_blocks > UINT32_MAX / sizeof(uint64_t)) {
        /* Prevent integer overflow */
        //error_setg(errp, "n_blocks %u must be %zu or less",
          //         n_blocks,
            //       UINT32_MAX / sizeof(uint64_t));
        return -EINVAL;
    }
    offsets_size = n_blocks * sizeof(uint64_t);
    return offsets_size;
}
int main(){
    uint32_t n_blocks;
    scanf("%u", &n_blocks);
    printf("%ld\n",  sizeof(uint64_t));
    printf("%ld\n",  UINT32_MAX / sizeof(uint64_t));
    printf("%d\n", cloop_open_Snippet(n_blocks));
    return 0;
}