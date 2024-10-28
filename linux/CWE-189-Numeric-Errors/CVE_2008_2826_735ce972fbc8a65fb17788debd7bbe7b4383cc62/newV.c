#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define EINVAL 22


static int sctp_getsockopt_local_addrs_old_Snippet(int getaddrs_addr_num){
	if (getaddrs_addr_num <= 0 ||
	    getaddrs_addr_num >= (INT_MAX / 28) //considering sizeof(union sctp_addr) = 28
        )
		return -EINVAL;
	return 0;
}

int main(){
	int getaddrs_addr_num;
	scanf("%d",&getaddrs_addr_num);
	printf("%d\n",sctp_getsockopt_local_addrs_old_Snippet(getaddrs_addr_num));
 return 0;
} 