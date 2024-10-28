#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define MAX_WRITERS 8

int pkt_find_dev_from_minor_Snippet(int dev_minor)
{
	if (dev_minor >= MAX_WRITERS)
		return 0;
	return 1;
}

int main(){
 return 0;
} 