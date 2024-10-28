#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define MAC_TABLE_ENTRIES    64

int cveSnippet(uint32_t in_use){
  if (in_use <= MAC_TABLE_ENTRIES)
    return in_use;
  return 0;
}

int main(){
  int a;
  scanf("%d", &a);
  printf("%d\n", cveSnippet(a));
 return 0;
} 