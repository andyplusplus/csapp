//assembly part of C code
long fact_for(long n){
        long i;
        long result = 1;
        for(i = 2; i<=n; i++)
                result *= i;
        return result;
}


long fact_for_while(long n){
        long i = 2;
        long result = 1;
        while(i<=n){
                result *= i;
                i++;
        }
        return result;
}
