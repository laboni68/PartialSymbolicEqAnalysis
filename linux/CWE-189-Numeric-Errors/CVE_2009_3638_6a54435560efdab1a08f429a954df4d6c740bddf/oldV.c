#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
#define __u32 unsigned int 

unsigned int kvm_dev_ioctl_get_supported_cpuid_Snippet(unsigned int  cpuid_nent){
    if (cpuid_nent < 1)
		return 0;
    return cpuid_nent;
}
int main(){
  unsigned int  cpuid_nent;
  scanf("%d",&cpuid_nent);
  printf("%d\n",kvm_dev_ioctl_get_supported_cpuid_Snippet(cpuid_nent));
 return 0;
} 