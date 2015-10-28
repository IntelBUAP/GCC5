	.file	"codigo3.c"
	.section	.rodata
.LC2:
	.string	"El area del circulo es: %f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	.LC0(%rip), %eax
	movl	%eax, -8(%rbp)
	movss	-8(%rbp), %xmm0
	mulss	-8(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm2
	movss	%xmm2, -4(%rbp)
	cvtss2sd	-4(%rbp), %xmm0
	movl	$.LC2, %edi
	movl	$1, %eax
	call	printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1092616192
	.align 8
.LC1:
	.long	4028335726
	.long	1074340345
	.ident	"GCC: (Ubuntu 4.9.2-10ubuntu13) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
