#include <stdio.h>
#include <stdint.h>
#include <limits.h> 
// int test(int refcount_table_index, int block_index){
//     printf("%ld\n", refcount_table_index);
//     printf("%ld\n", block_index);
//     printf("%d\n", refcount_table_index);
//     printf("%d\n", block_index);
    
//     return refcount_table_index+1;
// }
#define REFCOUNT_SHIFT 1

int get_refcount(int64_t cluster_index, int cluster_bits, int64_t refcount_table_size)
{
    int refcount_table_index, block_index;
    int ret;
    uint16_t refcount;

    refcount_table_index = cluster_index >> (cluster_bits - REFCOUNT_SHIFT);
    if (refcount_table_index >= refcount_table_size)
        return 0;


    block_index = cluster_index &
        ((1 << (cluster_bits - REFCOUNT_SHIFT)) - 1);
    

    return block_index;
}

int main(){
    // test(INT_MAX, INT_MIN);
    // test(INT64_MAX, INT64_MIN);
}