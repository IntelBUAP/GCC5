	.file	"codigo13.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	funcion
	.type	funcion, @function
funcion:
.LFB24:
	.cfi_startproc
	testl	%edi, %edi
	movsd	.LC0(%rip), %xmm1
	je	.L2
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L3:
	addl	$1, %eax
	mulsd	%xmm0, %xmm1
	cmpl	%edi, %eax
	jne	.L3
.L2:
	movapd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE24:
	.size	funcion, .-funcion
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"suma = %g\n"
	.section	.text.unlikely
.LCOLDB4:
	.section	.text.startup,"ax",@progbits
.LHOTB4:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
	movsd	.LC0(%rip), %xmm1
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	movl	$-858993459, %edi
	movapd	%xmm1, %xmm3
.L8:
	addl	$1, %esi
	addsd	%xmm1, %xmm0
	cmpl	$100000, %esi
	je	.L15
	.p2align 4,,10
	.p2align 3
.L11:
	movl	%esi, %eax
	pxor	%xmm2, %xmm2
	mull	%edi
	movapd	%xmm3, %xmm1
	cvtsi2sd	%esi, %xmm2
	shrl	$2, %edx
	leal	(%rdx,%rdx,4), %eax
	movl	%esi, %edx
	subl	%eax, %edx
	je	.L8
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L10:
	addl	$1, %ecx
	mulsd	%xmm2, %xmm1
	cmpl	%edx, %ecx
	jne	.L10
	addl	$1, %esi
	addsd	%xmm1, %xmm0
	cmpl	$100000, %esi
	jne	.L11
.L15:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$.LC3, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE4:
	.section	.text.startup
.LHOTE4:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.ident	"GCC: (Ubuntu 4.9.2-10ubuntu13) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
