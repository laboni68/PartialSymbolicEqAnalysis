#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define __u32 uint32_t

int udf_read_inode_Snippet(__u32 iinfo_i_lenAlloc, int bs, size_t udf_file_entry_alloc_offset_inode  ){ //udf_file_entry_alloc_offset(inode) = udf_file_entry_alloc_offset_inode
/*
	 * Sanity check length of allocation descriptors and extended attrs to
	 * avoid integer overflows
	 */
	if ( iinfo_i_lenAlloc > bs) //considering iinfo->i_lenEAttr > bs as don't care
		return -1;

    int  inode_i_size=28;   //considering inode->i_size = 28
	/* Now do exact checks */
	if (udf_file_entry_alloc_offset_inode + iinfo_i_lenAlloc > bs)
		return -1;
	/* Sanity checks for files in ICB so that we don't get confused later */
	// if (iinfo_i_alloc_type == ICBTAG_FLAG_AD_IN_ICB) { //considering the type is ICBTAG_FLAG_AD_IN_ICB
		/*
		 * For file in ICB data is stored in allocation descriptor
		 * so sizes should match
		 */
		if (iinfo_i_lenAlloc != inode_i_size)
			return -1;
	// }
    return 0;
}

int main(){
 return 0;
} 