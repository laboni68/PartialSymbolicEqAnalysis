#include <stdio.h>
#include <math.h>
double snippet(int x, int y) {
        if (x*x*x > 0){
            if(x>0 && y==10)
                return 1000;
        } else {
            if (x>0 && y==20)
                return -1000;
        }
        return 0;
}
int main()
{
    printf("result is %d\n", snippet(-2147483648, -2147483648));
return 0;
}