	.file	"plain_f.cc"
	.text
	.p2align 4,,15
	.globl	_Z12fun_functioni
	.type	_Z12fun_functioni, @function
_Z12fun_functioni:
.LFB1823:
	.cfi_startproc
	movl	%edi, -4(%rsp)
	movl	-4(%rsp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rsp)
	ret
	.cfi_endproc
.LFE1823:
	.size	_Z12fun_functioni, .-_Z12fun_functioni
	.section	.text._ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_datai,"axG",@progbits,_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_datai,comdat
	.p2align 4,,15
	.weak	_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_datai
	.type	_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_datai, @function
_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_datai:
.LFB1948:
	.cfi_startproc
	movq	(%rdi), %rax
	movl	%esi, %edi
	jmp	*%rax
	.cfi_endproc
.LFE1948:
	.size	_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_datai, .-_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_datai
	.section	.text._ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation,comdat
	.p2align 4,,15
	.weak	_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation
	.type	_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, @function
_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation:
.LFB1949:
	.cfi_startproc
	cmpl	$1, %edx
	je	.L5
	cmpl	$2, %edx
	je	.L6
	testl	%edx, %edx
	je	.L12
.L4:
	xorl	%eax, %eax
	.p2align 4,,4
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	movq	$_ZTIPFViiE, (%rdi)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	testq	%rdi, %rdi
	movq	(%rsi), %rax
	je	.L4
	movq	%rax, (%rdi)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	movq	%rsi, (%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE1949:
	.size	_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, .-_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB1824:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1824
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	$10000000, %ebx
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	movq	$_Z12fun_functioni, 16(%rsp)
	movq	$_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_datai, 40(%rsp)
	movq	$_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, 32(%rsp)
	movl	$0, 12(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %rbp
	.p2align 4,,10
	.p2align 3
.L16:
	cmpq	$0, 32(%rsp)
	movl	12(%rsp), %esi
	je	.L29
	leaq	16(%rsp), %rdi
.LEHB0:
	call	*40(%rsp)
	subl	$1, %ebx
	movl	%eax, 12(%rsp)
	jne	.L16
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %rcx
	movabsq	$2361183241434822607, %rsi
	movl	$_ZSt4cout, %edi
	subq	%rbp, %rcx
	movq	%rcx, %rax
	sarq	$63, %rcx
	imulq	%rsi
	movq	%rdx, %rsi
	sarq	$7, %rsi
	subq	%rcx, %rsi
	call	_ZNSo9_M_insertIlEERSoT_
	leaq	11(%rsp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	movb	$10, 11(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.LEHE0:
	movq	32(%rsp), %rax
	testq	%rax, %rax
	je	.L23
	leaq	16(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rax
.L23:
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L29:
	.cfi_restore_state
.LEHB1:
	call	_ZSt25__throw_bad_function_callv
.LEHE1:
.L20:
	movq	32(%rsp), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	je	.L19
	leaq	16(%rsp), %rsi
	movl	$3, %edx
	movq	%rsi, %rdi
	call	*%rcx
.L19:
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
	.cfi_endproc
.LFE1824:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1824:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1824-.LLSDACSB1824
.LLSDACSB1824:
	.uleb128 .LEHB0-.LFB1824
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L20-.LFB1824
	.uleb128 0
	.uleb128 .LEHB1-.LFB1824
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L20-.LFB1824
	.uleb128 0
	.uleb128 .LEHB2-.LFB1824
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1824:
	.section	.text.startup
	.size	main, .-main
	.p2align 4,,15
	.type	_GLOBAL__sub_I__Z12fun_functioni, @function
_GLOBAL__sub_I__Z12fun_functioni:
.LFB2011:
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
.LFE2011:
	.size	_GLOBAL__sub_I__Z12fun_functioni, .-_GLOBAL__sub_I__Z12fun_functioni
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z12fun_functioni
	.weak	_ZTIFViiE
	.section	.rodata._ZTIFViiE,"aG",@progbits,_ZTIFViiE,comdat
	.align 16
	.type	_ZTIFViiE, @object
	.size	_ZTIFViiE, 16
_ZTIFViiE:
	.quad	_ZTVN10__cxxabiv120__function_type_infoE+16
	.quad	_ZTSFViiE
	.weak	_ZTSFViiE
	.section	.rodata._ZTSFViiE,"aG",@progbits,_ZTSFViiE,comdat
	.type	_ZTSFViiE, @object
	.size	_ZTSFViiE, 6
_ZTSFViiE:
	.string	"FViiE"
	.weak	_ZTIPFViiE
	.section	.rodata._ZTIPFViiE,"aG",@progbits,_ZTIPFViiE,comdat
	.align 32
	.type	_ZTIPFViiE, @object
	.size	_ZTIPFViiE, 32
_ZTIPFViiE:
	.quad	_ZTVN10__cxxabiv119__pointer_type_infoE+16
	.quad	_ZTSPFViiE
	.long	0
	.zero	4
	.quad	_ZTIFViiE
	.weak	_ZTSPFViiE
	.section	.rodata._ZTSPFViiE,"aG",@progbits,_ZTSPFViiE,comdat
	.type	_ZTSPFViiE, @object
	.size	_ZTSPFViiE, 7
_ZTSPFViiE:
	.string	"PFViiE"
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 4.8.3 20140911 (Red Hat 4.8.3-7)"
	.section	.note.GNU-stack,"",@progbits
