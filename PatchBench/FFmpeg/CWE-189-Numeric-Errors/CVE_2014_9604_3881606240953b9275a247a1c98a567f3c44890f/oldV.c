#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
static uint8_t restore_median_Snippet2(uint8_t src, int stride,
                           int width, int height, int slices, int rmode)
{
    int slice=0;
    uint8_t bsrc=0;
    int slice_start=0, slice_height=0;
    const int cmask = ~rmode;

    for (slice = 0; slice < slices; slice++) {
        slice_start  = ((slice * height) / slices) & cmask;
        slice_height = ((((slice + 1) * height) / slices) & cmask) -
                       slice_start;

        bsrc = src + slice_start * stride;
    }
    return bsrc;
}
static uint8_t restore_median_Snippet(int height, int rmode)
{
    uint8_t src=UINT8_MAX; //assuming a constant value
    int stride=50; //assuming a constant value
    int slice=0;
    uint8_t bsrc=0;
    int slice_start=0, slice_height=0;
    const int cmask = ~rmode;
    int slices=2; //assuming a constant value
    for (slice = 0; slice < slices; slice++) {
        slice_start  = ((slice * height) / slices) & cmask;
        slice_height = ((((slice + 1) * height) / slices) & cmask) -
                       slice_start;

        bsrc = src + slice_start * stride;
    }
    return bsrc;
}
int main(){
 return 0;
} 