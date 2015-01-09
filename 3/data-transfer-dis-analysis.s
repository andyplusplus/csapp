    //match C code of assembly
    void proc(long a1, long *a1p,    int a2, int *a2p,
              short a3, short *a3p,   char a4, char *a4p){
            *a1p += a1;        *a2p += a2;
            *a3p += a3;        *a4p += a4;
    }

data-transfer.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <proc>:
   0:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
   5:	48 01 3e             	add    %rdi,(%rsi)
   8:	01 11                	add    %edx,(%rcx)
   a:	66 45 01 01          	add    %r8w,(%r9)
   e:	8b 54 24 08          	mov    0x8(%rsp),%edx
  12:	00 10                	add    %dl,(%rax)
  14:	c3                   	retq   

    int caller(){
            long x1 = 1;        int x2 = 2;
            short x3 = 3;       char x4 = 4;
            proc(x1, &x1, x2, &x2, x3, &x3, x4, &x4);
            return (x1+x2)*(x3+x4);
    }

0000000000000015 <caller>:
  15:	48 83 ec 20          	sub    $0x20,%rsp
  19:	48 c7 44 24 18 01 00 	movq   $0x1,0x18(%rsp)
  20:	00 00 
  22:	c7 44 24 14 02 00 00 	movl   $0x2,0x14(%rsp)
  29:	00 
  2a:	66 c7 44 24 12 03 00 	movw   $0x3,0x12(%rsp)
  31:	c6 44 24 11 04       	movb   $0x4,0x11(%rsp)
  36:	48 8d 44 24 11       	lea    0x11(%rsp),%rax
  3b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40:	c7 04 24 04 00 00 00 	movl   $0x4,(%rsp)
  47:	4c 8d 4c 24 12       	lea    0x12(%rsp),%r9
  4c:	41 b8 03 00 00 00    	mov    $0x3,%r8d
  52:	48 8d 4c 24 14       	lea    0x14(%rsp),%rcx
  57:	ba 02 00 00 00       	mov    $0x2,%edx
  5c:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi
  61:	bf 01 00 00 00       	mov    $0x1,%edi
  66:	e8 00 00 00 00       	callq  6b <caller+0x56>
  6b:	48 63 54 24 14       	movslq 0x14(%rsp),%rdx
  70:	48 03 54 24 18       	add    0x18(%rsp),%rdx
  75:	0f bf 4c 24 12       	movswl 0x12(%rsp),%ecx
  7a:	0f be 44 24 11       	movsbl 0x11(%rsp),%eax
  7f:	01 c8                	add    %ecx,%eax
  81:	0f af c2             	imul   %edx,%eax
  84:	48 83 c4 20          	add    $0x20,%rsp
  88:	c3                   	retq   
