	.text
	.file	"../plain_vf.cc"
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp3:
	.cfi_def_cfa_offset 64
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %rbp, -16
	movq	$_ZTV7Derived+16, 16(%rsp)
	movq	$_ZTV5Dummy+16, 8(%rsp)
	movq	8(%rsi), %rax
	movzbl	(%rax), %eax
	cmpl	$48, %eax
	jne	.LBB0_2
# BB#1:
	leaq	16(%rsp), %rbx
	jmp	.LBB0_3
.LBB0_2:                                # %select.false
	leaq	8(%rsp), %rbx
.LBB0_3:                                # %select.end
	movl	$0, 4(%rsp)
	movl	$10000000, %ebp         # imm = 0x989680
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r14
	.align	16, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rax
	movq	(%rax), %rax
	movl	4(%rsp), %esi
	movq	%rbx, %rdi
	callq	*%rax
	movl	%eax, 4(%rsp)
	decl	%ebp
	jne	.LBB0_4
# BB#5:
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	subq	%r14, %rax
	movabsq	$2361183241434822607, %rcx # imm = 0x20C49BA5E353F7CF
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	leaq	(%rdx,%rax), %rsi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIlEERSoT_
	movb	$10, 31(%rsp)
	leaq	31(%rsp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.section	.text._ZN7Derived12fun_functionEi,"axG",@progbits,_ZN7Derived12fun_functionEi,comdat
	.weak	_ZN7Derived12fun_functionEi
	.align	16, 0x90
	.type	_ZN7Derived12fun_functionEi,@function
_ZN7Derived12fun_functionEi:            # @_ZN7Derived12fun_functionEi
	.cfi_startproc
# BB#0:
	movl	%esi, -4(%rsp)
	movl	-4(%rsp), %eax
	incl	%eax
	movl	%eax, -4(%rsp)
	retq
.Lfunc_end1:
	.size	_ZN7Derived12fun_functionEi, .Lfunc_end1-_ZN7Derived12fun_functionEi
	.cfi_endproc

	.section	.text._ZN5Dummy12fun_functionEi,"axG",@progbits,_ZN5Dummy12fun_functionEi,comdat
	.weak	_ZN5Dummy12fun_functionEi
	.align	16, 0x90
	.type	_ZN5Dummy12fun_functionEi,@function
_ZN5Dummy12fun_functionEi:              # @_ZN5Dummy12fun_functionEi
	.cfi_startproc
# BB#0:
	movl	%esi, -4(%rsp)
	movl	-4(%rsp), %eax
	incl	%eax
	movl	%eax, -4(%rsp)
	retq
.Lfunc_end2:
	.size	_ZN5Dummy12fun_functionEi, .Lfunc_end2-_ZN5Dummy12fun_functionEi
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_plain_vf.cc,@function
_GLOBAL__sub_I_plain_vf.cc:             # @_GLOBAL__sub_I_plain_vf.cc
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp7:
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	popq	%rax
	jmp	__cxa_atexit            # TAILCALL
.Lfunc_end3:
	.size	_GLOBAL__sub_I_plain_vf.cc, .Lfunc_end3-_GLOBAL__sub_I_plain_vf.cc
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	_ZTV7Derived,@object    # @_ZTV7Derived
	.section	.rodata._ZTV7Derived,"aG",@progbits,_ZTV7Derived,comdat
	.weak	_ZTV7Derived
	.align	8
_ZTV7Derived:
	.quad	0
	.quad	_ZTI7Derived
	.quad	_ZN7Derived12fun_functionEi
	.size	_ZTV7Derived, 24

	.type	_ZTS7Derived,@object    # @_ZTS7Derived
	.section	.rodata._ZTS7Derived,"aG",@progbits,_ZTS7Derived,comdat
	.weak	_ZTS7Derived
_ZTS7Derived:
	.asciz	"7Derived"
	.size	_ZTS7Derived, 9

	.type	_ZTS4Base,@object       # @_ZTS4Base
	.section	.rodata._ZTS4Base,"aG",@progbits,_ZTS4Base,comdat
	.weak	_ZTS4Base
_ZTS4Base:
	.asciz	"4Base"
	.size	_ZTS4Base, 6

	.type	_ZTI4Base,@object       # @_ZTI4Base
	.section	.rodata._ZTI4Base,"aG",@progbits,_ZTI4Base,comdat
	.weak	_ZTI4Base
	.align	8
_ZTI4Base:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS4Base
	.size	_ZTI4Base, 16

	.type	_ZTI7Derived,@object    # @_ZTI7Derived
	.section	.rodata._ZTI7Derived,"aG",@progbits,_ZTI7Derived,comdat
	.weak	_ZTI7Derived
	.align	16
_ZTI7Derived:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS7Derived
	.quad	_ZTI4Base
	.size	_ZTI7Derived, 24

	.type	_ZTV5Dummy,@object      # @_ZTV5Dummy
	.section	.rodata._ZTV5Dummy,"aG",@progbits,_ZTV5Dummy,comdat
	.weak	_ZTV5Dummy
	.align	8
_ZTV5Dummy:
	.quad	0
	.quad	_ZTI5Dummy
	.quad	_ZN5Dummy12fun_functionEi
	.size	_ZTV5Dummy, 24

	.type	_ZTS5Dummy,@object      # @_ZTS5Dummy
	.section	.rodata._ZTS5Dummy,"aG",@progbits,_ZTS5Dummy,comdat
	.weak	_ZTS5Dummy
_ZTS5Dummy:
	.asciz	"5Dummy"
	.size	_ZTS5Dummy, 7

	.type	_ZTI5Dummy,@object      # @_ZTI5Dummy
	.section	.rodata._ZTI5Dummy,"aG",@progbits,_ZTI5Dummy,comdat
	.weak	_ZTI5Dummy
	.align	16
_ZTI5Dummy:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS5Dummy
	.quad	_ZTI4Base
	.size	_ZTI5Dummy, 24

	.section	.init_array,"aw",@init_array
	.align	8
	.quad	_GLOBAL__sub_I_plain_vf.cc

	.ident	"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
