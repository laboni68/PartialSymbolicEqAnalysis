#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
#define EINVAL 22
#define PATH_MAX        4096	/* # chars in a path name including nul */
#define __u16 unsigned short

int CIFSFindNext_Snippet(int name_len)
{
	int rc = 0;
    __u16 byte_count=0;
	if (name_len < PATH_MAX) {
		byte_count += name_len;
		/* 14 byte parm len above enough for 2 byte null terminator */
	} else {
		rc = -EINVAL;
	}
    return rc;
}
int main(){
 return 0;
} 