#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define GFS2_DIRENT_SIZE(name_len) ((40 + (name_len) + 7) & ~7) //considering sizeof(struct gfs2_dirent) as 40

static int gfs2_dirent_find_space_Snippet(unsigned totlen, unsigned int name_len)
{
	unsigned required = GFS2_DIRENT_SIZE(name_len);
	//if (gfs2_dirent_sentinel(dent)) // considering this is true
	unsigned actual = 0;
	if (totlen - actual >= required)
		return 1;
	return 0;
}

int main(){
 return 0;
} 