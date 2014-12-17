#include <stdio.h>

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer start, int len) {
        int i;
        for (i = 0; i < len; i++)
                printf(" %.2x", start[i]);
        printf("\n");
}

void show_bits(byte_pointer start, int len){
        int i, j, mask, bit;
        for(i = 0; i<len; i++){
                for(mask=1<<7, j=0; j<8; j++, mask>>=1){
                        bit = (mask & start[i]) >0 ? 1 : 0;
                        printf("%d", bit );
                        if(j == 3) printf(",");
                }
                printf("  ");
        }
        printf("\n");
}

void show_int(int x) {
        show_bytes((byte_pointer) &x, sizeof(int));
}

void show_float(float x) {
        show_bytes((byte_pointer) &x, sizeof(float));
}

void show_pointer(void *x) {
        show_bytes((byte_pointer) &x, sizeof(void *));
}


void test_show_bytes(int val) {
        int ival = val;
        float fval = (float) ival;
        int *pval = &ival;
        printf("big endian    - most significant first;\n");
        printf("little endian - least significant first\n\n");
        printf("expected value: 0x3039\n\n");

        printf("int value:     ");          show_int(ival);
        printf("float value:   ");          show_float(fval);
        printf("float pointer: ");          show_pointer(pval);
}


void p48_ex25_show_bytes(){
        printf("endian of value 0x87654321\n")
        int val = 0x87654321;
        byte_pointer valp = (byte_pointer) &val;
        show_bytes(valp, 1);
        show_bytes(valp, 2);
        show_bytes(valp, 3);
}


void p49_ex26_show_bits(){
        printf("bin representations of two values\n");
        int i = 3510593;
        printf("\n\nshow bits: %d\n", i);
        byte_pointer valp = (byte_pointer) &i;
        show_bytes(valp, sizeof(int));
        show_bits(valp, sizeof(int));

        float f = 3510593.0;
        printf("\nshow bits: %f\n", f);
        valp = (byte_pointer) &f;
        show_bytes(valp, sizeof(f));
        show_bits(valp, sizeof(f));
}


void main(){
        int i = 12345;
        test_show_bytes(i);
        p48_ex25_show_bytes();
        p49_ex26_show_bits();
}
