
fact_for.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <fact_for>:
   0:	b8 01 00 00 00       	mov    $0x1,%eax
   5:	ba 02 00 00 00       	mov    $0x2,%edx
   a:	eb 08                	jmp    14 <fact_for+0x14>
   c:	48 0f af c2          	imul   %rdx,%rax
  10:	48 83 c2 01          	add    $0x1,%rdx
  14:	48 39 fa             	cmp    %rdi,%rdx
  17:	7e f3                	jle    c <fact_for+0xc>
  19:	f3 c3                	repz retq 

000000000000001b <fact_for_while>:
  1b:	b8 01 00 00 00       	mov    $0x1,%eax
  20:	ba 02 00 00 00       	mov    $0x2,%edx
  25:	eb 08                	jmp    2f <fact_for_while+0x14>
  27:	48 0f af c2          	imul   %rdx,%rax
  2b:	48 83 c2 01          	add    $0x1,%rdx
  2f:	48 39 fa             	cmp    %rdi,%rdx
  32:	7e f3                	jle    27 <fact_for_while+0xc>
  34:	f3 c3                	repz retq 
