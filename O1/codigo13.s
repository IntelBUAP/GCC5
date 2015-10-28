	.file	"codigo13.c"
	.text
	.globl	funcion
	.type	funcion, @function
funcion:
.LFB24:
	.cfi_startproc
	testl	%edi, %edi
	je	.L4
	movl	$0, %eax
	movsd	.LC0(%rip), %xmm1
.L3:
	mulsd	%xmm0, %xmm1
	addl	$1, %eax
	cmpl	%edi, %eax
	jne	.L3
	jmp	.L2
.L4:
	movsd	.LC0(%rip), %xmm1
.L2:
	movapd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE24:
	.size	funcion, .-funcion
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"suma = %g\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
	movl	$0, %esi
	pxor	%xmm0, %xmm0
	movsd	.LC0(%rip), %xmm1
	movl	$-858993459, %edi
	movapd	%xmm1, %xmm4
	movapd	%xmm1, %xmm3
	jmp	.L7
.L12:
	movl	%esi, %eax
	mull	%edi
	shrl	$2, %edx
	leal	(%rdx,%rdx,4), %eax
	movl	%esi, %edx
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rdx, %xmm2
	movl	%esi, %edx
	subl	%eax, %edx
	je	.L13
	movl	$0, %ecx
	movapd	%xmm3, %xmm1
.L11:
	mulsd	%xmm2, %xmm1
	addl	$1, %ecx
	cmpl	%edx, %ecx
	jne	.L11
	jmp	.L7
.L13:
	movapd	%xmm4, %xmm1
.L7:
	addsd	%xmm1, %xmm0
	addl	$1, %esi
	cmpl	$100000, %esi
	jne	.L12
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$.LC2, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.ident	"GCC: (Ubuntu 4.9.2-10ubuntu13) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
