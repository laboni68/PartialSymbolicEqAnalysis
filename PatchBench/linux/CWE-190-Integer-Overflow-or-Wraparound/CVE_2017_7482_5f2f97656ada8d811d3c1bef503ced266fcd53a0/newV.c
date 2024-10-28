#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
#define EINVAL 22

unsigned int rxrpc_krb5_decode_principal_Snippet(unsigned int tmp, unsigned int toklen){
    unsigned int paddedlen;
    paddedlen = (tmp + 3) & ~3;
	if (paddedlen > toklen)
		return -EINVAL;
    toklen -= paddedlen;
    return toklen;
}

int main(){
   
 return 0;
} 