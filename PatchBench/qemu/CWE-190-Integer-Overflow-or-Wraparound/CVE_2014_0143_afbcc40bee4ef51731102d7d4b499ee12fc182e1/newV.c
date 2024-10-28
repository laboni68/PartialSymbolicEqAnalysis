#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <errno.h>

#define EFBIG 27

int parallels_open_Snippet(unsigned int catalog_size){
    if (catalog_size > INT_MAX / 4) {
    //    error_setg(errp, "Catalog too large");
       return -EFBIG;

   }
   return catalog_size * 4;
}

int main()
{
    unsigned int catalog_size ;
    scanf("%d", &catalog_size);
   printf("Catalog size: %d\n", parallels_open_Snippet(catalog_size)); 
    return 0;
}