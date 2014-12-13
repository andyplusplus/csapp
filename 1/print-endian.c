#include <stdio.h>

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer start, int len) {
        int i;
        for (i = 0; i < len; i++)
                printf(" %.2x", start[i]);
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
        printf("Linux 64; \nbig endian - most significant come first;\nlittle endian - least significant first\n\n");
        printf("expected value: 0x3039\n\n");

        printf("int value:     ");          show_int(ival);
        printf("float value:   ");          show_float(fval);
        printf("float pointer: ");          show_pointer(pval);
}


void p48_ex25_showBytes(){
        int val = 0x87654321;
        byte_pointer valp = (byte_pointer) &val;
        show_bytes(valp, 1);
        show_bytes(valp, 2);
        show_bytes(valp, 3);
}

void main(){
        int i = 12345;
        test_show_bytes(i);
        p48_ex25_showBytes();
}
