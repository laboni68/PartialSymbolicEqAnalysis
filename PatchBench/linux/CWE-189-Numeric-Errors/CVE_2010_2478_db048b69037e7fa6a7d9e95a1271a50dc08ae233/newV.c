#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define PAGE_SHIFT	13
#define MAX_ORDER 11
#define u32 unsigned int
#define KMALLOC_SHIFT_HIGH	((MAX_ORDER + PAGE_SHIFT - 1) <= 25 ? \
				(MAX_ORDER + PAGE_SHIFT - 1) : 25)

#define KMALLOC_MAX_SIZE	(1UL << KMALLOC_SHIFT_HIGH)

int ethtool_get_rxnfc_Snippet(u32 info_rule_cnt){
    if (info_rule_cnt > 0) {
			if (info_rule_cnt <= KMALLOC_MAX_SIZE / sizeof(u32))
                return info_rule_cnt * sizeof(u32);
		}
    return -1;
}

int main(){
 return 0;
} 