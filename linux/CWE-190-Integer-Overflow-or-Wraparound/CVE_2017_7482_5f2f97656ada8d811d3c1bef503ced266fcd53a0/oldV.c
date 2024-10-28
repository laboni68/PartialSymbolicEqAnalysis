#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
#define EINVAL 22

unsigned int rxrpc_krb5_decode_principal_Snippet(unsigned int tmp, unsigned int toklen){
    unsigned int paddedlen;
   if (tmp > toklen)
		return -EINVAL;
    tmp = (tmp + 3) & ~3;
	toklen -= tmp;
    return toklen;
}
int main(){
 return 0;
} 