#include <stdio.h>
#include <math.h>
#include <stdbool.h>
double snippet(int x, int y) {
        if (x*x*x > 0){
            if(y==10)//change
                return 1000;
        } else {
            if (false)//change
                return -1000;
        }
        return 0;
}
int main()
{
    printf("result is %d\n", snippet(-2147483648, -2147483648));
return 0;
}
