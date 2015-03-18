	.file	"fact-while.c"
	.text
	.globl	fact_while
	.type	fact_while, @function
fact_while:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	$1, -8(%rbp)
	jmp	.L2
.L3:
	movq	-8(%rbp), %rax
	imulq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	subq	$1, -24(%rbp)
.L2:
	cmpq	$1, -24(%rbp)
	jg	.L3
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	fact_while, .-fact_while
	.globl	fact_while_goto
	.type	fact_while_goto, @function
fact_while_goto:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	$1, -8(%rbp)
	nop
.L6:
	cmpq	$1, -24(%rbp)
	jle	.L8
	nop
.L7:
	movq	-8(%rbp), %rax
	imulq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	subq	$1, -24(%rbp)
	jmp	.L6
.L8:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	fact_while_goto, .-fact_while_goto
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
