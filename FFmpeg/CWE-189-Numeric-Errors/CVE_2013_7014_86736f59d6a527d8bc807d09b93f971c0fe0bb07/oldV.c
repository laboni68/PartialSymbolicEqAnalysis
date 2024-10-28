#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

static long add_bytes_c_Snippet( int w){
    long i,a=1;
    uint8_t src=50; //assuming a concrete value
    for(i=0; i<=w-sizeof(long); i+=sizeof(long)){
        a = (long)(src+i);
    }
   return a;
}
int main(){
    int w;
    scanf("%d",&w);
    printf("%ld\n",add_bytes_c_Snippet(w));
 return 0;
} 