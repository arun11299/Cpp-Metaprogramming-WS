	.file	"plain_vf.cc"
	.section	.text._ZN7Derived12fun_functionEi,"axG",@progbits,_ZN7Derived12fun_functionEi,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN7Derived12fun_functionEi
	.type	_ZN7Derived12fun_functionEi, @function
_ZN7Derived12fun_functionEi:
.LFB1806:
	.cfi_startproc
	movl	%esi, -4(%rsp)
	movl	-4(%rsp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rsp)
	ret
	.cfi_endproc
.LFE1806:
	.size	_ZN7Derived12fun_functionEi, .-_ZN7Derived12fun_functionEi
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB1808:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movl	$0, 4(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movl	$10000000, %edx
	movq	%rax, %rbx
	.p2align 4,,10
	.p2align 3
.L3:
	movl	4(%rsp), %eax
	addl	$1, %eax
	subl	$1, %edx
	movl	%eax, 4(%rsp)
	jne	.L3
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movabsq	$2361183241434822607, %rdx
	subq	%rbx, %rax
	movl	$_ZSt4cout, %edi
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	sarq	$7, %rdx
	movq	%rdx, %rsi
	subq	%rcx, %rsi
	call	_ZNSo9_M_insertIlEERSoT_
	leaq	3(%rsp), %rsi
	movq	%rax, %rdi
	movl	$1, %edx
	movb	$10, 3(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	xorl	%eax, %eax
	movq	8(%rsp), %rdi
	xorq	%fs:40, %rdi
	jne	.L8
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L8:
	.cfi_restore_state
	call	__stack_chk_fail
	.cfi_endproc
.LFE1808:
	.size	main, .-main
	.p2align 4,,15
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2264:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit
	.cfi_endproc
.LFE2264:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 6.2.0-3ubuntu11~16.04) 6.2.0 20160901"
	.section	.note.GNU-stack,"",@progbits
