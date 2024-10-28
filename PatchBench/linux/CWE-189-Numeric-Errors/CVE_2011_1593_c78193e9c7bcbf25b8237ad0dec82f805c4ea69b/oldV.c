#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
#define CONFIG_BASE_SMALL 0 //Assuming the value
#define _AC(X,Y)	X
#define PAGE_SHIFT	13
#define PID_MAX_DEFAULT (CONFIG_BASE_SMALL ? 0x1000 : 0x8000)
#define PAGE_SIZE	(_AC(1,UL) << PAGE_SHIFT)
/*
 * A maximum of 4 million PIDs should be enough for a while.
 * [NOTE: PID/TIDs are limited to 2^29 ~= 500+ million, see futex.h.]
 */
#define PID_MAX_LIMIT (CONFIG_BASE_SMALL ? PAGE_SIZE * 8 : \
	(sizeof(long) > 4 ? 4 * 1024 * 1024 : PID_MAX_DEFAULT))

#define BITS_PER_PAGE		(1UL << (PAGE_SHIFT + 3))
#define BITS_PER_PAGE_MASK	(BITS_PER_PAGE - 1)

int next_pidmap_Snippet(unsigned int last){
    int offset;

	offset = (last + 1) & BITS_PER_PAGE_MASK;
    return offset;
}
int main(){
 return 0;
} 