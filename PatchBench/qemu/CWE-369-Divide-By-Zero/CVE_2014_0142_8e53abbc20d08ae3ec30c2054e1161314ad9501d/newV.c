#include <stdio.h>
#include <stdint.h>
#define EINVAL 22

int bochs_open_Snippet2(uint32_t extent_size,  uint32_t catalog_size) {
    int ret=0;
    int64_t total_sectors=INT64_MAX; //considering the value of total_sectors to be INT64_MAX a concrete value
     if (extent_size == 0) {
       return -EINVAL;
   } else if (extent_size > 0x800000) {
       return -EINVAL;
   }
    if (catalog_size < total_sectors / extent_size) {
        ret = -EINVAL;
    }
    return ret;
}
int bochs_open_Snippet(uint32_t extent_size) {
    int ret=0;
    uint32_t catalog_size=UINT32_MAX;
    int64_t total_sectors=INT64_MAX; //considering the value of total_sectors to be INT64_MAX a concrete value
     if (extent_size == 0) {
       return -EINVAL;
   } else if (extent_size > 0x800000) {
       return -EINVAL;
   }
    if (catalog_size < total_sectors / extent_size) {
        ret = -20;
    }
    return ret;
}

int main() {
    printf("%d\n",bochs_open_Snippet(2147483647));
    printf("%d\n",bochs_open_Snippet(0));
    return 0;
}