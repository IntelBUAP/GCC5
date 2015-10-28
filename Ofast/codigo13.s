	.file	"codigo13.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	funcion
	.type	funcion, @function
funcion:
.LFB24:
	.cfi_startproc
	testl	%edi, %edi
	je	.L9
	leal	-2(%rdi), %ecx
	leal	-1(%rdi), %edx
	shrl	%ecx
	addl	$1, %ecx
	cmpl	$8, %edx
	leal	(%rcx,%rcx), %eax
	jbe	.L10
	movapd	%xmm0, %xmm1
	movapd	.LC0(%rip), %xmm2
	xorl	%edx, %edx
	unpcklpd	%xmm1, %xmm1
.L4:
	addl	$1, %edx
	mulpd	%xmm1, %xmm2
	cmpl	%edx, %ecx
	ja	.L4
	movapd	%xmm2, %xmm3
	cmpl	%eax, %edi
	unpckhpd	%xmm3, %xmm3
	movapd	%xmm3, %xmm1
	mulsd	%xmm2, %xmm1
	je	.L2
	leal	1(%rax), %edx
	mulsd	%xmm0, %xmm1
	cmpl	%edx, %edi
	jbe	.L2
.L15:
	leal	2(%rax), %edx
	mulsd	%xmm0, %xmm1
	cmpl	%edx, %edi
	jbe	.L2
	leal	3(%rax), %edx
	mulsd	%xmm0, %xmm1
	cmpl	%edx, %edi
	jbe	.L2
	leal	4(%rax), %edx
	mulsd	%xmm0, %xmm1
	cmpl	%edx, %edi
	jbe	.L2
	leal	5(%rax), %edx
	mulsd	%xmm0, %xmm1
	cmpl	%edx, %edi
	jbe	.L2
	leal	6(%rax), %edx
	mulsd	%xmm0, %xmm1
	cmpl	%edx, %edi
	jbe	.L2
	leal	7(%rax), %edx
	mulsd	%xmm0, %xmm1
	cmpl	%edx, %edi
	jbe	.L2
	addl	$8, %eax
	mulsd	%xmm0, %xmm1
	cmpl	%eax, %edi
	jbe	.L2
	mulsd	%xmm0, %xmm1
	.p2align 4,,10
	.p2align 3
.L2:
	movapd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	xorl	%eax, %eax
	movsd	.LC1(%rip), %xmm1
	leal	1(%rax), %edx
	mulsd	%xmm0, %xmm1
	cmpl	%edx, %edi
	jbe	.L2
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L9:
	movsd	.LC1(%rip), %xmm1
	jmp	.L2
	.cfi_endproc
.LFE24:
	.size	funcion, .-funcion
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"suma = %g\n"
	.section	.text.unlikely
.LCOLDB5:
	.section	.text.startup,"ax",@progbits
.LHOTB5:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
	movsd	.LC1(%rip), %xmm1
	xorl	%ecx, %ecx
	pxor	%xmm0, %xmm0
	movl	$-858993459, %esi
	movapd	%xmm1, %xmm3
	.p2align 4,,10
	.p2align 3
.L17:
	addl	$1, %ecx
	addsd	%xmm1, %xmm0
	cmpl	$100000, %ecx
	je	.L26
.L22:
	movl	%ecx, %eax
	pxor	%xmm1, %xmm1
	mull	%esi
	cvtsi2sd	%ecx, %xmm1
	shrl	$2, %edx
	leal	(%rdx,%rdx,4), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	je	.L23
	cmpl	$1, %edx
	jbe	.L17
	movapd	%xmm1, %xmm2
	cmpl	$2, %edx
	mulsd	%xmm1, %xmm2
	jbe	.L24
	cmpl	$3, %edx
	mulsd	%xmm1, %xmm2
	ja	.L21
.L24:
	movapd	%xmm2, %xmm1
	addl	$1, %ecx
	cmpl	$100000, %ecx
	addsd	%xmm1, %xmm0
	jne	.L22
.L26:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$.LC4, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	mulsd	%xmm2, %xmm1
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L23:
	movapd	%xmm3, %xmm1
	jmp	.L17
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE5:
	.section	.text.startup
.LHOTE5:
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.ident	"GCC: (Ubuntu 4.9.2-10ubuntu13) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
