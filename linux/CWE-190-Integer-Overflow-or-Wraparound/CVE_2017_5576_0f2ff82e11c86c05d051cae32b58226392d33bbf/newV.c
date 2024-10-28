#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define EINVAL 22
#define roundup(x, y) (                                \
{                                                      \
	const typeof(y) __y = y;		       \
	(((x) + (__y - 1)) / __y) * __y;	       }                                                      \
)
int vc4_get_bcl_Snippet(uint32_t bin_cl_size, uint32_t shader_rec_size){
    uint32_t bin_offset = 0;
	uint32_t shader_rec_offset = roundup(bin_offset + bin_cl_size,
					     16);
    uint32_t uniforms_offset = shader_rec_offset + shader_rec_size;
    // printf("shader_rec_offset: %d, bin_cl_size: %d, uniforms_offset: %d\n", shader_rec_offset, bin_cl_size, uniforms_offset);
	if (shader_rec_offset < bin_cl_size ||
	    uniforms_offset < shader_rec_offset)
    {
		return -EINVAL;
	}
return 0;
}

int main(){
	uint32_t bin_cl_size, shader_rec_size;
	scanf("%d %d", &bin_cl_size, &shader_rec_size);
	printf("%d\n", vc4_get_bcl_Snippet(bin_cl_size, shader_rec_size));
 return 0;
} 