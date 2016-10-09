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
	.section	.text._ZN5Dummy12fun_functionEi,"axG",@progbits,_ZN5Dummy12fun_functionEi,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN5Dummy12fun_functionEi
	.type	_ZN5Dummy12fun_functionEi, @function
_ZN5Dummy12fun_functionEi:
.LFB1807:
	.cfi_startproc
	movl	%esi, -4(%rsp)
	movl	-4(%rsp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rsp)
	ret
	.cfi_endproc
.LFE1807:
	.size	_ZN5Dummy12fun_functionEi, .-_ZN5Dummy12fun_functionEi
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB1808:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	$10000000, %ebx
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	movq	8(%rsi), %rdx
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	$_ZTV7Derived+16, 16(%rsp)
	movq	$_ZTV5Dummy+16, 32(%rsp)
	leaq	32(%rsp), %rax
	cmpb	$48, (%rdx)
	leaq	16(%rsp), %rbp
	movl	$0, 12(%rsp)
	cmovne	%rax, %rbp
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r12
	.p2align 4,,10
	.p2align 3
.L5:
	movq	0(%rbp), %rax
	movl	12(%rsp), %esi
	movq	%rbp, %rdi
	call	*(%rax)
	subl	$1, %ebx
	movl	%eax, 12(%rsp)
	jne	.L5
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movabsq	$2361183241434822607, %rdx
	subq	%r12, %rax
	movl	$_ZSt4cout, %edi
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	sarq	$7, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsi
	call	_ZNSo9_M_insertIlEERSoT_
	leaq	11(%rsp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	movb	$10, 11(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	xorl	%eax, %eax
	movq	40(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L11
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L11:
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
	.weak	_ZTS4Base
	.section	.rodata._ZTS4Base,"aG",@progbits,_ZTS4Base,comdat
	.type	_ZTS4Base, @object
	.size	_ZTS4Base, 6
_ZTS4Base:
	.string	"4Base"
	.weak	_ZTI4Base
	.section	.rodata._ZTI4Base,"aG",@progbits,_ZTI4Base,comdat
	.align 8
	.type	_ZTI4Base, @object
	.size	_ZTI4Base, 16
_ZTI4Base:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS4Base
	.weak	_ZTS7Derived
	.section	.rodata._ZTS7Derived,"aG",@progbits,_ZTS7Derived,comdat
	.align 8
	.type	_ZTS7Derived, @object
	.size	_ZTS7Derived, 9
_ZTS7Derived:
	.string	"7Derived"
	.weak	_ZTI7Derived
	.section	.rodata._ZTI7Derived,"aG",@progbits,_ZTI7Derived,comdat
	.align 8
	.type	_ZTI7Derived, @object
	.size	_ZTI7Derived, 24
_ZTI7Derived:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS7Derived
	.quad	_ZTI4Base
	.weak	_ZTS5Dummy
	.section	.rodata._ZTS5Dummy,"aG",@progbits,_ZTS5Dummy,comdat
	.type	_ZTS5Dummy, @object
	.size	_ZTS5Dummy, 7
_ZTS5Dummy:
	.string	"5Dummy"
	.weak	_ZTI5Dummy
	.section	.rodata._ZTI5Dummy,"aG",@progbits,_ZTI5Dummy,comdat
	.align 8
	.type	_ZTI5Dummy, @object
	.size	_ZTI5Dummy, 24
_ZTI5Dummy:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS5Dummy
	.quad	_ZTI4Base
	.weak	_ZTV7Derived
	.section	.rodata._ZTV7Derived,"aG",@progbits,_ZTV7Derived,comdat
	.align 8
	.type	_ZTV7Derived, @object
	.size	_ZTV7Derived, 24
_ZTV7Derived:
	.quad	0
	.quad	_ZTI7Derived
	.quad	_ZN7Derived12fun_functionEi
	.weak	_ZTV5Dummy
	.section	.rodata._ZTV5Dummy,"aG",@progbits,_ZTV5Dummy,comdat
	.align 8
	.type	_ZTV5Dummy, @object
	.size	_ZTV5Dummy, 24
_ZTV5Dummy:
	.quad	0
	.quad	_ZTI5Dummy
	.quad	_ZN5Dummy12fun_functionEi
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 6.2.0-3ubuntu11~16.04) 6.2.0 20160901"
	.section	.note.GNU-stack,"",@progbits
