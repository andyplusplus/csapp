
switch_eg.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <switch_eg>:
   0:	48 83 ee 64          	sub    $0x64,%rsi
   4:	48 83 fe 06          	cmp    $0x6,%rsi
   8:	77 21                	ja     2b <switch_eg+0x2b>
   a:	ff 24 f5 00 00 00 00 	jmpq   *0x0(,%rsi,8)
  11:	48 8d 04 7f          	lea    (%rdi,%rdi,2),%rax
  15:	48 8d 3c 87          	lea    (%rdi,%rax,4),%rdi
  19:	eb 15                	jmp    30 <switch_eg+0x30>
  1b:	48 83 c7 0a          	add    $0xa,%rdi
  1f:	48 83 c7 0b          	add    $0xb,%rdi
  23:	eb 0b                	jmp    30 <switch_eg+0x30>
  25:	48 0f af ff          	imul   %rdi,%rdi
  29:	eb 05                	jmp    30 <switch_eg+0x30>
  2b:	bf 00 00 00 00       	mov    $0x0,%edi
  30:	48 89 3a             	mov    %rdi,(%rdx)
  33:	c3                   	retq   
