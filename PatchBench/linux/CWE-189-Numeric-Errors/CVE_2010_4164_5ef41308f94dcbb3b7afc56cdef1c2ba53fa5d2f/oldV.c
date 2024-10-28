#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
#define	X25_FAC_CLASS_MASK	0xC0
#define	X25_FAC_CLASS_A		0x00
#define	X25_FAC_CLASS_B		0x40
#define	X25_FAC_CLASS_C		0x80
#define	X25_FAC_CLASS_D		0xC0
unsigned int x25_parse_facilities_Snippet(unsigned int len, unsigned char p){
    switch (p & X25_FAC_CLASS_MASK) {
        case X25_FAC_CLASS_A:
			len -= 2;
			break;
		case X25_FAC_CLASS_B:
			len -= 3;
			break;
		case X25_FAC_CLASS_C:
			len -= 4;
			break;
    }
    return len;
}
int main(){
	unsigned int len;
	scanf("%u", &len);
	unsigned char p;
	scanf("%hhu", &p);
	printf("%d\n", x25_parse_facilities_Snippet(len, p));
 return 0;
} 