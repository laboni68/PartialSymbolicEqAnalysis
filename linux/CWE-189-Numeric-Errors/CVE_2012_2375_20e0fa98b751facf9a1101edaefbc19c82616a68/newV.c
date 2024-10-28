#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

int __nfs4_get_acl_uncached_Snippet(size_t buflen,size_t res_acl_data_offset){
    int acl_len = 0;
    size_t res_acl_len=buflen;
    acl_len = res_acl_len - res_acl_data_offset;
    return acl_len;
}
int main(){
    size_t buflen,res_acl_data_offset;
    scanf("%d %d",&buflen,&res_acl_data_offset);
    printf("%d\n",__nfs4_get_acl_uncached_Snippet(buflen,res_acl_data_offset));
 return 0;
} 