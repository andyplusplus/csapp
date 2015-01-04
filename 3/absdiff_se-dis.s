
absdiff_se.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <absdiff_se>:
   0:	48 39 f7             	cmp    %rsi,%rdi
   3:	7d 0f                	jge    14 <absdiff_se+0x14>
   5:	48 83 05 00 00 00 00 	addq   $0x1,0x0(%rip)        # d <absdiff_se+0xd>
   c:	01 
   d:	48 89 f0             	mov    %rsi,%rax
  10:	48 29 f8             	sub    %rdi,%rax
  13:	c3                   	retq   
  14:	48 83 05 00 00 00 00 	addq   $0x1,0x0(%rip)        # 1c <absdiff_se+0x1c>
  1b:	01 
  1c:	48 89 f8             	mov    %rdi,%rax
  1f:	48 29 f0             	sub    %rsi,%rax
  22:	c3                   	retq   

0000000000000023 <gotodiff_se>:
  23:	48 39 f7             	cmp    %rsi,%rdi
  26:	7d 0f                	jge    37 <gotodiff_se+0x14>
  28:	48 83 05 00 00 00 00 	addq   $0x1,0x0(%rip)        # 30 <gotodiff_se+0xd>
  2f:	01 
  30:	48 89 f0             	mov    %rsi,%rax
  33:	48 29 f8             	sub    %rdi,%rax
  36:	c3                   	retq   
  37:	48 83 05 00 00 00 00 	addq   $0x1,0x0(%rip)        # 3f <gotodiff_se+0x1c>
  3e:	01 
  3f:	48 89 f8             	mov    %rdi,%rax
  42:	48 29 f0             	sub    %rsi,%rax
  45:	c3                   	retq   
