#include <stdint.h>
#include <stdio.h>

#define EFBIG 27
#define QCOW_MAX_L1_SIZE 0x2000000

int qcow2_snapshot_load_tmp_Snippet(int l1_size) {
    int new_l1_bytes;
     if (l1_size > QCOW_MAX_L1_SIZE) {
        return -EFBIG;
    }
     new_l1_bytes = l1_size * sizeof(uint64_t);
     return new_l1_bytes;
}

int main(){
    int l1_size;
    scanf("%d", &l1_size);
    printf("%d\n", qcow2_snapshot_load_tmp_Snippet(l1_size));
    return 0;
}