#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define u32 unsigned int

int ethtool_get_rxnfc_Snippet(u32 info_rule_cnt){
    if (info_rule_cnt > 0) {
                return info_rule_cnt * sizeof(u32);
		}
    return -1;
}

int main(){
 return 0;
} 