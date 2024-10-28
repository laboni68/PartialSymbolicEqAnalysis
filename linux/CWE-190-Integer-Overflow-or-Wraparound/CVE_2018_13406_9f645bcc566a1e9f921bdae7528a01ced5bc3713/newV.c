#include<stdio.h>
// #include<stdint.h>
#include<limits.h> 

#define SIZE_MAX        (~(size_t)0)

int uvesafb_setcmap_Snippet(size_t size_entries, size_t len){
    if (size_entries != 0 && len > SIZE_MAX / size_entries)
		return 0;
    return size_entries * len;
}

int main(){
 return 0;
} 