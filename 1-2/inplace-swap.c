#include <stdio.h>

void inplace_swap(int *x, int *y) {
         *y = *x ^ *y; /* Step 1 */
         *x = *x ^ *y; /* Step 2 */
         *y = *x ^ *y; /* Step 3 */
}


void reverse_array(int a[], int cnt) {
         int first, last;
         for (first = 0, last = cnt-1;
               first < last;
               first++,last--)

               inplace_swap(&a[first], &a[last]);
}

void rever(int a[], int cnt ){
        int i;
        reverse_array(a, cnt);
        for(i = 0; i<cnt; i++)
                printf("%d ", a[i]);
        printf("\n");
}

void main(){
        int a[] = {1,2,3,4};
        rever(a, 4);

        int b[] = {1,2,3,4,5};
        rever(b, 5);
}
