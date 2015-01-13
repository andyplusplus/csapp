
./exchange-187.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <exchange>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   8:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
   c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  10:	48 8b 00             	mov    (%rax),%rax
  13:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  17:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  1b:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  1f:	48 89 10             	mov    %rdx,(%rax)
  22:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  26:	5d                   	pop    %rbp
  27:	c3                   	retq   
