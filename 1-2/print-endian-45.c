#include <stdio.h>

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer start, int len) {
        int i;
        for (i = 0; i < len; i++)
                printf(" %.2x", start[i]);
        printf("\n");
}

void show_bytes_rev_endian(byte_pointer start, int len) {
        int i;
        for (i = len-1; i >= 0; i++)
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
        printf("big endian    - most significant first;\n");
        printf("little endian - least significant first\n\n");
        printf("expected value: 0x3039\n\n");

        printf("int value:     ");          show_int(ival);
        printf("float value:   ");          show_float(fval);
        printf("float pointer: ");          show_pointer(pval);
}


void p48_ex25_show_bytes(){
        printf("endian of value 0x87654321\n");
        int val = 0x87654321;
        byte_pointer valp = (byte_pointer) &val;
        show_bytes(valp, 1);
        show_bytes(valp, 2);
        show_bytes(valp, 3);
}


void show_bits_of_byte(unsigned char ch, int showSep){
        int j, mask, bit;
        for(mask=1<<7, j=0; j<8; j++, mask>>=1){
                bit = (mask & ch) >0 ? 1 : 0;
                printf("%d", bit );
                if(j == 3 && showSep) printf(",");
        }
        if(showSep) printf(" ");
}

void show_bits(byte_pointer start, int len, int showSep){
        int i;
        for(i = 0; i<len; i++){
                show_bits_of_byte(start[i], showSep);
        }
        printf("    ");
}

//reverse data display for bit endian
void show_bits_rev_dian(byte_pointer start, int len, int showSep){
        int i;
        for(i = len-1; i>=0; i--){
                show_bits_of_byte(start[i], showSep);
        }
        printf("    ");
}


void p49_ex26_show_bits(){
        printf("bin representations of two values\n");
        int i = 3510593;
        printf("\n\ndecimal: %d    ", i);
        byte_pointer valp_i = (byte_pointer) &i;
        printf("expected: 0x35 91 41 => ");
        show_bytes(valp_i, sizeof(int));
        printf("show bits endian:");

        show_bits(valp_i, sizeof(int), 1);
        show_bits(valp_i, sizeof(int), 0); //for easy comparison

        float f = 3510593;
        printf("\ndecimal: %f                     ", f);
        byte_pointer valp_f = (byte_pointer) &f;
        show_bytes(valp_f, sizeof(float));
        printf("show bits normal:");
        show_bits(valp_f, sizeof(float), 1);
        show_bits(valp_f, sizeof(float), 0);  //for easy comparison

        printf("\n");
        show_bits_rev_dian(valp_i, sizeof(int), 1);
        show_bits_rev_dian(valp_i, sizeof(int), 0);

        printf("\n");
        show_bits_rev_dian(valp_f, sizeof(float), 1);
        printf("  ");
        show_bits_rev_dian(valp_f, sizeof(float), 0);
        printf("\n");
}



void main(){
        int i = 12345;
        test_show_bytes(i);
        p48_ex25_show_bytes();
        p49_ex26_show_bits();
}
