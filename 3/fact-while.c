//sample code used to generate assembly code
long fact_while(long n){
        long result = 1;
        while(n>1){
                result *= n;
                n--;
        }
        return result;
}

long fact_while_goto(long n){
        long result = 1;
        goto test;
loop:
        result *= n;
        n--;
test:
        if (n>1)
                goto loop;
        return result;
}
