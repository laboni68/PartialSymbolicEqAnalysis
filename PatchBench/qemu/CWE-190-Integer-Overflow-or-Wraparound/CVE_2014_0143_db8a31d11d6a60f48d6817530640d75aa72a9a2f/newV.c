#include <stdio.h>
#include <stdint.h>
#include <limits.h> 

#define REFCOUNT_SHIFT 1
/*
 * Returns the refcount of the cluster given by its index. Any non-negative
 * return value is the refcount of the cluster, negative values are -errno
 * and indicate an error.
 */
int get_refcount(int64_t cluster_index, int cluster_bits, int64_t refcount_table_size)
{
    uint64_t refcount_table_index, block_index;
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