#include <limits.h>
#include <stdio.h>
#include <stdint.h>

#define EFBIG 27
int qcow2_grow_l1_table_Snippet(int64_t new_l1_size)
{
    if (new_l1_size > INT_MAX/sizeof(uint64_t)) {
        return EFBIG;
    }
    return 0;
}

int main(){
    int64_t new_l1_size;
    scanf("%ld", &new_l1_size);
    printf("%d\n", qcow2_grow_l1_table_Snippet(new_l1_size));
    return 0;
}