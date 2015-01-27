
test-if.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <test>:
   0:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
   4:	48 01 d0             	add    %rdx,%rax
   7:	48 83 ff fd          	cmp    $0xfffffffffffffffd,%rdi
   b:	7d 15                	jge    22 <test+0x22>
   d:	48 39 d6             	cmp    %rdx,%rsi
  10:	7d 08                	jge    1a <test+0x1a>
  12:	48 89 f8             	mov    %rdi,%rax
  15:	48 0f af c6          	imul   %rsi,%rax
  19:	c3                   	retq   
  1a:	48 89 f0             	mov    %rsi,%rax
  1d:	48 0f af c2          	imul   %rdx,%rax
  21:	c3                   	retq   
  22:	48 83 ff 02          	cmp    $0x2,%rdi
  26:	7e 07                	jle    2f <test+0x2f>
  28:	48 89 f8             	mov    %rdi,%rax
  2b:	48 0f af c2          	imul   %rdx,%rax
  2f:	f3 c3                	repz retq 
