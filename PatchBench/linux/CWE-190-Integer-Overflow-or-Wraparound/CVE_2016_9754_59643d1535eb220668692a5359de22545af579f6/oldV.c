#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define DIV_ROUND_UP(n, d) (((n) + (d) - 1) / (d))
#define PAGE_SHIFT	13
#define _AC(X,Y)	X
#define UL(x) _AC(x, UL)
#define PAGE_SIZE	(_AC(1,UL) << PAGE_SHIFT)
#define BUF_PAGE_HDR_SIZE 35 //random concrete value is set
#define BUF_PAGE_SIZE (PAGE_SIZE - BUF_PAGE_HDR_SIZE)


unsigned long ring_buffer_resize_Snippet(unsigned long size){
    unsigned long nr_pages;
    size = DIV_ROUND_UP(size, BUF_PAGE_SIZE);
	size *= BUF_PAGE_SIZE;

 	/* we need a minimum of two pages */
	if (size < BUF_PAGE_SIZE * 2)
		size = BUF_PAGE_SIZE * 2;

    nr_pages = DIV_ROUND_UP(size, BUF_PAGE_SIZE);
    return nr_pages;

}
int main(){
//  printf("%lu\n", ring_buffer_resize_Snippet(14150812626271068203));
 return 0;
} 