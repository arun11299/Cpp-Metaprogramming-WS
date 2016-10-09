	.file	"plain_f.cc"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	_Z12fun_functioni
	.type	_Z12fun_functioni, @function
_Z12fun_functioni:
.LFB2132:
	.cfi_startproc
	movl	%edi, -4(%rsp)
	movl	-4(%rsp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rsp)
	ret
	.cfi_endproc
.LFE2132:
	.size	_Z12fun_functioni, .-_Z12fun_functioni
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely._ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi,"axG",@progbits,_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi,comdat
.LCOLDB1:
	.section	.text._ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi,"axG",@progbits,_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi,comdat
.LHOTB1:
	.p2align 4,,15
	.weak	_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi
	.type	_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi, @function
_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi:
.LFB2364:
	.cfi_startproc
	movq	(%rdi), %rax
	movl	(%rsi), %edi
	jmp	*%rax
	.cfi_endproc
.LFE2364:
	.size	_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi, .-_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi
	.section	.text.unlikely._ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi,"axG",@progbits,_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi,comdat
.LCOLDE1:
	.section	.text._ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi,"axG",@progbits,_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi,comdat
.LHOTE1:
	.section	.text.unlikely._ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation,comdat
.LCOLDB2:
	.section	.text._ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation,comdat
.LHOTB2:
	.p2align 4,,15
	.weak	_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation
	.type	_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, @function
_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation:
.LFB2365:
	.cfi_startproc
	cmpl	$1, %edx
	je	.L5
	jb	.L6
	cmpl	$2, %edx
	jne	.L4
	testq	%rdi, %rdi
	movq	(%rsi), %rax
	je	.L4
	movq	%rax, (%rdi)
.L4:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	movq	$_ZTIPFViiE, (%rdi)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	movq	%rsi, (%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2365:
	.size	_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, .-_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation
	.section	.text.unlikely._ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation,comdat
.LCOLDE2:
	.section	.text._ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation,comdat
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.section	.text.startup,"ax",@progbits
.LHOTB3:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB2133:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2133
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	$10000000, %ebx
	subq	$72, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movq	$_Z12fun_functioni, 16(%rsp)
	movq	$_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi, 40(%rsp)
	movq	$_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, 32(%rsp)
	movl	$0, 8(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %rbp
	.p2align 4,,10
	.p2align 3
.L14:
	cmpq	$0, 32(%rsp)
	movl	8(%rsp), %eax
	movl	%eax, 12(%rsp)
	je	.L30
	leaq	12(%rsp), %rsi
	leaq	16(%rsp), %rdi
.LEHB0:
	call	*40(%rsp)
	subl	$1, %ebx
	movl	%eax, 8(%rsp)
	jne	.L14
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movabsq	$2361183241434822607, %rdx
	subq	%rbp, %rax
	movl	$_ZSt4cout, %edi
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	sarq	$7, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsi
	call	_ZNSo9_M_insertIlEERSoT_
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	movb	$10, 7(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.LEHE0:
	movq	32(%rsp), %rax
	testq	%rax, %rax
	je	.L15
	leaq	16(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L15:
	xorl	%eax, %eax
	movq	56(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L31
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L30:
	.cfi_restore_state
.LEHB1:
	call	_ZSt25__throw_bad_function_callv
.LEHE1:
.L19:
	movq	%rax, %rbx
	movq	32(%rsp), %rax
	testq	%rax, %rax
	je	.L17
	leaq	16(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L17:
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
.L31:
	call	__stack_chk_fail
	.cfi_endproc
.LFE2133:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2133:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2133-.LLSDACSB2133
.LLSDACSB2133:
	.uleb128 .LEHB0-.LFB2133
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L19-.LFB2133
	.uleb128 0
	.uleb128 .LEHB1-.LFB2133
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L19-.LFB2133
	.uleb128 0
	.uleb128 .LEHB2-.LFB2133
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2133:
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE3:
	.section	.text.startup
.LHOTE3:
	.section	.text.unlikely
.LCOLDB4:
	.section	.text.startup
.LHOTB4:
	.p2align 4,,15
	.type	_GLOBAL__sub_I__Z12fun_functioni, @function
_GLOBAL__sub_I__Z12fun_functioni:
.LFB2513:
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
.LFE2513:
	.size	_GLOBAL__sub_I__Z12fun_functioni, .-_GLOBAL__sub_I__Z12fun_functioni
	.section	.text.unlikely
.LCOLDE4:
	.section	.text.startup
.LHOTE4:
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z12fun_functioni
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
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.1-2ubuntu1~16.04) 5.4.1 20160904"
	.section	.note.GNU-stack,"",@progbits
