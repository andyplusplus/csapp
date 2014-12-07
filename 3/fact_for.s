	.file	"fact_for.c"
	.text
	.globl	fact_for
	.type	fact_for, @function
fact_for:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	$1, -8(%rbp)
	movq	$2, -16(%rbp)
	jmp	.L2
.L3:
	movq	-8(%rbp), %rax
	imulq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -16(%rbp)
.L2:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.L3
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	fact_for, .-fact_for
	.globl	fact_for_while
	.type	fact_for_while, @function
fact_for_while:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	$2, -16(%rbp)
	movq	$1, -8(%rbp)
	jmp	.L6
.L7:
	movq	-8(%rbp), %rax
	imulq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -16(%rbp)
.L6:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.L7
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	fact_for_while, .-fact_for_while
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
