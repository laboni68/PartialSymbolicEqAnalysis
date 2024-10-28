#include<stdio.h>
#include<stdint.h>
#include<limits.h> 


#define MKTAG(a,b,c,d) ((a) | ((b) << 8) | ((c) << 16) | ((unsigned)(d) << 24))
#define FFERRTAG(a, b, c, d) (-(int)MKTAG(a, b, c, d))
#define AVERROR_INVALIDDATA        FFERRTAG( 'I','N','D','A') ///< Invalid data found when processing input

static int add_doubles_metadata_Snippet(int count){
     if (count >= INT_MAX / sizeof(int64_t) || count <= 0)
        return AVERROR_INVALIDDATA;
    return count * sizeof(int64_t);
}
int main(){
    int count;
    scanf("%d", &count);
    printf("%d\n", add_doubles_metadata_Snippet(count));
 return 0;
} 