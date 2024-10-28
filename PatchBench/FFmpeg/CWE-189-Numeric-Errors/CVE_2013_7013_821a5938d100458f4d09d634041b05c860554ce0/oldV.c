#include<stdio.h>
#include<stdint.h>
#include<limits.h> 
#define FFALIGN(x, a) (((x)+(a)-1)&~((a)-1))

static int g2m_init_buffers_Snippet(int tile_width){
    int framebuf_stride= FFALIGN(tile_width * 3, 16);
    return framebuf_stride;
}
int main(){
    int tile_width;
    // scanf("%d", &tile_width);
    for(int i=11; i<=20;i++){
        tile_width = i;
        printf("%d  ", g2m_init_buffers_Snippet(tile_width));
    }
    // printf("%d\n", g2m_init_buffers_Snippet(tile_width));
 return 0;
} 