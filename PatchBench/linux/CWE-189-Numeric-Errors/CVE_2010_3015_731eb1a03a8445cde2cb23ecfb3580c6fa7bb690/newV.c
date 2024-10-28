#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define __u32 unsigned int
typedef __u32 ext4_lblk_t;
#define in_range(b, first, len)	((b) >= (first) && (b) <= (first) + (len) - 1)

int ext4_ext_get_blocks_Snippet(ext4_lblk_t ee_block, ext4_lblk_t iblock){
    unsigned short ee_len=50; //considering the value of ee_len as 50
    unsigned int allocated = 0;
    if (in_range(iblock, ee_block, ee_len)) {
			/* number of remaining blocks in the extent */
			allocated = ee_len - (iblock - ee_block);
    }
    return allocated;
}

int main(){
 return 0;
} 