#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define EINVAL		22
#define MAX_TCP_WINDOW		32767U

int do_tcp_setsockopt_Snippet(int val){
    /* Values greater than interface MTU won't take effect. However
		 * at the point when this call is done we typically don't yet
		 * know which interface is going to be used */
		if (val < 64 || val > MAX_TCP_WINDOW) {
			return -EINVAL;
		}
        return val;
}
int main(){
	int val;
	for(int i=63;i<=120;i++){
		printf("%d ", do_tcp_setsockopt_Snippet(i));
	}
	printf("\n");
	// scanf("%d", &val);
	// printf("%d\n", do_tcp_setsockopt_Snippet(val));
 return 0;
} 