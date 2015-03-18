    long fact_do(long n){
            long result = 1;
            do{
                    result *= n;
                    n=n-1;
            } while(n>1);
            return result;
    }


    long fact_do_goto(long n){
            long result = 1;
    loop:
            result *= n;
            n=n-1;
            if(n>1)
                    goto loop;
            return result;
    }

fact_do.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <fact_do>:
   0:	b8 01 00 00 00       	mov    $0x1,%eax
   5:	48 0f af c7      L    	imul   %rdi,%rax
   9:	48 83 ef 01          	sub    $0x1,%rdi
   d:	48 83 ff 01          	cmp    $0x1,%rdi
  11:	7f f2                	jg     5 <fact_do+0x5>
  13:	f3 c3                	repz retq 

0000000000000015 <fact_do_goto>:
  15:	b8 01 00 00 00       	mov    $0x1,%eax
  1a:	48 0f af c7      L    	imul   %rdi,%rax
  1e:	48 83 ef 01          	sub    $0x1,%rdi
  22:	48 83 ff 01          	cmp    $0x1,%rdi
  26:	7f f2                	jg     1a <fact_do_goto+0x5>
  28:	f3 c3                	repz retq 
