#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define XFACE_MAX_DIGITS 704
#define XFACE_BITSPERWORD 8
#define XFACE_WIDTH  48
#define XFACE_HEIGHT 48
#define XFACE_PIXELS (XFACE_WIDTH * XFACE_HEIGHT)
#define XFACE_WORDCARRY (1 << XFACE_BITSPERWORD)
#define XFACE_WORDMASK (XFACE_WORDCARRY - 1)
#define XFACE_MAX_WORDS ((XFACE_PIXELS * 2 + XFACE_BITSPERWORD - 1) / XFACE_BITSPERWORD)

int xface_decode_frame_Snippet(int k, int nb_words){
     if (++k > XFACE_MAX_DIGITS) {
        return -1;
     }
     if (nb_words >= XFACE_MAX_WORDS)  //taken from xface_encode_frame
        return -1;
    return 0;
}


int main(){
 int k, nb_words;
 scanf("%d %d", &k, &nb_words);
 printf("%d\n", xface_decode_frame_Snippet(k, nb_words));
 return 0;
} 