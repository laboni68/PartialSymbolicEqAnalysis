#include <stdint.h>

#define EFBIG 27
#define QCOW_MAX_L1_SIZE 0x2000000

int qcow2_open_Snippet(int l1_size) {
     if (l1_size > QCOW_MAX_L1_SIZE) {
        return -EFBIG;
    }
    return 0;
}

int main(){
    int l1_size;
    scanf("%d", &l1_size);
    printf("%d\n", qcow2_open_Snippet(l1_size));
    return 0;
}