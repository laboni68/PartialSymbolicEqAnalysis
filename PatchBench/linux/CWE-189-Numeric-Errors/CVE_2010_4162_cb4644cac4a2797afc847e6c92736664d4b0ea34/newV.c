#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define _AC(X,Y)	X
#define PAGE_SHIFT	13
#define PAGE_SIZE	(_AC(1,UL) << PAGE_SHIFT)
#define EINVAL 22

int bio_copy_user_iov_Snippet2(unsigned long uaddr, size_t iov_len){
    int nr_pages = 0;
    unsigned long end;
	unsigned long start;
    end = (uaddr + iov_len + PAGE_SIZE - 1) >> PAGE_SHIFT;
	start = uaddr >> PAGE_SHIFT;
		/*
		 * Overflow, abort
		 */
		if (end < start)
			return -EINVAL;

		nr_pages += end - start;
    return nr_pages;
}

int bio_copy_user_iov_Snippet(size_t iov_len){
	unsigned long uaddr=35184372064371; //assuming a concrete value for uaddr
    int nr_pages = 0;
    unsigned long end;
	unsigned long start;
    end = (uaddr + iov_len + PAGE_SIZE - 1) >> PAGE_SHIFT;
	start = uaddr >> PAGE_SHIFT;
		/*
		 * Overflow, abort
		 */
		if (end < start)
			return -EINVAL;

		nr_pages += end - start;
    return nr_pages;
}

int main(){
	size_t iov_len;
	scanf("%zu", &iov_len);
	printf("%d\n", bio_copy_user_iov_Snippet(iov_len));
 return 0;
} 