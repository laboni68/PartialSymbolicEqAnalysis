#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
/*
 * PAGE_ALLOC_COSTLY_ORDER is the order at which allocations are deemed
 * costly to service.  That is between allocation orders which should
 * coalesce naturally under reasonable reclaim pressure and those which
 * will not.
 */
#define PAGE_ALLOC_COSTLY_ORDER 3
/* PAGE_SHIFT determines the page size */
#define PAGE_SIZE 4096 

int xt_alloc_table_info_Snippet(unsigned int size){
    int size_info =  64; //sizeof(*info) = size_info = 64 bytes
    size_t sz = size_info + size;
	// /* Pedantry: prevent them from hitting BUG() in vmalloc.c --RR */
	// if ((SMP_ALIGN(size) >> PAGE_SHIFT) + 2 > totalram_pages)
	// 	return NULL;

	if (sz <= (PAGE_SIZE << PAGE_ALLOC_COSTLY_ORDER))
		return 1;
    return 0;
}

int main(){
 return 0;
} 