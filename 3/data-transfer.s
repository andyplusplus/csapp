	.file	"data-transfer.c"
	.text
	.globl	proc
	.type	proc, @function
proc:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, %edx
	movq	%r9, -40(%rbp)
	movl	16(%rbp), %eax
	movw	%dx, -24(%rbp)
	movb	%al, -44(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movl	-20(%rbp), %eax
	addl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movzwl	(%rax), %eax
	movl	%eax, %edx
	movzwl	-24(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movw	%dx, (%rax)
	movq	24(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	movzbl	-44(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movq	24(%rbp), %rax
	movb	%dl, (%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	proc, .-proc
	.globl	caller
	.type	caller, @function
caller:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$1, -8(%rbp)
	movl	$2, -12(%rbp)
	movw	$3, -14(%rbp)
	movb	$4, -15(%rbp)
	movzbl	-15(%rbp), %eax
	movsbl	%al, %edi
	movzwl	-14(%rbp), %eax
	movswl	%ax, %r10d
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	leaq	-14(%rbp), %r9
	leaq	-12(%rbp), %rcx
	leaq	-8(%rbp), %rsi
	leaq	-15(%rbp), %r8
	movq	%r8, 8(%rsp)
	movl	%edi, (%rsp)
	movl	%r10d, %r8d
	movq	%rax, %rdi
	call	proc
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	%eax, %edx
	movzwl	-14(%rbp), %eax
	movswl	%ax, %ecx
	movzbl	-15(%rbp), %eax
	movsbl	%al, %eax
	addl	%ecx, %eax
	imull	%edx, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	caller, .-caller
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
