
absdiff.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <absdiff>:
   0:	48 89 f0             	mov    %rsi,%rax
   3:	48 29 f8             	sub    %rdi,%rax
   6:	48 89 fa             	mov    %rdi,%rdx
   9:	48 29 f2             	sub    %rsi,%rdx
   c:	48 39 f7             	cmp    %rsi,%rdi
   f:	48 0f 4d c2          	cmovge %rdx,%rax
  13:	c3                   	retq   

0000000000000014 <cmovdiff>:
  14:	48 89 f2             	mov    %rsi,%rdx
  17:	48 29 fa             	sub    %rdi,%rdx
  1a:	48 89 f8             	mov    %rdi,%rax
  1d:	48 29 f0             	sub    %rsi,%rax
  20:	48 39 fe             	cmp    %rdi,%rsi
  23:	48 0f 4f c2          	cmovg  %rdx,%rax
  27:	c3                   	retq   
