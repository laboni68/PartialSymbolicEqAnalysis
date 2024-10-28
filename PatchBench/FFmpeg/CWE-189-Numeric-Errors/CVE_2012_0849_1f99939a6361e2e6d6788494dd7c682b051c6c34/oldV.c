#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define FF_DWT_MAX_DECLVLS 32
#define MKTAG(a,b,c,d) ((a) | ((b) << 8) | ((c) << 16) | ((unsigned)(d) << 24))
#define AVERROR_INVALIDDATA        (-MKTAG( 'I','N','D','A')) ///< Invalid data found when processing input


int ff_j2k_dwt_init_Snippet(int decomp_levels)
{
    if (decomp_levels >= FF_DWT_MAX_DECLVLS)
        return AVERROR_INVALIDDATA;
    return 0;
}

int main(){
    int decomp_levels;
    scanf("%d",&decomp_levels);
    printf("%d\n",ff_j2k_dwt_init_Snippet(decomp_levels));
 return 0;
} 