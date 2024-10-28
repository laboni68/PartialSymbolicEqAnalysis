#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
unsigned int ext4_fill_flex_info_Snippet(int sbi_s_es_s_log_groups_per_flex)
{
    unsigned int groups_per_flex = 0;
	int sbi_s_log_groups_per_flex;

	sbi_s_log_groups_per_flex = sbi_s_es_s_log_groups_per_flex;
	if (sbi_s_log_groups_per_flex < 1 || sbi_s_log_groups_per_flex > 31) {
		sbi_s_log_groups_per_flex = 0;
		return 1;
	}
	groups_per_flex = 1 << sbi_s_log_groups_per_flex;
    return groups_per_flex;

}
int main(){
	int sbi_s_es_s_log_groups_per_flex;
	for (int i = -1005; i < -1000; i++) {
		sbi_s_es_s_log_groups_per_flex = i;
		printf("%u ", ext4_fill_flex_info_Snippet(sbi_s_es_s_log_groups_per_flex));
	}
	// scanf("%d", &sbi_s_es_s_log_groups_per_flex);
	// printf("%u\n", ext4_fill_flex_info_Snippet(sbi_s_es_s_log_groups_per_flex));
 return 0;
} 