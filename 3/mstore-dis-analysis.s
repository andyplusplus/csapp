long mult2(long, long);

void multstore(long x, long y, long *dest){
	long t = mult2(x, y);
	*dest = t;
}


mstore-172.o:     file format elf64-x86-64
Disassembly of section .text:


    void multstore(long x, long y, long *dest)
    x in %rdi       first argument
    y in %rsi       second argument
    dest in %rdx    third argument

0000000000000000 <multstore>:
   0:	53                   	push   %rbx                 save %rbx, used for callee saved
   1:	48 89 d3             	mov    %rdx,%rbx            save the third to be used later
   4:	e8 00 00 00 00       	callq  9 <multstore+0x9>    call multi2(x, y)
   9:	48 89 03             	mov    %rax,(%rbx)          result saved in %rax, put result in thrid argument
   c:	5b                   	pop    %rbx                 restore %rbx
   d:	c3                   	retq
