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
	xorl	%ecx, %ecx
	pxor	%xmm0, %xmm0
	movl	$-858993459, %esi
	movapd	%xmm1, %xmm3
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L20:
	cmpl	$4, %edx
	mulsd	%xmm1, %xmm2
	jne	.L14
	mulsd	%xmm2, %xmm1
.L8:
	addl	$1, %ecx
	addsd	%xmm1, %xmm0
	cmpl	$100000, %ecx
	je	.L19
.L11:
	movl	%ecx, %eax
	pxor	%xmm1, %xmm1
	mull	%esi
	cvtsi2sd	%ecx, %xmm1
	shrl	$2, %edx
	leal	(%rdx,%rdx,4), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	je	.L12
	cmpl	$1, %edx
	je	.L8
	movapd	%xmm1, %xmm2
	cmpl	$2, %edx
	mulsd	%xmm1, %xmm2
	jne	.L20
.L14:
	movapd	%xmm2, %xmm1
	addl	$1, %ecx
	cmpl	$100000, %ecx
	addsd	%xmm1, %xmm0
	jne	.L11
	.p2align 4,,10
	.p2align 3
.L19:
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
	.p2align 4,,10
	.p2align 3
.L12:
	movapd	%xmm3, %xmm1
	jmp	.L8
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
