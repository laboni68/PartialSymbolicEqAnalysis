#include <stdint.h>

#define EFBIG 27

int qcow2_open_Snippet(int l1_size) {
     if (l1_size > 0x2000000) {
        return -EFBIG;
    }
    return 0;
}

int main(){
    return 0;
}