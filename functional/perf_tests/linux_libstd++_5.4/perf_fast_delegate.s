	.file	"perf_fast_delegate.cc"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	_Z12fun_functioni
	.type	_Z12fun_functioni, @function
_Z12fun_functioni:
.LFB2753:
	.cfi_startproc
	movl	%edi, -4(%rsp)
	movl	-4(%rsp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rsp)
	ret
	.cfi_endproc
.LFE2753:
	.size	_Z12fun_functioni, .-_Z12fun_functioni
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely._ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi,"axG",@progbits,_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi,comdat
.LCOLDB1:
	.section	.text._ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi,"axG",@progbits,_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi,comdat
.LHOTB1:
	.p2align 4,,15
	.weak	_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi
	.type	_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi, @function
_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi:
.LFB2998:
	.cfi_startproc
	movq	(%rdi), %rax
	movl	(%rsi), %edi
	jmp	*%rax
	.cfi_endproc
.LFE2998:
	.size	_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi, .-_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi
	.section	.text.unlikely._ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi,"axG",@progbits,_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi,comdat
.LCOLDE1:
	.section	.text._ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi,"axG",@progbits,_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi,comdat
.LHOTE1:
	.section	.text.unlikely._ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv,"axG",@progbits,_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv,comdat
.LCOLDB2:
	.section	.text._ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv,"axG",@progbits,_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv,comdat
.LHOTB2:
	.p2align 4,,15
	.weak	_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv
	.type	_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv, @function
_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv:
.LFB2999:
	.cfi_startproc
	rep ret
	.cfi_endproc
.LFE2999:
	.size	_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv, .-_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv
	.section	.text.unlikely._ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv,"axG",@progbits,_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv,comdat
.LCOLDE2:
	.section	.text._ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv,"axG",@progbits,_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv,comdat
.LHOTE2:
	.section	.text.unlikely._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
.LCOLDB3:
	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
.LHOTB3:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.type	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED2Ev, @function
_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED2Ev:
.LFB3220:
	.cfi_startproc
	rep ret
	.cfi_endproc
.LFE3220:
	.size	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED2Ev, .-_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.section	.text.unlikely._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
.LCOLDE3:
	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
.LHOTE3:
	.weak	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED1Ev
	.set	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED1Ev,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.section	.text.unlikely._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,comdat
	.align 2
.LCOLDB4:
	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,comdat
.LHOTB4:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.type	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, @function
_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:
.LFB3223:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3223
	movq	%rdi, %rax
	movq	24(%rdi), %rdi
	jmp	*16(%rax)
	.cfi_endproc
.LFE3223:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,"aG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,comdat
.LLSDA3223:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3223-.LLSDACSB3223
.LLSDACSB3223:
.LLSDACSE3223:
	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,comdat
	.size	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, .-_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.section	.text.unlikely._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,comdat
.LCOLDE4:
	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,comdat
.LHOTE4:
	.section	.text.unlikely._ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv,"axG",@progbits,_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv,comdat
.LCOLDB5:
	.section	.text._ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv,"axG",@progbits,_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv,comdat
.LHOTB5:
	.p2align 4,,15
	.weak	_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv
	.type	_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv, @function
_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv:
.LFB2993:
	.cfi_startproc
	jmp	_ZdlPv
	.cfi_endproc
.LFE2993:
	.size	_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv, .-_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv
	.section	.text.unlikely._ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv,"axG",@progbits,_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv,comdat
.LCOLDE5:
	.section	.text._ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv,"axG",@progbits,_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv,comdat
.LHOTE5:
	.section	.text.unlikely._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,comdat
	.align 2
.LCOLDB6:
	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,comdat
.LHOTB6:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.type	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, @function
_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv:
.LFB3224:
	.cfi_startproc
	jmp	_ZdlPv
	.cfi_endproc
.LFE3224:
	.size	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, .-_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.section	.text.unlikely._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,comdat
.LCOLDE6:
	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,comdat
.LHOTE6:
	.section	.text.unlikely._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,comdat
	.align 2
.LCOLDB7:
	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,comdat
.LHOTB7:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.type	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info, @function
_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:
.LFB3225:
	.cfi_startproc
	movq	8(%rsi), %rsi
	movq	%rdi, %rdx
	cmpq	$_ZTSPFvPvE, %rsi
	je	.L9
	xorl	%eax, %eax
	cmpb	$42, (%rsi)
	je	.L16
	movl	$_ZTSPFvPvE, %edi
	movl	$7, %ecx
	repz cmpsb
	jne	.L16
.L9:
	leaq	16(%rdx), %rax
.L16:
	rep ret
	.cfi_endproc
.LFE3225:
	.size	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info, .-_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.section	.text.unlikely._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,comdat
.LCOLDE7:
	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,comdat
.LHOTE7:
	.section	.text.unlikely._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
.LCOLDB8:
	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
.LHOTB8:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.type	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, @function
_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev:
.LFB3222:
	.cfi_startproc
	movl	$32, %esi
	jmp	_ZdlPvm
	.cfi_endproc
.LFE3222:
	.size	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, .-_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.section	.text.unlikely._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
.LCOLDE8:
	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
.LHOTE8:
	.section	.text.unlikely._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,comdat
	.align 2
.LCOLDB9:
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,comdat
.LHOTB9:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, @function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv:
.LFB3038:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L21
	movq	(%rdi), %rax
	movq	8(%rax), %rax
	cmpq	$_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, %rax
	jne	.L23
	movl	$32, %esi
	jmp	_ZdlPvm
	.p2align 4,,10
	.p2align 3
.L21:
	rep ret
	.p2align 4,,10
	.p2align 3
.L23:
	jmp	*%rax
	.cfi_endproc
.LFE3038:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, .-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.section	.text.unlikely._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,comdat
.LCOLDE9:
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,comdat
.LHOTE9:
	.section	.text.unlikely._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,comdat
	.align 2
.LCOLDB10:
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,comdat
.LHOTB10:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv, @function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv:
.LFB3000:
	.cfi_startproc
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %eax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	testq	%rax, %rax
	je	.L25
	lock subl	$1, 8(%rdi)
	je	.L34
.L24:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	.cfi_restore_state
	movl	8(%rdi), %eax
	leal	-1(%rax), %edx
	cmpl	$1, %eax
	movl	%edx, 8(%rdi)
	jne	.L24
	movq	(%rdi), %rax
	call	*16(%rax)
	movl	12(%rbx), %eax
	leal	-1(%rax), %edx
	movl	%edx, 12(%rbx)
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L34:
	movq	(%rdi), %rax
	call	*16(%rax)
	movl	$-1, %eax
	lock xaddl	%eax, 12(%rbx)
.L30:
	cmpl	$1, %eax
	jne	.L24
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	movq	24(%rax), %rax
	jmp	*%rax
	.cfi_endproc
.LFE3000:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv, .-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	.section	.text.unlikely._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,comdat
.LCOLDE10:
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,comdat
.LHOTE10:
	.section	.text.unlikely
.LCOLDB11:
	.section	.text.startup,"ax",@progbits
.LHOTB11:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB2754:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2754
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	$8, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$40, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
.LEHB0:
	call	_Znwm
.LEHE0:
	movl	$32, %edi
	movq	%rax, %rbp
.LEHB1:
	call	_Znwm
.LEHE1:
	movl	$1, 8(%rax)
	movl	$1, 12(%rax)
	movq	%rax, %r12
	movq	$_ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE+16, (%rax)
	movq	$_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv, 16(%rax)
	movl	$10000000, %ebx
	movq	%rbp, 24(%rax)
	movq	$_Z12fun_functioni, 0(%rbp)
	movl	$0, 16(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r13
	.p2align 4,,10
	.p2align 3
.L36:
	movl	16(%rsp), %eax
	leaq	20(%rsp), %rsi
	movq	%rbp, %rdi
	movl	%eax, 20(%rsp)
.LEHB2:
	call	_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi
	subl	$1, %ebx
	movl	%eax, 16(%rsp)
	jne	.L36
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movabsq	$2361183241434822607, %rdx
	subq	%r13, %rax
	movl	$_ZSt4cout, %edi
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	sarq	$7, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsi
	call	_ZNSo9_M_insertIlEERSoT_
	leaq	15(%rsp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	movb	$10, 15(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.LEHE2:
	movq	%r12, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	xorl	%eax, %eax
	movq	24(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L48
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L43:
	.cfi_restore_state
	movq	%rax, %rdi
	call	__cxa_begin_catch
	movq	%rbp, %rdi
	call	_ZdlPv
.LEHB3:
	call	__cxa_rethrow
.LEHE3:
.L48:
	call	__stack_chk_fail
.L41:
	movq	%rax, %rbx
	movq	%r12, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	movq	%rbx, %rdi
.LEHB4:
	call	_Unwind_Resume
.LEHE4:
.L42:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rdi
.LEHB5:
	call	_Unwind_Resume
.LEHE5:
	.cfi_endproc
.LFE2754:
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA2754:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT2754-.LLSDATTD2754
.LLSDATTD2754:
	.byte	0x1
	.uleb128 .LLSDACSE2754-.LLSDACSB2754
.LLSDACSB2754:
	.uleb128 .LEHB0-.LFB2754
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2754
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L43-.LFB2754
	.uleb128 0x1
	.uleb128 .LEHB2-.LFB2754
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L41-.LFB2754
	.uleb128 0
	.uleb128 .LEHB3-.LFB2754
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L42-.LFB2754
	.uleb128 0
	.uleb128 .LEHB4-.LFB2754
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB2754
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE2754:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2754:
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE11:
	.section	.text.startup
.LHOTE11:
	.section	.text.unlikely
.LCOLDB12:
	.section	.text.startup
.LHOTB12:
	.p2align 4,,15
	.type	_GLOBAL__sub_I__Z12fun_functioni, @function
_GLOBAL__sub_I__Z12fun_functioni:
.LFB3231:
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
.LFE3231:
	.size	_GLOBAL__sub_I__Z12fun_functioni, .-_GLOBAL__sub_I__Z12fun_functioni
	.section	.text.unlikely
.LCOLDE12:
	.section	.text.startup
.LHOTE12:
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z12fun_functioni
	.weak	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 32
	.type	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, 47
_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.string	"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE"
	.weak	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 8
	.type	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, 16
_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.weak	_ZTSPFvPvE
	.section	.rodata._ZTSPFvPvE,"aG",@progbits,_ZTSPFvPvE,comdat
	.type	_ZTSPFvPvE, @object
	.size	_ZTSPFvPvE, 7
_ZTSPFvPvE:
	.string	"PFvPvE"
	.weak	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 32
	.type	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, 52
_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.string	"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE"
	.weak	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 8
	.type	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, 24
_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.weak	_ZTSSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTSSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTSSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 32
	.type	_ZTSSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTSSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, 69
_ZTSSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE:
	.string	"St19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE"
	.weak	_ZTISt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTISt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTISt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 8
	.type	_ZTISt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTISt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, 24
_ZTISt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.weak	_ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 8
	.type	_ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, 56
_ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE:
	.quad	0
	.quad	_ZTISt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED1Ev
	.quad	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.quad	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.quad	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.quad	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.1-2ubuntu1~16.04) 5.4.1 20160904"
	.section	.note.GNU-stack,"",@progbits
