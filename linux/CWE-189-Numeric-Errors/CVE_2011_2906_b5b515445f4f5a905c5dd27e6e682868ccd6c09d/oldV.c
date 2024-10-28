#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
#define EINVAL 22
#define EFAULT 14

int pmcraid_ioctl_passthrough_Snippet(int request_size){
int rc = 0;
if (request_size > 0) {
		// rc = access_ok(access, arg, request_offset + request_size);
        rc=50; //concrete value is assigned

		if (!rc) {
			rc = -EFAULT;
			return rc;
		}
	} 
    return rc;
}
int main(){
 return 0;
} 