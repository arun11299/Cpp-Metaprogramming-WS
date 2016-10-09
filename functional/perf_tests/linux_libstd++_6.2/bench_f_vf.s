	.file	"bench_f_vf.cc"
	.text
	.p2align 4,,15
	.globl	_Z12fun_functioni
	.type	_Z12fun_functioni, @function
_Z12fun_functioni:
.LFB3321:
	.cfi_startproc
	movl	%edi, -4(%rsp)
	movl	-4(%rsp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rsp)
	ret
	.cfi_endproc
.LFE3321:
	.size	_Z12fun_functioni, .-_Z12fun_functioni
	.section	.text._ZN7Derived12fun_functionEi,"axG",@progbits,_ZN7Derived12fun_functionEi,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN7Derived12fun_functionEi
	.type	_ZN7Derived12fun_functionEi, @function
_ZN7Derived12fun_functionEi:
.LFB3350:
	.cfi_startproc
	movl	%esi, -4(%rsp)
	movl	-4(%rsp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rsp)
	ret
	.cfi_endproc
.LFE3350:
	.size	_ZN7Derived12fun_functionEi, .-_ZN7Derived12fun_functionEi
	.section	.text._ZN5Dummy12fun_functionEi,"axG",@progbits,_ZN5Dummy12fun_functionEi,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN5Dummy12fun_functionEi
	.type	_ZN5Dummy12fun_functionEi, @function
_ZN5Dummy12fun_functionEi:
.LFB3351:
	.cfi_startproc
	movl	%esi, -4(%rsp)
	movl	-4(%rsp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rsp)
	ret
	.cfi_endproc
.LFE3351:
	.size	_ZN5Dummy12fun_functionEi, .-_ZN5Dummy12fun_functionEi
	.section	.text._ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi,"axG",@progbits,_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi,comdat
	.p2align 4,,15
	.weak	_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi
	.type	_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi, @function
_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi:
.LFB3822:
	.cfi_startproc
	movq	(%rdi), %rax
	movl	(%rsi), %edi
	jmp	*%rax
	.cfi_endproc
.LFE3822:
	.size	_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi, .-_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi
	.section	.text._ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation,comdat
	.p2align 4,,15
	.weak	_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation
	.type	_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, @function
_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation:
.LFB3823:
	.cfi_startproc
	cmpl	$1, %edx
	je	.L7
	jb	.L8
	cmpl	$2, %edx
	jne	.L6
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
.L6:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	movq	$_ZTIPFViiE, (%rdi)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	movq	%rsi, (%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE3823:
	.size	_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, .-_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation
	.section	.text._ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi,"axG",@progbits,_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi,comdat
	.p2align 4,,15
	.weak	_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi
	.type	_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi, @function
_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi:
.LFB3834:
	.cfi_startproc
	movq	(%rdi), %rax
	movl	(%rsi), %edi
	jmp	*%rax
	.cfi_endproc
.LFE3834:
	.size	_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi, .-_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi
	.text
	.p2align 4,,15
	.type	_ZN8delegateIFvP6ObjectEE12functor_stubIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEEUlT_E_EENSt9enable_ifIXntootlNS3_14is_member_pairIS8_EEEtlNS3_20is_const_member_pairIS8_EEEEvE4typeEPvOS1_, @function
_ZN8delegateIFvP6ObjectEE12functor_stubIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEEUlT_E_EENSt9enable_ifIXntootlNS3_14is_member_pairIS8_EEEtlNS3_20is_const_member_pairIS8_EEEEvE4typeEPvOS1_:
.LFB3927:
	.cfi_startproc
	movq	(%rdi), %rdx
	movl	(%rdx), %eax
	addl	$1, %eax
	movl	%eax, (%rdx)
	ret
	.cfi_endproc
.LFE3927:
	.size	_ZN8delegateIFvP6ObjectEE12functor_stubIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEEUlT_E_EENSt9enable_ifIXntootlNS3_14is_member_pairIS8_EEEtlNS3_20is_const_member_pairIS8_EEEEvE4typeEPvOS1_, .-_ZN8delegateIFvP6ObjectEE12functor_stubIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEEUlT_E_EENSt9enable_ifIXntootlNS3_14is_member_pairIS8_EEEtlNS3_20is_const_member_pairIS8_EEEEvE4typeEPvOS1_
	.p2align 4,,15
	.type	_ZN8delegateIFvP6ObjectEE12deleter_stubIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEEUlT_E_EEvPv, @function
_ZN8delegateIFvP6ObjectEE12deleter_stubIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEEUlT_E_EEvPv:
.LFB3929:
	.cfi_startproc
	rep ret
	.cfi_endproc
.LFE3929:
	.size	_ZN8delegateIFvP6ObjectEE12deleter_stubIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEEUlT_E_EEvPv, .-_ZN8delegateIFvP6ObjectEE12deleter_stubIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEEUlT_E_EEvPv
	.p2align 4,,15
	.type	_ZNSt17_Function_handlerIFvP6ObjectEZL23BM_std_function_poly_cbRN9benchmark5StateEEUlT_E_E9_M_invokeERKSt9_Any_dataOS1_, @function
_ZNSt17_Function_handlerIFvP6ObjectEZL23BM_std_function_poly_cbRN9benchmark5StateEEUlT_E_E9_M_invokeERKSt9_Any_dataOS1_:
.LFB4004:
	.cfi_startproc
	movq	(%rdi), %rdx
	movl	(%rdx), %eax
	addl	$1, %eax
	movl	%eax, (%rdx)
	ret
	.cfi_endproc
.LFE4004:
	.size	_ZNSt17_Function_handlerIFvP6ObjectEZL23BM_std_function_poly_cbRN9benchmark5StateEEUlT_E_E9_M_invokeERKSt9_Any_dataOS1_, .-_ZNSt17_Function_handlerIFvP6ObjectEZL23BM_std_function_poly_cbRN9benchmark5StateEEUlT_E_E9_M_invokeERKSt9_Any_dataOS1_
	.p2align 4,,15
	.type	_ZNSt14_Function_base13_Base_managerIZL23BM_std_function_poly_cbRN9benchmark5StateEEUlT_E_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, @function
_ZNSt14_Function_base13_Base_managerIZL23BM_std_function_poly_cbRN9benchmark5StateEEUlT_E_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation:
.LFB4005:
	.cfi_startproc
	cmpl	$1, %edx
	je	.L17
	jb	.L18
	cmpl	$2, %edx
	jne	.L16
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
.L16:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	movq	$_ZTIZL23BM_std_function_poly_cbRN9benchmark5StateEEUlT_E_, (%rdi)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	movq	%rsi, (%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE4005:
	.size	_ZNSt14_Function_base13_Base_managerIZL23BM_std_function_poly_cbRN9benchmark5StateEEUlT_E_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, .-_ZNSt14_Function_base13_Base_managerIZL23BM_std_function_poly_cbRN9benchmark5StateEEUlT_E_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation
	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.type	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED2Ev, @function
_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED2Ev:
.LFB4211:
	.cfi_startproc
	rep ret
	.cfi_endproc
.LFE4211:
	.size	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED2Ev, .-_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.weak	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED1Ev
	.set	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED1Ev,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.type	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, @function
_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:
.LFB4214:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4214
	movq	%rdi, %rax
	movq	24(%rdi), %rdi
	jmp	*16(%rax)
	.cfi_endproc
.LFE4214:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,"aG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,comdat
.LLSDA4214:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4214-.LLSDACSB4214
.LLSDACSB4214:
.LLSDACSE4214:
	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,comdat
	.size	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, .-_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.type	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, @function
_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev:
.LFB4213:
	.cfi_startproc
	movl	$32, %esi
	jmp	_ZdlPvm
	.cfi_endproc
.LFE4213:
	.size	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, .-_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.text
	.p2align 4,,15
	.type	_ZN8delegateIFvP6ObjectEE15functor_deleterIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEEUlT_E_EEvPv, @function
_ZN8delegateIFvP6ObjectEE15functor_deleterIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEEUlT_E_EEvPv:
.LFB3925:
	.cfi_startproc
	jmp	_ZdlPv
	.cfi_endproc
.LFE3925:
	.size	_ZN8delegateIFvP6ObjectEE15functor_deleterIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEEUlT_E_EEvPv, .-_ZN8delegateIFvP6ObjectEE15functor_deleterIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEEUlT_E_EEvPv
	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.type	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, @function
_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv:
.LFB4215:
	.cfi_startproc
	jmp	_ZdlPv
	.cfi_endproc
.LFE4215:
	.size	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, .-_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.type	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info, @function
_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:
.LFB4216:
	.cfi_startproc
	movq	8(%rsi), %rsi
	movq	%rdi, %rdx
	cmpq	$_ZTSPFvPvE, %rsi
	je	.L26
	xorl	%eax, %eax
	cmpb	$42, (%rsi)
	je	.L25
	movl	$_ZTSPFvPvE, %edi
	movl	$7, %ecx
	repz cmpsb
	jne	.L25
.L26:
	leaq	16(%rdx), %rax
.L25:
	rep ret
	.cfi_endproc
.LFE4216:
	.size	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info, .-_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.section	.text._ZNSt17_Function_handlerIFbPKcE10BigFunctorE9_M_invokeERKSt9_Any_dataOS1_,"axG",@progbits,_ZNSt17_Function_handlerIFbPKcE10BigFunctorE9_M_invokeERKSt9_Any_dataOS1_,comdat
	.p2align 4,,15
	.weak	_ZNSt17_Function_handlerIFbPKcE10BigFunctorE9_M_invokeERKSt9_Any_dataOS1_
	.type	_ZNSt17_Function_handlerIFbPKcE10BigFunctorE9_M_invokeERKSt9_Any_dataOS1_, @function
_ZNSt17_Function_handlerIFbPKcE10BigFunctorE9_M_invokeERKSt9_Any_dataOS1_:
.LFB3826:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	(%rsi), %rbp
	movq	%rbp, %rdi
	call	strlen
	movq	(%r12), %rdi
	movq	%rax, %rbx
	movq	%rbp, %rsi
	movq	%rax, %rdx
	call	memcpy
	movl	%ebx, %eax
	andl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3826:
	.size	_ZNSt17_Function_handlerIFbPKcE10BigFunctorE9_M_invokeERKSt9_Any_dataOS1_, .-_ZNSt17_Function_handlerIFbPKcE10BigFunctorE9_M_invokeERKSt9_Any_dataOS1_
	.section	.text._ZNSt14_Function_base13_Base_managerI10BigFunctorE10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation,"axG",@progbits,_ZNSt14_Function_base13_Base_managerI10BigFunctorE10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation,comdat
	.p2align 4,,15
	.weak	_ZNSt14_Function_base13_Base_managerI10BigFunctorE10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation
	.type	_ZNSt14_Function_base13_Base_managerI10BigFunctorE10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, @function
_ZNSt14_Function_base13_Base_managerI10BigFunctorE10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation:
.LFB3827:
	.cfi_startproc
	cmpl	$1, %edx
	je	.L39
	jb	.L40
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpl	$2, %edx
	je	.L41
	cmpl	$3, %edx
	jne	.L38
	movq	(%rdi), %rdi
	movl	$32, %esi
	call	_ZdlPvm
.L38:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L41:
	.cfi_restore_state
	movq	(%rsi), %rbp
	movl	$32, %edi
	call	_Znwm
	movq	0(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	24(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 24(%rax)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L40:
	movq	$_ZTI10BigFunctor, (%rdi)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L39:
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE3827:
	.size	_ZNSt14_Function_base13_Base_managerI10BigFunctorE10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, .-_ZNSt14_Function_base13_Base_managerI10BigFunctorE10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"/home/arun/benchmark-master/include/benchmark/benchmark_api.h"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"range_.size() > pos"
	.text
	.p2align 4,,15
	.type	_ZL25BM_virtual_function_basicRN9benchmark5StateE, @function
_ZL25BM_virtual_function_basicRN9benchmark5StateE:
.LFB3352:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	movq	16(%rdi), %rdx
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	24(%rdi), %rax
	movq	$_ZTV7Derived+16, 16(%rsp)
	movq	$_ZTV5Dummy+16, 32(%rsp)
	subq	%rdx, %rax
	sarq	$2, %rax
	testq	%rax, %rax
	je	.L58
	cmpl	$48, (%rdx)
	leaq	32(%rsp), %rax
	leaq	16(%rsp), %rbp
	movq	%rdi, %rbx
	movl	$0, 12(%rsp)
	cmovne	%rax, %rbp
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L50:
	movq	8(%rbx), %rax
	cmpq	72(%rbx), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rbx)
	jnb	.L59
	movq	0(%rbp), %rax
	movl	12(%rsp), %esi
	movq	%rbp, %rdi
	call	*(%rax)
	movl	%eax, 12(%rsp)
.L52:
	cmpb	$0, (%rbx)
	jne	.L50
	movq	%rbx, %rdi
	call	_ZN9benchmark5State16StartKeepRunningEv
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L59:
	movq	%rbx, %rdi
	call	_ZN9benchmark5State17FinishKeepRunningEv
	movq	40(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L60
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L58:
	.cfi_restore_state
	movl	$_ZZNK9benchmark5State5rangeEmE19__PRETTY_FUNCTION__, %ecx
	movl	$433, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
.L60:
	call	__stack_chk_fail
	.cfi_endproc
.LFE3352:
	.size	_ZL25BM_virtual_function_basicRN9benchmark5StateE, .-_ZL25BM_virtual_function_basicRN9benchmark5StateE
	.section	.text._ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv,"axG",@progbits,_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv,comdat
	.p2align 4,,15
	.weak	_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv
	.type	_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv, @function
_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv:
.LFB4259:
	.cfi_startproc
	rep ret
	.cfi_endproc
.LFE4259:
	.size	_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv, .-_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv
	.section	.text._ZN8delegateIFbPKcEE12deleter_stubI10BigFunctorEEvPv,"axG",@progbits,_ZN8delegateIFbPKcEE12deleter_stubI10BigFunctorEEvPv,comdat
	.p2align 4,,15
	.weak	_ZN8delegateIFbPKcEE12deleter_stubI10BigFunctorEEvPv
	.type	_ZN8delegateIFbPKcEE12deleter_stubI10BigFunctorEEvPv, @function
_ZN8delegateIFbPKcEE12deleter_stubI10BigFunctorEEvPv:
.LFB4257:
	.cfi_startproc
	rep ret
	.cfi_endproc
.LFE4257:
	.size	_ZN8delegateIFbPKcEE12deleter_stubI10BigFunctorEEvPv, .-_ZN8delegateIFbPKcEE12deleter_stubI10BigFunctorEEvPv
	.section	.text._ZN8delegateIFbPKcEE15functor_deleterI10BigFunctorEEvPv,"axG",@progbits,_ZN8delegateIFbPKcEE15functor_deleterI10BigFunctorEEvPv,comdat
	.p2align 4,,15
	.weak	_ZN8delegateIFbPKcEE15functor_deleterI10BigFunctorEEvPv
	.type	_ZN8delegateIFbPKcEE15functor_deleterI10BigFunctorEEvPv, @function
_ZN8delegateIFbPKcEE15functor_deleterI10BigFunctorEEvPv:
.LFB4261:
	.cfi_startproc
	jmp	_ZdlPv
	.cfi_endproc
.LFE4261:
	.size	_ZN8delegateIFbPKcEE15functor_deleterI10BigFunctorEEvPv, .-_ZN8delegateIFbPKcEE15functor_deleterI10BigFunctorEEvPv
	.section	.text._ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv,"axG",@progbits,_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv,comdat
	.p2align 4,,15
	.weak	_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv
	.type	_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv, @function
_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv:
.LFB4263:
	.cfi_startproc
	jmp	_ZdlPv
	.cfi_endproc
.LFE4263:
	.size	_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv, .-_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv
	.section	.text._ZN8delegateIFbPKcEE12functor_stubI10BigFunctorEENSt9enable_ifIXntootlNS3_14is_member_pairIT_EEEtlNS3_20is_const_member_pairIS8_EEEEbE4typeEPvOS1_,"axG",@progbits,_ZN8delegateIFbPKcEE12functor_stubI10BigFunctorEENSt9enable_ifIXntootlNS3_14is_member_pairIT_EEEtlNS3_20is_const_member_pairIS8_EEEEbE4typeEPvOS1_,comdat
	.p2align 4,,15
	.weak	_ZN8delegateIFbPKcEE12functor_stubI10BigFunctorEENSt9enable_ifIXntootlNS3_14is_member_pairIT_EEEtlNS3_20is_const_member_pairIS8_EEEEbE4typeEPvOS1_
	.type	_ZN8delegateIFbPKcEE12functor_stubI10BigFunctorEENSt9enable_ifIXntootlNS3_14is_member_pairIT_EEEtlNS3_20is_const_member_pairIS8_EEEEbE4typeEPvOS1_, @function
_ZN8delegateIFbPKcEE12functor_stubI10BigFunctorEENSt9enable_ifIXntootlNS3_14is_member_pairIT_EEEtlNS3_20is_const_member_pairIS8_EEEEbE4typeEPvOS1_:
.LFB3837:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	(%rsi), %rbp
	movq	%rbp, %rdi
	call	strlen
	movq	%rbp, %rsi
	movq	%rax, %rbx
	movq	%r12, %rdi
	movq	%rax, %rdx
	call	memcpy
	movl	%ebx, %eax
	andl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3837:
	.size	_ZN8delegateIFbPKcEE12functor_stubI10BigFunctorEENSt9enable_ifIXntootlNS3_14is_member_pairIT_EEEtlNS3_20is_const_member_pairIS8_EEEEbE4typeEPvOS1_, .-_ZN8delegateIFbPKcEE12functor_stubI10BigFunctorEENSt9enable_ifIXntootlNS3_14is_member_pairIT_EEEtlNS3_20is_const_member_pairIS8_EEEEbE4typeEPvOS1_
	.text
	.p2align 4,,15
	.type	_ZL21BM_std_function_basicRN9benchmark5StateE, @function
_ZL21BM_std_function_basicRN9benchmark5StateE:
.LFB3322:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3322
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$64, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movq	$_Z12fun_functioni, 16(%rsp)
	movq	$_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi, 40(%rsp)
	movq	$_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, 32(%rsp)
	movl	$0, 8(%rsp)
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L71:
	movq	8(%rbx), %rax
	cmpq	72(%rbx), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rbx)
	jnb	.L91
	cmpq	$0, 32(%rsp)
	movl	8(%rsp), %eax
	movl	%eax, 12(%rsp)
	je	.L92
	leaq	12(%rsp), %rsi
	leaq	16(%rsp), %rdi
.LEHB0:
	call	*40(%rsp)
	movl	%eax, 8(%rsp)
.L74:
	cmpb	$0, (%rbx)
	jne	.L71
	movq	%rbx, %rdi
	call	_ZN9benchmark5State16StartKeepRunningEv
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L91:
	movq	%rbx, %rdi
	call	_ZN9benchmark5State17FinishKeepRunningEv
.LEHE0:
	movq	32(%rsp), %rax
	testq	%rax, %rax
	je	.L67
	leaq	16(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L67:
	movq	56(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L93
	addq	$64, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L92:
	.cfi_restore_state
.LEHB1:
	call	_ZSt25__throw_bad_function_callv
.LEHE1:
.L79:
	movq	%rax, %rbx
	movq	32(%rsp), %rax
	testq	%rax, %rax
	je	.L77
	leaq	16(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L77:
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
.L93:
	call	__stack_chk_fail
	.cfi_endproc
.LFE3322:
	.section	.gcc_except_table,"a",@progbits
.LLSDA3322:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3322-.LLSDACSB3322
.LLSDACSB3322:
	.uleb128 .LEHB0-.LFB3322
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L79-.LFB3322
	.uleb128 0
	.uleb128 .LEHB1-.LFB3322
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L79-.LFB3322
	.uleb128 0
	.uleb128 .LEHB2-.LFB3322
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE3322:
	.text
	.size	_ZL21BM_std_function_basicRN9benchmark5StateE, .-_ZL21BM_std_function_basicRN9benchmark5StateE
	.section	.rodata.str1.1
.LC2:
	.string	"SampleString"
	.text
	.p2align 4,,15
	.type	_ZL21BM_std_function_heavyRN9benchmark5StateE, @function
_ZL21BM_std_function_heavyRN9benchmark5StateE:
.LFB3328:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3328
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$64, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L101:
	cmpb	$0, (%rbx)
	je	.L110
.L95:
	movq	8(%rbx), %rax
	cmpq	72(%rbx), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rbx)
	jnb	.L111
	movl	$32, %edi
	movq	$0, 32(%rsp)
.LEHB3:
	call	_Znwm
.LEHE3:
	leaq	8(%rsp), %rsi
	leaq	16(%rsp), %rdi
	movb	$0, (%rax)
	movb	$0, 1(%rax)
	movb	$0, 2(%rax)
	movb	$0, 3(%rax)
	movb	$0, 4(%rax)
	movb	$0, 5(%rax)
	movb	$0, 6(%rax)
	movb	$0, 7(%rax)
	movb	$0, 8(%rax)
	movb	$0, 9(%rax)
	movb	$0, 10(%rax)
	movb	$0, 11(%rax)
	movb	$0, 12(%rax)
	movb	$0, 13(%rax)
	movb	$0, 14(%rax)
	movb	$0, 15(%rax)
	movb	$0, 16(%rax)
	movb	$0, 17(%rax)
	movb	$0, 18(%rax)
	movb	$0, 19(%rax)
	movb	$0, 20(%rax)
	movb	$0, 21(%rax)
	movb	$0, 22(%rax)
	movb	$0, 23(%rax)
	movb	$0, 24(%rax)
	movb	$0, 25(%rax)
	movb	$0, 26(%rax)
	movb	$0, 27(%rax)
	movb	$0, 28(%rax)
	movb	$0, 29(%rax)
	movb	$0, 30(%rax)
	movb	$0, 31(%rax)
	movq	%rax, 16(%rsp)
	movq	$_ZNSt17_Function_handlerIFbPKcE10BigFunctorE9_M_invokeERKSt9_Any_dataOS1_, 40(%rsp)
	movq	$_ZNSt14_Function_base13_Base_managerI10BigFunctorE10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, 32(%rsp)
	movq	$.LC2, 8(%rsp)
	call	_ZNSt17_Function_handlerIFbPKcE10BigFunctorE9_M_invokeERKSt9_Any_dataOS1_
	movq	32(%rsp), %rax
	testq	%rax, %rax
	je	.L101
	leaq	16(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
	cmpb	$0, (%rbx)
	jne	.L95
.L110:
	movq	%rbx, %rdi
.LEHB4:
	call	_ZN9benchmark5State16StartKeepRunningEv
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L111:
	movq	%rbx, %rdi
	call	_ZN9benchmark5State17FinishKeepRunningEv
.LEHE4:
	movq	56(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L112
	addq	$64, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L103:
	.cfi_restore_state
	movq	%rax, %rbx
	movq	32(%rsp), %rax
	testq	%rax, %rax
	je	.L100
	leaq	16(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L100:
	movq	%rbx, %rdi
.LEHB5:
	call	_Unwind_Resume
.LEHE5:
.L112:
	call	__stack_chk_fail
	.cfi_endproc
.LFE3328:
	.section	.gcc_except_table
.LLSDA3328:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3328-.LLSDACSB3328
.LLSDACSB3328:
	.uleb128 .LEHB3-.LFB3328
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L103-.LFB3328
	.uleb128 0
	.uleb128 .LEHB4-.LFB3328
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB3328
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE3328:
	.text
	.size	_ZL21BM_std_function_heavyRN9benchmark5StateE, .-_ZL21BM_std_function_heavyRN9benchmark5StateE
	.p2align 4,,15
	.type	_ZL23BM_std_function_poly_cbRN9benchmark5StateE, @function
_ZL23BM_std_function_poly_cbRN9benchmark5StateE:
.LFB3335:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3335
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$88, %rsp
	.cfi_def_cfa_offset 112
	leaq	32(%rsp), %rbp
	movq	$0, 56(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movl	$0, 32(%rsp)
	.p2align 4,,10
	.p2align 3
.L120:
	cmpb	$0, (%rbx)
	je	.L114
.L117:
	movq	8(%rbx), %rax
	cmpq	72(%rbx), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rbx)
	jnb	.L140
	movq	%rbp, (%rsp)
	movq	(%rsp), %rax
	movq	8(%rsp), %rdx
	movq	40(%rsp), %rsi
	movq	48(%rsp), %rdi
	movq	%rax, 40(%rsp)
	movq	56(%rsp), %rax
	movq	%rdx, 48(%rsp)
	movq	64(%rsp), %rdx
	movq	%rsi, (%rsp)
	movq	%rdi, 8(%rsp)
	testq	%rax, %rax
	movq	%rax, 16(%rsp)
	movq	$_ZNSt14_Function_base13_Base_managerIZL23BM_std_function_poly_cbRN9benchmark5StateEEUlT_E_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, 56(%rsp)
	movq	%rdx, 24(%rsp)
	movq	$_ZNSt17_Function_handlerIFvP6ObjectEZL23BM_std_function_poly_cbRN9benchmark5StateEEUlT_E_E9_M_invokeERKSt9_Any_dataOS1_, 64(%rsp)
	je	.L120
	movl	$3, %edx
	movq	%rsp, %rsi
	movq	%rsp, %rdi
	call	*%rax
	cmpb	$0, (%rbx)
	jne	.L117
.L114:
	movq	%rbx, %rdi
.LEHB6:
	call	_ZN9benchmark5State16StartKeepRunningEv
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L140:
	movq	%rbx, %rdi
	call	_ZN9benchmark5State17FinishKeepRunningEv
.LEHE6:
	movq	56(%rsp), %rax
	testq	%rax, %rax
	je	.L113
	leaq	40(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L113:
	movq	72(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L141
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L125:
	.cfi_restore_state
	movq	%rax, %rbx
	movq	56(%rsp), %rax
	testq	%rax, %rax
	je	.L123
	leaq	40(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L123:
	movq	%rbx, %rdi
.LEHB7:
	call	_Unwind_Resume
.LEHE7:
.L141:
	call	__stack_chk_fail
	.cfi_endproc
.LFE3335:
	.section	.gcc_except_table
.LLSDA3335:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3335-.LLSDACSB3335
.LLSDACSB3335:
	.uleb128 .LEHB6-.LFB3335
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L125-.LFB3335
	.uleb128 0
	.uleb128 .LEHB7-.LFB3335
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE3335:
	.text
	.size	_ZL23BM_std_function_poly_cbRN9benchmark5StateE, .-_ZL23BM_std_function_poly_cbRN9benchmark5StateE
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB3402:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	%edi, 12(%rsp)
	leaq	12(%rsp), %rdi
	call	_ZN9benchmark10InitializeEPiPPc
	call	_ZN9benchmark22RunSpecifiedBenchmarksEv
	xorl	%eax, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3402:
	.size	main, .-main
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv, @function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv:
.LFB3819:
	.cfi_startproc
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %eax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	testq	%rax, %rax
	je	.L145
	lock subl	$1, 8(%rdi)
	je	.L154
.L144:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L145:
	.cfi_restore_state
	movl	8(%rdi), %eax
	leal	-1(%rax), %edx
	cmpl	$1, %eax
	movl	%edx, 8(%rdi)
	jne	.L144
	movq	(%rdi), %rax
	call	*16(%rax)
	movl	12(%rbx), %eax
	leal	-1(%rax), %edx
	movl	%edx, 12(%rbx)
	jmp	.L150
	.p2align 4,,10
	.p2align 3
.L154:
	movq	(%rdi), %rax
	call	*16(%rax)
	movl	$-1, %eax
	lock xaddl	%eax, 12(%rbx)
.L150:
	cmpl	$1, %eax
	jne	.L144
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	movq	24(%rax), %rax
	jmp	*%rax
	.cfi_endproc
.LFE3819:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv, .-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	.text
	.p2align 4,,15
	.type	_ZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateE, @function
_ZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateE:
.LFB3379:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3379
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$64, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movq	$0, 16(%rsp)
	movl	$0, (%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	jmp	.L173
	.p2align 4,,10
	.p2align 3
.L214:
	lock subl	$1, 8(%r12)
	je	.L211
.L203:
	movq	32(%rsp), %rbx
.L164:
	movq	$8, 48(%rsp)
.L182:
	testq	%rbx, %rbx
	je	.L172
	movq	%rsp, (%rbx)
	movq	32(%rsp), %rbx
.L172:
	movq	%rbx, 8(%rsp)
	movq	$_ZN8delegateIFvP6ObjectEE12functor_stubIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEEUlT_E_EENSt9enable_ifIXntootlNS3_14is_member_pairIS8_EEEtlNS3_20is_const_member_pairIS8_EEEEvE4typeEPvOS1_, 16(%rsp)
	movq	$_ZN8delegateIFvP6ObjectEE12deleter_stubIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEEUlT_E_EEvPv, 24(%rsp)
.L173:
	cmpb	$0, 0(%rbp)
	je	.L156
.L159:
	movq	8(%rbp), %rax
	cmpq	72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rbp)
	jnb	.L212
	cmpq	$7, 48(%rsp)
	jbe	.L161
	movq	40(%rsp), %rax
	testq	%rax, %rax
	je	.L161
	movl	8(%rax), %eax
	cmpl	$1, %eax
	je	.L213
.L161:
	movl	$8, %edi
.LEHB8:
	call	_Znwm
.LEHE8:
	movl	$32, %edi
	movq	%rax, %rbx
.LEHB9:
	call	_Znwm
.LEHE9:
	movq	40(%rsp), %r12
	movl	$1, 8(%rax)
	movl	$1, 12(%rax)
	movq	$_ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE+16, (%rax)
	movq	$_ZN8delegateIFvP6ObjectEE15functor_deleterIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEEUlT_E_EEvPv, 16(%rax)
	movq	%rbx, 24(%rax)
	testq	%r12, %r12
	movq	%rbx, 32(%rsp)
	movq	%rax, 40(%rsp)
	je	.L164
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %eax
	testq	%rax, %rax
	jne	.L214
	movl	8(%r12), %eax
	leal	-1(%rax), %edx
	cmpl	$1, %eax
	movl	%edx, 8(%r12)
	jne	.L164
	movq	(%r12), %rax
	movq	%r12, %rdi
	call	*16(%rax)
	movl	12(%r12), %eax
	leal	-1(%rax), %edx
	movl	%edx, 12(%r12)
.L183:
	cmpl	$1, %eax
	jne	.L203
	movq	(%r12), %rax
	movq	%r12, %rdi
	call	*24(%rax)
	jmp	.L203
	.p2align 4,,10
	.p2align 3
.L213:
	movq	32(%rsp), %rdi
.LEHB10:
	call	*24(%rsp)
	movq	32(%rsp), %rbx
	jmp	.L182
	.p2align 4,,10
	.p2align 3
.L156:
	movq	%rbp, %rdi
	call	_ZN9benchmark5State16StartKeepRunningEv
	jmp	.L159
	.p2align 4,,10
	.p2align 3
.L212:
	movq	%rbp, %rdi
	call	_ZN9benchmark5State17FinishKeepRunningEv
.LEHE10:
	movq	40(%rsp), %rbx
	testq	%rbx, %rbx
	je	.L155
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %eax
	testq	%rax, %rax
	je	.L176
	lock subl	$1, 8(%rbx)
	je	.L215
.L155:
	movq	56(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L216
	addq	$64, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L211:
	.cfi_restore_state
	movq	(%r12), %rax
	movq	%r12, %rdi
	call	*16(%rax)
	movl	$-1, %eax
	lock xaddl	%eax, 12(%r12)
	jmp	.L183
.L176:
	movl	8(%rbx), %eax
	leal	-1(%rax), %edx
	cmpl	$1, %eax
	movl	%edx, 8(%rbx)
	jne	.L155
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	call	*16(%rax)
	movl	12(%rbx), %eax
	leal	-1(%rax), %edx
	movl	%edx, 12(%rbx)
	jmp	.L184
.L215:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	call	*16(%rax)
	movl	$-1, %eax
	lock xaddl	%eax, 12(%rbx)
.L184:
	cmpl	$1, %eax
	jne	.L155
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	call	*24(%rax)
	jmp	.L155
.L186:
	movq	%rax, %rbx
.L167:
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L180
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
.L180:
	movq	%rbx, %rdi
.LEHB11:
	call	_Unwind_Resume
.LEHE11:
.L216:
	call	__stack_chk_fail
.L188:
	movq	%rax, %rdi
	call	__cxa_begin_catch
	movq	%rbx, %rdi
	call	_ZdlPv
.LEHB12:
	call	__cxa_rethrow
.LEHE12:
.L187:
	movq	%rax, %rbx
	call	__cxa_end_catch
	jmp	.L167
	.cfi_endproc
.LFE3379:
	.section	.gcc_except_table
	.align 4
.LLSDA3379:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT3379-.LLSDATTD3379
.LLSDATTD3379:
	.byte	0x1
	.uleb128 .LLSDACSE3379-.LLSDACSB3379
.LLSDACSB3379:
	.uleb128 .LEHB8-.LFB3379
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L186-.LFB3379
	.uleb128 0
	.uleb128 .LEHB9-.LFB3379
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L188-.LFB3379
	.uleb128 0x1
	.uleb128 .LEHB10-.LFB3379
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L186-.LFB3379
	.uleb128 0
	.uleb128 .LEHB11-.LFB3379
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB3379
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L187-.LFB3379
	.uleb128 0
.LLSDACSE3379:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT3379:
	.text
	.size	_ZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateE, .-_ZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateE
	.p2align 4,,15
	.type	_ZL26BM_imp_fast_delegate_heavyRN9benchmark5StateE, @function
_ZL26BM_imp_fast_delegate_heavyRN9benchmark5StateE:
.LFB3373:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3373
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L228:
	cmpb	$0, (%r12)
	je	.L240
.L218:
	movq	8(%r12), %rax
	cmpq	72(%r12), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%r12)
	jnb	.L241
	movl	$32, %edi
.LEHB13:
	call	_Znwm
.LEHE13:
	movl	$32, %edi
	movq	%rax, %rbx
.LEHB14:
	call	_Znwm
.LEHE14:
	movq	%rbx, 24(%rax)
	movl	$1, 8(%rax)
	movq	%rsp, %rsi
	movl	$1, 12(%rax)
	movq	$_ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE+16, (%rax)
	movq	%rbx, %rdi
	movq	$_ZN8delegateIFbPKcEE15functor_deleterI10BigFunctorEEvPv, 16(%rax)
	movb	$0, (%rbx)
	movq	%rax, %rbp
	movb	$0, 1(%rbx)
	movb	$0, 2(%rbx)
	movb	$0, 3(%rbx)
	movb	$0, 4(%rbx)
	movb	$0, 5(%rbx)
	movb	$0, 6(%rbx)
	movb	$0, 7(%rbx)
	movb	$0, 8(%rbx)
	movb	$0, 9(%rbx)
	movb	$0, 10(%rbx)
	movb	$0, 11(%rbx)
	movb	$0, 12(%rbx)
	movb	$0, 13(%rbx)
	movb	$0, 14(%rbx)
	movb	$0, 15(%rbx)
	movb	$0, 16(%rbx)
	movb	$0, 17(%rbx)
	movb	$0, 18(%rbx)
	movb	$0, 19(%rbx)
	movb	$0, 20(%rbx)
	movb	$0, 21(%rbx)
	movb	$0, 22(%rbx)
	movb	$0, 23(%rbx)
	movb	$0, 24(%rbx)
	movb	$0, 25(%rbx)
	movb	$0, 26(%rbx)
	movb	$0, 27(%rbx)
	movb	$0, 28(%rbx)
	movb	$0, 29(%rbx)
	movb	$0, 30(%rbx)
	movb	$0, 31(%rbx)
	movq	$.LC2, (%rsp)
	call	_ZN8delegateIFbPKcEE12functor_stubI10BigFunctorEENSt9enable_ifIXntootlNS3_14is_member_pairIT_EEEtlNS3_20is_const_member_pairIS8_EEEEbE4typeEPvOS1_
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %eax
	testq	%rax, %rax
	je	.L242
	lock subl	$1, 8(%rbp)
	jne	.L228
	movq	0(%rbp), %rax
	movq	%rbp, %rdi
	call	*16(%rax)
	movl	$-1, %eax
	lock xaddl	%eax, 12(%rbp)
.L229:
	cmpl	$1, %eax
	jne	.L228
	movq	0(%rbp), %rax
	movq	%rbp, %rdi
	call	*24(%rax)
	cmpb	$0, (%r12)
	jne	.L218
	.p2align 4,,10
	.p2align 3
.L240:
	movq	%r12, %rdi
.LEHB15:
	call	_ZN9benchmark5State16StartKeepRunningEv
	jmp	.L218
	.p2align 4,,10
	.p2align 3
.L242:
	movl	8(%rbp), %eax
	leal	-1(%rax), %edx
	cmpl	$1, %eax
	movl	%edx, 8(%rbp)
	jne	.L228
	movq	0(%rbp), %rax
	movq	%rbp, %rdi
	call	*16(%rax)
	movl	12(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, 12(%rbp)
	jmp	.L229
	.p2align 4,,10
	.p2align 3
.L241:
	movq	%r12, %rdi
	call	_ZN9benchmark5State17FinishKeepRunningEv
.LEHE15:
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L243
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L232:
	.cfi_restore_state
	movq	%rax, %rdi
	call	__cxa_begin_catch
	movq	%rbx, %rdi
	call	_ZdlPv
.LEHB16:
	call	__cxa_rethrow
.LEHE16:
.L243:
	call	__stack_chk_fail
.L231:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rdi
.LEHB17:
	call	_Unwind_Resume
.LEHE17:
	.cfi_endproc
.LFE3373:
	.section	.gcc_except_table
	.align 4
.LLSDA3373:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT3373-.LLSDATTD3373
.LLSDATTD3373:
	.byte	0x1
	.uleb128 .LLSDACSE3373-.LLSDACSB3373
.LLSDACSB3373:
	.uleb128 .LEHB13-.LFB3373
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB3373
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L232-.LFB3373
	.uleb128 0x1
	.uleb128 .LEHB15-.LFB3373
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB3373
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L231-.LFB3373
	.uleb128 0
	.uleb128 .LEHB17-.LFB3373
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE3373:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT3373:
	.text
	.size	_ZL26BM_imp_fast_delegate_heavyRN9benchmark5StateE, .-_ZL26BM_imp_fast_delegate_heavyRN9benchmark5StateE
	.p2align 4,,15
	.type	_ZL26BM_imp_fast_delegate_basicRN9benchmark5StateE, @function
_ZL26BM_imp_fast_delegate_basicRN9benchmark5StateE:
.LFB3362:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3362
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movl	$8, %edi
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
.LEHB18:
	call	_Znwm
.LEHE18:
	movl	$32, %edi
	movq	%rax, %rbp
.LEHB19:
	call	_Znwm
.LEHE19:
	movq	%rax, %r12
	movl	$1, 8(%rax)
	movl	$1, 12(%rax)
	movq	$_ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE+16, (%rax)
	movq	$_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv, 16(%rax)
	movq	%rbp, 24(%rax)
	movq	$_Z12fun_functioni, 0(%rbp)
	movl	$0, (%rsp)
	jmp	.L245
	.p2align 4,,10
	.p2align 3
.L251:
	movq	8(%rbx), %rax
	cmpq	72(%rbx), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rbx)
	jnb	.L271
	movl	(%rsp), %eax
	leaq	4(%rsp), %rsi
	movq	%rbp, %rdi
	movl	%eax, 4(%rsp)
.LEHB20:
	call	_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntootlNS2_14is_member_pairIT_EEEtlNS2_20is_const_member_pairIS7_EEEES0_E4typeEPvOi
	movl	%eax, (%rsp)
.L245:
	cmpb	$0, (%rbx)
	jne	.L251
	movq	%rbx, %rdi
	call	_ZN9benchmark5State16StartKeepRunningEv
	jmp	.L251
	.p2align 4,,10
	.p2align 3
.L271:
	movq	%rbx, %rdi
	call	_ZN9benchmark5State17FinishKeepRunningEv
.LEHE20:
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %eax
	testq	%rax, %rax
	je	.L253
	lock subl	$1, 8(%r12)
	je	.L272
.L244:
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L273
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L253:
	.cfi_restore_state
	movl	8(%r12), %eax
	leal	-1(%rax), %edx
	cmpl	$1, %eax
	movl	%edx, 8(%r12)
	jne	.L244
	movq	(%r12), %rax
	movq	%r12, %rdi
	call	*16(%rax)
	movl	12(%r12), %eax
	leal	-1(%rax), %edx
	movl	%edx, 12(%r12)
	jmp	.L259
.L272:
	movq	(%r12), %rax
	movq	%r12, %rdi
	call	*16(%rax)
	movl	$-1, %eax
	lock xaddl	%eax, 12(%r12)
.L259:
	cmpl	$1, %eax
	jne	.L244
	movq	(%r12), %rax
	movq	%r12, %rdi
	call	*24(%rax)
	jmp	.L244
.L263:
	movq	%rax, %rdi
	call	__cxa_begin_catch
	movq	%rbp, %rdi
	call	_ZdlPv
.LEHB21:
	call	__cxa_rethrow
.LEHE21:
.L273:
	call	__stack_chk_fail
.L261:
	movq	%rax, %rbx
	movq	%r12, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	movq	%rbx, %rdi
.LEHB22:
	call	_Unwind_Resume
.LEHE22:
.L262:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rdi
.LEHB23:
	call	_Unwind_Resume
.LEHE23:
	.cfi_endproc
.LFE3362:
	.section	.gcc_except_table
	.align 4
.LLSDA3362:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT3362-.LLSDATTD3362
.LLSDATTD3362:
	.byte	0x1
	.uleb128 .LLSDACSE3362-.LLSDACSB3362
.LLSDACSB3362:
	.uleb128 .LEHB18-.LFB3362
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB3362
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L263-.LFB3362
	.uleb128 0x1
	.uleb128 .LEHB20-.LFB3362
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L261-.LFB3362
	.uleb128 0
	.uleb128 .LEHB21-.LFB3362
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L262-.LFB3362
	.uleb128 0
	.uleb128 .LEHB22-.LFB3362
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB23-.LFB3362
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSE3362:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT3362:
	.text
	.size	_ZL26BM_imp_fast_delegate_basicRN9benchmark5StateE, .-_ZL26BM_imp_fast_delegate_basicRN9benchmark5StateE
	.section	.rodata.str1.1
.LC3:
	.string	"BM_std_function_basic"
.LC4:
	.string	"BM_std_function_heavy"
.LC5:
	.string	"BM_std_function_poly_cb"
.LC6:
	.string	"BM_virtual_function_basic"
.LC7:
	.string	"BM_imp_fast_delegate_basic"
.LC8:
	.string	"BM_imp_fast_delegate_heavy"
.LC9:
	.string	"BM_imp_fast_delegate_poly_cb"
	.section	.text.startup
	.p2align 4,,15
	.type	_GLOBAL__sub_I__Z12fun_functioni, @function
_GLOBAL__sub_I__Z12fun_functioni:
.LFB4222:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4222
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
.LEHB24:
	call	_ZN9benchmark8internal17InitializeStreamsEv
	movl	$144, %edi
	call	_Znwm
.LEHE24:
	movl	$.LC3, %esi
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB25:
	call	_ZN9benchmark8internal9BenchmarkC2EPKc
.LEHE25:
	movq	%rbx, %rdi
	movq	$_ZTVN9benchmark8internal17FunctionBenchmarkE+16, (%rbx)
	movq	$_ZL21BM_std_function_basicRN9benchmark5StateE, 136(%rbx)
.LEHB26:
	call	_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE
	movl	$144, %edi
	call	_Znwm
.LEHE26:
	movl	$.LC4, %esi
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB27:
	call	_ZN9benchmark8internal9BenchmarkC2EPKc
.LEHE27:
	movq	%rbx, %rdi
	movq	$_ZTVN9benchmark8internal17FunctionBenchmarkE+16, (%rbx)
	movq	$_ZL21BM_std_function_heavyRN9benchmark5StateE, 136(%rbx)
.LEHB28:
	call	_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE
	movl	$144, %edi
	call	_Znwm
.LEHE28:
	movl	$.LC5, %esi
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB29:
	call	_ZN9benchmark8internal9BenchmarkC2EPKc
.LEHE29:
	movq	%rbx, %rdi
	movq	$_ZTVN9benchmark8internal17FunctionBenchmarkE+16, (%rbx)
	movq	$_ZL23BM_std_function_poly_cbRN9benchmark5StateE, 136(%rbx)
.LEHB30:
	call	_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE
	movl	$144, %edi
	call	_Znwm
.LEHE30:
	movl	$.LC6, %esi
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB31:
	call	_ZN9benchmark8internal9BenchmarkC2EPKc
.LEHE31:
	movq	%rbx, %rdi
	movq	$_ZTVN9benchmark8internal17FunctionBenchmarkE+16, (%rbx)
	movq	$_ZL25BM_virtual_function_basicRN9benchmark5StateE, 136(%rbx)
.LEHB32:
	call	_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE
	movl	$48, %esi
	movq	%rax, %rdi
	call	_ZN9benchmark8internal9Benchmark3ArgEi
	movl	$144, %edi
	call	_Znwm
.LEHE32:
	movl	$.LC7, %esi
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB33:
	call	_ZN9benchmark8internal9BenchmarkC2EPKc
.LEHE33:
	movq	%rbx, %rdi
	movq	$_ZTVN9benchmark8internal17FunctionBenchmarkE+16, (%rbx)
	movq	$_ZL26BM_imp_fast_delegate_basicRN9benchmark5StateE, 136(%rbx)
.LEHB34:
	call	_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE
	movl	$144, %edi
	call	_Znwm
.LEHE34:
	movl	$.LC8, %esi
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB35:
	call	_ZN9benchmark8internal9BenchmarkC2EPKc
.LEHE35:
	movq	%rbx, %rdi
	movq	$_ZTVN9benchmark8internal17FunctionBenchmarkE+16, (%rbx)
	movq	$_ZL26BM_imp_fast_delegate_heavyRN9benchmark5StateE, 136(%rbx)
.LEHB36:
	call	_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE
	movl	$144, %edi
	call	_Znwm
.LEHE36:
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB37:
	call	_ZN9benchmark8internal9BenchmarkC2EPKc
.LEHE37:
	movq	$_ZTVN9benchmark8internal17FunctionBenchmarkE+16, (%rbx)
	movq	$_ZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateE, 136(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
.LEHB38:
	jmp	_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE
.L282:
	.cfi_restore_state
.L290:
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$144, %esi
	call	_ZdlPvm
	movq	%rbp, %rdi
	call	_Unwind_Resume
.LEHE38:
.L288:
	jmp	.L290
.L287:
	jmp	.L290
.L286:
	jmp	.L290
.L285:
	jmp	.L290
.L284:
	jmp	.L290
.L283:
	jmp	.L290
	.cfi_endproc
.LFE4222:
	.section	.gcc_except_table
.LLSDA4222:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4222-.LLSDACSB4222
.LLSDACSB4222:
	.uleb128 .LEHB24-.LFB4222
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB4222
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L282-.LFB4222
	.uleb128 0
	.uleb128 .LEHB26-.LFB4222
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB4222
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L283-.LFB4222
	.uleb128 0
	.uleb128 .LEHB28-.LFB4222
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB29-.LFB4222
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L284-.LFB4222
	.uleb128 0
	.uleb128 .LEHB30-.LFB4222
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB31-.LFB4222
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L285-.LFB4222
	.uleb128 0
	.uleb128 .LEHB32-.LFB4222
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB33-.LFB4222
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L286-.LFB4222
	.uleb128 0
	.uleb128 .LEHB34-.LFB4222
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB35-.LFB4222
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L287-.LFB4222
	.uleb128 0
	.uleb128 .LEHB36-.LFB4222
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB37-.LFB4222
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L288-.LFB4222
	.uleb128 0
	.uleb128 .LEHB38-.LFB4222
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
.LLSDACSE4222:
	.section	.text.startup
	.size	_GLOBAL__sub_I__Z12fun_functioni, .-_GLOBAL__sub_I__Z12fun_functioni
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z12fun_functioni
	.section	.rodata
	.align 32
	.type	_ZZNK9benchmark5State5rangeEmE19__PRETTY_FUNCTION__, @object
	.size	_ZZNK9benchmark5State5rangeEmE19__PRETTY_FUNCTION__, 47
_ZZNK9benchmark5State5rangeEmE19__PRETTY_FUNCTION__:
	.string	"int benchmark::State::range(std::size_t) const"
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
	.weak	_ZTSFViiE
	.section	.rodata._ZTSFViiE,"aG",@progbits,_ZTSFViiE,comdat
	.type	_ZTSFViiE, @object
	.size	_ZTSFViiE, 6
_ZTSFViiE:
	.string	"FViiE"
	.weak	_ZTIFViiE
	.section	.rodata._ZTIFViiE,"aG",@progbits,_ZTIFViiE,comdat
	.align 8
	.type	_ZTIFViiE, @object
	.size	_ZTIFViiE, 16
_ZTIFViiE:
	.quad	_ZTVN10__cxxabiv120__function_type_infoE+16
	.quad	_ZTSFViiE
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
	.weak	_ZTSPFViiE
	.section	.rodata._ZTSPFViiE,"aG",@progbits,_ZTSPFViiE,comdat
	.type	_ZTSPFViiE, @object
	.size	_ZTSPFViiE, 7
_ZTSPFViiE:
	.string	"PFViiE"
	.weak	_ZTIPFViiE
	.section	.rodata._ZTIPFViiE,"aG",@progbits,_ZTIPFViiE,comdat
	.align 8
	.type	_ZTIPFViiE, @object
	.size	_ZTIPFViiE, 32
_ZTIPFViiE:
	.quad	_ZTVN10__cxxabiv119__pointer_type_infoE+16
	.quad	_ZTSPFViiE
	.long	0
	.zero	4
	.quad	_ZTIFViiE
	.weak	_ZTS10BigFunctor
	.section	.rodata._ZTS10BigFunctor,"aG",@progbits,_ZTS10BigFunctor,comdat
	.align 8
	.type	_ZTS10BigFunctor, @object
	.size	_ZTS10BigFunctor, 13
_ZTS10BigFunctor:
	.string	"10BigFunctor"
	.weak	_ZTI10BigFunctor
	.section	.rodata._ZTI10BigFunctor,"aG",@progbits,_ZTI10BigFunctor,comdat
	.align 8
	.type	_ZTI10BigFunctor, @object
	.size	_ZTI10BigFunctor, 16
_ZTI10BigFunctor:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS10BigFunctor
	.section	.rodata
	.align 8
	.type	_ZTIZL23BM_std_function_poly_cbRN9benchmark5StateEEUlT_E_, @object
	.size	_ZTIZL23BM_std_function_poly_cbRN9benchmark5StateEEUlT_E_, 16
_ZTIZL23BM_std_function_poly_cbRN9benchmark5StateEEUlT_E_:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSZL23BM_std_function_poly_cbRN9benchmark5StateEEUlT_E_
	.align 32
	.type	_ZTSZL23BM_std_function_poly_cbRN9benchmark5StateEEUlT_E_, @object
	.size	_ZTSZL23BM_std_function_poly_cbRN9benchmark5StateEEUlT_E_, 55
_ZTSZL23BM_std_function_poly_cbRN9benchmark5StateEEUlT_E_:
	.string	"*ZL23BM_std_function_poly_cbRN9benchmark5StateEEUlT_E_"
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
	.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
	.ident	"GCC: (Ubuntu 6.2.0-3ubuntu11~16.04) 6.2.0 20160901"
	.section	.note.GNU-stack,"",@progbits
