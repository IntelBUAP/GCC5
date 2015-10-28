	.file	"codigo13.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.globl	funcion
	.type	funcion, @function
funcion:
.LFB14:
	.cfi_startproc
	movsd	.LC0(%rip), %xmm1
	xorl	%eax, %eax
.L2:
	cmpl	%edi, %eax
	je	.L5
	mulsd	%xmm0, %xmm1
	incl	%eax
	jmp	.L2
.L5:
	movapd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE14:
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
	.globl	main
	.type	main, @function
main:
.LFB15:
	.cfi_startproc
	xorps	%xmm0, %xmm0
	xorl	%ecx, %ecx
	movl	$5, %esi
.L9:
	cvtsi2sd	%ecx, %xmm2
	movl	%ecx, %eax
	xorl	%edx, %edx
	movsd	.LC0(%rip), %xmm1
	divl	%esi
	xorl	%eax, %eax
.L7:
	cmpl	%edx, %eax
	je	.L12
	mulsd	%xmm2, %xmm1
	incl	%eax
	jmp	.L7
.L12:
	incl	%ecx
	addsd	%xmm1, %xmm0
	cmpl	$100000, %ecx
	jne	.L9
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$.LC3, %esi
	movl	$1, %edi
	movb	$1, %al
	call	__printf_chk
	xorl	%eax, %eax
	popq	%rdx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE15:
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
