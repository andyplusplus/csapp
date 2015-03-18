	.file	"test-if.c"
	.text
	.globl	test
	.type	test, @function
test:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$-3, -24(%rbp)
	jge	.L2
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.L3
	movq	-24(%rbp), %rax
	imulq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L5
.L3:
	movq	-32(%rbp), %rax
	imulq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L5
.L2:
	cmpq	$2, -24(%rbp)
	jle	.L5
	movq	-24(%rbp), %rax
	imulq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.L5:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	test, .-test
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
