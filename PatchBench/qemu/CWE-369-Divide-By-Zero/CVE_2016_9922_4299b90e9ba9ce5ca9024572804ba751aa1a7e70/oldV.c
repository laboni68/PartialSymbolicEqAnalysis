#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
#include <stdbool.h>
bool blit_region_is_unsafe_Snippet2(int32_t pitch, int32_t addr,int cirrus_blt_width, int cirrus_blt_height, uint32_t vram_size)
{
    if (pitch < 0) {
        int64_t min = addr
            + ((int64_t)cirrus_blt_height-1) * pitch;
        int32_t max = addr
            + cirrus_blt_width;
        if (min < 0 || max > vram_size) {
            return true;
        }
    } else {
        int64_t max = addr
            + ((int64_t)cirrus_blt_height-1) * pitch
            + cirrus_blt_width;
        if (max > vram_size) {
            return true;
        }
    }
    return false;
}
bool blit_region_is_unsafe_Snippet(int32_t pitch)
{
    int32_t addr=50, cirrus_blt_width=8, cirrus_blt_height=8;
    uint32_t vram_size=UINT32_MAX;
    if (pitch < 0) {
        int64_t min = addr
            + ((int64_t)cirrus_blt_height-1) * pitch;
        int32_t max = addr
            + cirrus_blt_width;
        if (min < 0 || max > vram_size) {
            return true;
        }
    } else {
        int64_t max = addr
            + ((int64_t)cirrus_blt_height-1) * pitch
            + cirrus_blt_width;
        if (max > vram_size) {
            return true;
        }
    }
    return false;
}

int main(){
 return 0;
} 