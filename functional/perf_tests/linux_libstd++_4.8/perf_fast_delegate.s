	.file	"perf_fast_delegate.cc"
	.text
	.p2align 4,,15
	.globl	_Z12fun_functioni
	.type	_Z12fun_functioni, @function
_Z12fun_functioni:
.LFB2319:
	.cfi_startproc
	movl	%edi, -4(%rsp)
	movl	-4(%rsp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rsp)
	ret
	.cfi_endproc
.LFE2319:
	.size	_Z12fun_functioni, .-_Z12fun_functioni
	.section	.text._ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi,"axG",@progbits,_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi,comdat
	.p2align 4,,15
	.weak	_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi
	.type	_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi, @function
_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi:
.LFB2452:
	.cfi_startproc
	movq	(%rdi), %rax
	movl	(%rsi), %edi
	jmp	*%rax
	.cfi_endproc
.LFE2452:
	.size	_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi, .-_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi
	.section	.text._ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv,"axG",@progbits,_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv,comdat
	.p2align 4,,15
	.weak	_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv
	.type	_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv, @function
_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv:
.LFB2453:
	.cfi_startproc
	rep ret
	.cfi_endproc
.LFE2453:
	.size	_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv, .-_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, @function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv:
.LFB2486:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L4
	movq	(%rdi), %rax
	movq	8(%rax), %rax
	jmp	*%rax
	.p2align 4,,10
	.p2align 3
.L4:
	rep ret
	.cfi_endproc
.LFE2486:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, .-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, @function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev:
.LFB2495:
	.cfi_startproc
	movq	$_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE+16, (%rdi)
	ret
	.cfi_endproc
.LFE2495:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, .-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED1Ev
	.set	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED1Ev,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.type	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EED2Ev, @function
_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EED2Ev:
.LFB2597:
	.cfi_startproc
	movq	$_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE+16, (%rdi)
	ret
	.cfi_endproc
.LFE2597:
	.size	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EED2Ev, .-_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.weak	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EED1Ev
	.set	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EED1Ev,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.type	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, @function
_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:
.LFB2600:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2600
	movq	%rdi, %rax
	movq	16(%rdi), %rdi
	movq	24(%rax), %rax
	jmp	*%rax
	.cfi_endproc
.LFE2600:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,"aG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,comdat
.LLSDA2600:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2600-.LLSDACSB2600
.LLSDACSB2600:
.LLSDACSE2600:
	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,comdat
	.size	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, .-_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.section	.text._ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv,"axG",@progbits,_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv,comdat
	.p2align 4,,15
	.weak	_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv
	.type	_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv, @function
_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv:
.LFB2447:
	.cfi_startproc
	jmp	_ZdlPv
	.cfi_endproc
.LFE2447:
	.size	_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv, .-_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev, @function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev:
.LFB2497:
	.cfi_startproc
	movq	$_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE+16, (%rdi)
	jmp	_ZdlPv
	.cfi_endproc
.LFE2497:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev, .-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev
	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EED0Ev,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EED0Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.type	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EED0Ev, @function
_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EED0Ev:
.LFB2599:
	.cfi_startproc
	movq	$_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE+16, (%rdi)
	jmp	_ZdlPv
	.cfi_endproc
.LFE2599:
	.size	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EED0Ev, .-_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.type	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, @function
_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv:
.LFB2601:
	.cfi_startproc
	movq	$_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE+16, (%rdi)
	jmp	_ZdlPv
	.cfi_endproc
.LFE2601:
	.size	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, .-_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.type	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info, @function
_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:
.LFB2602:
	.cfi_startproc
	movq	8(%rsi), %rsi
	movq	%rdi, %r8
	cmpq	$_ZTSPFvPvE, %rsi
	je	.L15
	xorl	%eax, %eax
	cmpb	$42, (%rsi)
	je	.L22
	movl	$_ZTSPFvPvE, %edi
	movl	$7, %ecx
	repz cmpsb
	je	.L15
.L22:
	rep ret
	.p2align 4,,10
	.p2align 3
.L15:
	leaq	24(%r8), %rax
	ret
	.cfi_endproc
.LFE2602:
	.size	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info, .-_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv, @function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv:
.LFB2454:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %ebp
	leaq	8(%rdi), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	testq	%rbp, %rbp
	je	.L26
	movl	$-1, %edx
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
.L27:
	cmpl	$1, %eax
	je	.L34
.L25:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L34:
	.cfi_restore_state
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	call	*16(%rax)
	testq	%rbp, %rbp
	leaq	12(%rbx), %rax
	je	.L30
	movl	$-1, %edx
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
.L31:
	cmpl	$1, %eax
	jne	.L25
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	24(%rax), %rax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	*%rax
.L26:
	.cfi_restore_state
	movl	8(%rdi), %eax
	leal	-1(%rax), %edx
	movl	%edx, 8(%rdi)
	jmp	.L27
.L30:
	movl	12(%rbx), %eax
	leal	-1(%rax), %edx
	movl	%edx, 12(%rbx)
	jmp	.L31
	.cfi_endproc
.LFE2454:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv, .-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB2320:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2320
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$8, %edi
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
.LEHB0:
	call	_Znwm
.LEHE0:
	movl	$32, %edi
	movq	%rax, %rbp
.LEHB1:
	call	_Znwm
.LEHE1:
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L36
	movl	$1, 8(%rax)
	movl	$1, 12(%rax)
	movq	$_ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE+16, (%rax)
	movq	%rbp, 16(%rax)
	movq	$_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv, 24(%rax)
.L36:
	testq	%rbp, %rbp
	je	.L38
	movq	$_Z12fun_functioni, 0(%rbp)
.L38:
	movl	$0, 8(%rsp)
	movl	$10000000, %ebx
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r13
	.p2align 4,,10
	.p2align 3
.L42:
	movl	8(%rsp), %edx
	leaq	12(%rsp), %rsi
	movq	%rbp, %rdi
	movl	%edx, 12(%rsp)
.LEHB2:
	call	_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi
	subl	$1, %ebx
	movl	%eax, 8(%rsp)
	jne	.L42
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %rcx
	movabsq	$2361183241434822607, %rsi
	movl	$_ZSt4cout, %edi
	subq	%r13, %rcx
	movq	%rcx, %rax
	sarq	$63, %rcx
	imulq	%rsi
	movq	%rdx, %rsi
	sarq	$7, %rsi
	subq	%rcx, %rsi
	call	_ZNSo9_M_insertIlEERSoT_
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	movb	$10, 7(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.LEHE2:
	testq	%r12, %r12
	je	.L52
	movq	%r12, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
.L52:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L48:
	.cfi_restore_state
	movq	%rax, %rdi
	call	__cxa_begin_catch
	movq	%rbp, %rdi
	call	_ZdlPv
.LEHB3:
	call	__cxa_rethrow
.LEHE3:
.L46:
	testq	%r12, %r12
	movq	%rax, %rbx
	je	.L45
	movq	%r12, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
.L45:
	movq	%rbx, %rdi
.LEHB4:
	call	_Unwind_Resume
.LEHE4:
.L47:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rdi
.LEHB5:
	call	_Unwind_Resume
.LEHE5:
	.cfi_endproc
.LFE2320:
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA2320:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT2320-.LLSDATTD2320
.LLSDATTD2320:
	.byte	0x1
	.uleb128 .LLSDACSE2320-.LLSDACSB2320
.LLSDACSB2320:
	.uleb128 .LEHB0-.LFB2320
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2320
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L48-.LFB2320
	.uleb128 0x1
	.uleb128 .LEHB2-.LFB2320
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L46-.LFB2320
	.uleb128 0
	.uleb128 .LEHB3-.LFB2320
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L47-.LFB2320
	.uleb128 0
	.uleb128 .LEHB4-.LFB2320
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB2320
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE2320:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2320:
	.section	.text.startup
	.size	main, .-main
	.p2align 4,,15
	.type	_GLOBAL__sub_I__Z12fun_functioni, @function
_GLOBAL__sub_I__Z12fun_functioni:
.LFB2606:
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
.LFE2606:
	.size	_GLOBAL__sub_I__Z12fun_functioni, .-_GLOBAL__sub_I__Z12fun_functioni
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z12fun_functioni
	.weak	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 16
	.type	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, 16
_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.weak	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 32
	.type	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, 47
_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.string	"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE"
	.weak	_ZTSPFvPvE
	.section	.rodata._ZTSPFvPvE,"aG",@progbits,_ZTSPFvPvE,comdat
	.type	_ZTSPFvPvE, @object
	.size	_ZTSPFvPvE, 7
_ZTSPFvPvE:
	.string	"PFvPvE"
	.weak	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 16
	.type	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, 24
_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.weak	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 32
	.type	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, 52
_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.string	"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE"
	.weak	_ZTISt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTISt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTISt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 16
	.type	_ZTISt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTISt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE, 24
_ZTISt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.weak	_ZTSSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTSSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTSSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 32
	.type	_ZTSSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTSSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE, 69
_ZTSSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE:
	.string	"St19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE"
	.weak	_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 32
	.type	_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, 56
_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.quad	0
	.quad	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED1Ev
	.quad	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev
	.quad	__cxa_pure_virtual
	.quad	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.quad	__cxa_pure_virtual
	.weak	_ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 32
	.type	_ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE, 56
_ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE:
	.quad	0
	.quad	_ZTISt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EED1Ev
	.quad	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.quad	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.quad	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.quad	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIiELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 4.8.3 20140911 (Red Hat 4.8.3-7)"
	.section	.note.GNU-stack,"",@progbits
