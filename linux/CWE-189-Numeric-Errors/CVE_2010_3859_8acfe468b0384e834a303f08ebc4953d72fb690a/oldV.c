#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
#define	EMSGSIZE	40	/* Message too long */

int verify_iovec_Snippet(int iov_len){
    int ct, err;
    err = 0;
    // int iov_len[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
	for (ct = 0; ct < 3; ct++) {
		err += iov_len;
		/*
		 * Goal is not to verify user data, but to prevent returning
		 * negative value, which is interpreted as errno.
		 * Overflow is still possible, but it is harmless.
		 */
		if (err < 0)
			return -EMSGSIZE;
	}

	return err;
}

int main(){
 return 0;
} 