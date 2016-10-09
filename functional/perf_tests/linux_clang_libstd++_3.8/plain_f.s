	.text
	.file	"../plain_f.cc"
	.globl	_Z12fun_functioni
	.align	16, 0x90
	.type	_Z12fun_functioni,@function
_Z12fun_functioni:                      # @_Z12fun_functioni
	.cfi_startproc
# BB#0:
	movl	%edi, -4(%rsp)
	movl	-4(%rsp), %eax
	incl	%eax
	movl	%eax, -4(%rsp)
	retq
.Lfunc_end0:
	.size	_Z12fun_functioni, .Lfunc_end0-_Z12fun_functioni
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# BB#0:
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 40
	subq	$56, %rsp
.Ltmp20:
	.cfi_def_cfa_offset 96
.Ltmp21:
	.cfi_offset %rbx, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	$_Z12fun_functioni, 16(%rsp)
	movq	$_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi, 40(%rsp)
	movq	$_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, 32(%rsp)
	movl	$0, 12(%rsp)
	xorl	%ebp, %ebp
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r14
	leaq	16(%rsp), %r15
	leaq	48(%rsp), %rbx
	.align	16, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	12(%rsp), %eax
	movl	%eax, 48(%rsp)
	cmpq	$0, 32(%rsp)
	je	.LBB1_2
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	movq	40(%rsp), %rax
.Ltmp0:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*%rax
.Ltmp1:
# BB#4:                                 #   in Loop: Header=BB1_1 Depth=1
	movl	%eax, 12(%rsp)
	incl	%ebp
	cmpl	$10000000, %ebp         # imm = 0x989680
	jl	.LBB1_1
	jmp	.LBB1_5
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp10:
	callq	_ZSt25__throw_bad_function_callv
.Ltmp11:
	jmp	.LBB1_3
.LBB1_5:
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	subq	%r14, %rax
	movabsq	$2361183241434822607, %rcx # imm = 0x20C49BA5E353F7CF
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	leaq	(%rdx,%rax), %rsi
.Ltmp3:
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIlEERSoT_
.Ltmp4:
# BB#6:                                 # %_ZNSolsEl.exit
	movb	$10, 55(%rsp)
.Ltmp5:
	leaq	55(%rsp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp6:
# BB#7:
	movq	32(%rsp), %rax
	testq	%rax, %rax
	je	.LBB1_9
# BB#8:
.Ltmp7:
	leaq	16(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	callq	*%rax
.Ltmp8:
.LBB1_9:                                # %_ZNSt14_Function_baseD2Ev.exit
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_10:                               # %.loopexit
.Ltmp2:
.LBB1_12:
	movq	%rax, %rbx
	movq	32(%rsp), %rax
	testq	%rax, %rax
	je	.LBB1_14
# BB#13:
.Ltmp13:
	leaq	16(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	callq	*%rax
.Ltmp14:
.LBB1_14:                               # %_ZNSt14_Function_baseD2Ev.exit2
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.LBB1_11:                               # %.loopexit.split-lp
.Ltmp12:
	jmp	.LBB1_12
.LBB1_15:
.Ltmp9:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB1_16:
.Ltmp15:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table1:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	73                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	65                      # Call site table length
	.long	.Ltmp0-.Lfunc_begin0    # >> Call Site 1 <<
	.long	.Ltmp1-.Ltmp0           #   Call between .Ltmp0 and .Ltmp1
	.long	.Ltmp2-.Lfunc_begin0    #     jumps to .Ltmp2
	.byte	0                       #   On action: cleanup
	.long	.Ltmp10-.Lfunc_begin0   # >> Call Site 2 <<
	.long	.Ltmp6-.Ltmp10          #   Call between .Ltmp10 and .Ltmp6
	.long	.Ltmp12-.Lfunc_begin0   #     jumps to .Ltmp12
	.byte	0                       #   On action: cleanup
	.long	.Ltmp7-.Lfunc_begin0    # >> Call Site 3 <<
	.long	.Ltmp8-.Ltmp7           #   Call between .Ltmp7 and .Ltmp8
	.long	.Ltmp9-.Lfunc_begin0    #     jumps to .Ltmp9
	.byte	1                       #   On action: 1
	.long	.Ltmp13-.Lfunc_begin0   # >> Call Site 4 <<
	.long	.Ltmp14-.Ltmp13         #   Call between .Ltmp13 and .Ltmp14
	.long	.Ltmp15-.Lfunc_begin0   #     jumps to .Ltmp15
	.byte	1                       #   On action: 1
	.long	.Ltmp14-.Lfunc_begin0   # >> Call Site 5 <<
	.long	.Lfunc_end1-.Ltmp14     #   Call between .Ltmp14 and .Lfunc_end1
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate
	.weak	__clang_call_terminate
	.align	16, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# BB#0:
	pushq	%rax
	callq	__cxa_begin_catch
	callq	_ZSt9terminatev
.Lfunc_end2:
	.size	__clang_call_terminate, .Lfunc_end2-__clang_call_terminate

	.section	.text._ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi,"axG",@progbits,_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi,comdat
	.weak	_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi
	.align	16, 0x90
	.type	_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi,@function
_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi: # @_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi
	.cfi_startproc
# BB#0:
	movq	%rdi, %rax
	movl	(%rsi), %edi
	jmpq	*(%rax)                 # TAILCALL
.Lfunc_end3:
	.size	_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi, .Lfunc_end3-_ZNSt17_Function_handlerIFViiEPS1_E9_M_invokeERKSt9_Any_dataOi
	.cfi_endproc

	.section	.text._ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation,comdat
	.weak	_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation
	.align	16, 0x90
	.type	_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation,@function
_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation: # @_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation
	.cfi_startproc
# BB#0:
	cmpl	$2, %edx
	je	.LBB4_5
# BB#1:
	cmpl	$1, %edx
	je	.LBB4_4
# BB#2:
	testl	%edx, %edx
	jne	.LBB4_6
# BB#3:
	movq	$_ZTIPFViiE, (%rdi)
	xorl	%eax, %eax
	retq
.LBB4_5:
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
.LBB4_6:
	xorl	%eax, %eax
	retq
.LBB4_4:
	movq	%rsi, (%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, .Lfunc_end4-_ZNSt14_Function_base13_Base_managerIPFViiEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_plain_f.cc,@function
_GLOBAL__sub_I_plain_f.cc:              # @_GLOBAL__sub_I_plain_f.cc
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp25:
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	popq	%rax
	jmp	__cxa_atexit            # TAILCALL
.Lfunc_end5:
	.size	_GLOBAL__sub_I_plain_f.cc, .Lfunc_end5-_GLOBAL__sub_I_plain_f.cc
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	_ZTSPFViiE,@object      # @_ZTSPFViiE
	.section	.rodata._ZTSPFViiE,"aG",@progbits,_ZTSPFViiE,comdat
	.weak	_ZTSPFViiE
_ZTSPFViiE:
	.asciz	"PFViiE"
	.size	_ZTSPFViiE, 7

	.type	_ZTSFViiE,@object       # @_ZTSFViiE
	.section	.rodata._ZTSFViiE,"aG",@progbits,_ZTSFViiE,comdat
	.weak	_ZTSFViiE
_ZTSFViiE:
	.asciz	"FViiE"
	.size	_ZTSFViiE, 6

	.type	_ZTIFViiE,@object       # @_ZTIFViiE
	.section	.rodata._ZTIFViiE,"aG",@progbits,_ZTIFViiE,comdat
	.weak	_ZTIFViiE
	.align	8
_ZTIFViiE:
	.quad	_ZTVN10__cxxabiv120__function_type_infoE+16
	.quad	_ZTSFViiE
	.size	_ZTIFViiE, 16

	.type	_ZTIPFViiE,@object      # @_ZTIPFViiE
	.section	.rodata._ZTIPFViiE,"aG",@progbits,_ZTIPFViiE,comdat
	.weak	_ZTIPFViiE
	.align	16
_ZTIPFViiE:
	.quad	_ZTVN10__cxxabiv119__pointer_type_infoE+16
	.quad	_ZTSPFViiE
	.long	0                       # 0x0
	.zero	4
	.quad	_ZTIFViiE
	.size	_ZTIPFViiE, 32

	.section	.init_array,"aw",@init_array
	.align	8
	.quad	_GLOBAL__sub_I_plain_f.cc

	.ident	"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
