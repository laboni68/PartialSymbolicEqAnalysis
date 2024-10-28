#include <limits.h>
#include<stdio.h>
#define BDRV_SECTOR_BITS   9
#define BDRV_SECTOR_SIZE   (1ULL << BDRV_SECTOR_BITS)
#define EIO 5
int bdrv_check_byte_request_Snippet(int nb_sectors){
    if (nb_sectors > INT_MAX / BDRV_SECTOR_SIZE) {
        return -EIO;
    }
    return nb_sectors * BDRV_SECTOR_SIZE;
}
int main(){
    int nb_sectors;
    scanf("%d", &nb_sectors);
    printf("%d\n",bdrv_check_byte_request_Snippet(nb_sectors));
    return 0;
}