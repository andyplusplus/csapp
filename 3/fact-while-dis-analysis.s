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

fact-while.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <fact_while>:
   0:	b8 01 00 00 00       	mov    $0x1,%eax
   5:	eb 08                	jmp    f <fact_while+0xf>
   7:	48 0f af c7       7   	imul   %rdi,%rax
   b:	48 83 ef 01          	sub    $0x1,%rdi
   f:	48 83 ff 01       f   	cmp    $0x1,%rdi
  13:	7f f2                	jg     7 <fact_while+0x7>
  15:	f3 c3                	repz retq 

0000000000000017 <fact_while_goto>:
  17:	b8 01 00 00 00       	mov    $0x1,%eax
  1c:	eb 08                	jmp    26 <fact_while_goto+0xf>
  1e:	48 0f af c7         le 	imul   %rdi,%rax
  22:	48 83 ef 01          	sub    $0x1,%rdi
  26:	48 83 ff 01         26 	cmp    $0x1,%rdi
  2a:	7f f2                	jg     1e <fact_while_goto+0x7>
  2c:	f3 c3                	repz retq 
