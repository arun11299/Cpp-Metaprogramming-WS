	.text
	.file	"../perf_big_functor.cc"
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
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 80
.Ltmp16:
	.cfi_offset %rbx, -32
.Ltmp17:
	.cfi_offset %r14, -24
.Ltmp18:
	.cfi_offset %rbp, -16
	movl	$32, %edi
	callq	_Znwm
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, (%rax)
	movq	%rax, 8(%rsp)
	movq	$_ZNSt17_Function_handlerIFvPKcE10BigFunctorE9_M_invokeERKSt9_Any_dataOS1_, 32(%rsp)
	movq	$_ZNSt14_Function_base13_Base_managerI10BigFunctorE10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, 24(%rsp)
	movl	$_ZNSt14_Function_base13_Base_managerI10BigFunctorE10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, %ecx
	xorl	%ebp, %ebp
	leaq	8(%rsp), %r14
	leaq	40(%rsp), %rbx
	.align	16, 0x90
.LBB0_1:                                # %._crit_edge.i
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ebp, %rax
	imulq	$1431655766, %rax, %rdx # imm = 0x55555556
	movq	%rdx, %rsi
	shrq	$63, %rsi
	shrq	$32, %rdx
	addl	%esi, %edx
	leal	(%rdx,%rdx,2), %edx
	subl	%edx, %eax
	cltq
	movq	_ZL3arr(,%rax,8), %rax
	movq	%rax, 40(%rsp)
	testq	%rcx, %rcx
	je	.LBB0_2
.LBB0_3:                                # %_ZNKSt8functionIFvPKcEEclES1_.exit.i.i
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	32(%rsp), %rax
.Ltmp0:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*%rax
.Ltmp1:
# BB#4:                                 #   in Loop: Header=BB0_1 Depth=1
	incl	%ebp
	movq	24(%rsp), %rcx
	cmpl	$10000, %ebp            # imm = 0x2710
	jl	.LBB0_1
	jmp	.LBB0_5
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp6:
	callq	_ZSt25__throw_bad_function_callv
.Ltmp7:
	jmp	.LBB0_3
.LBB0_10:                               # %.loopexit.split-lp.i
.Ltmp8:
	jmp	.LBB0_11
.LBB0_5:
	testq	%rcx, %rcx
	je	.LBB0_7
# BB#6:
.Ltmp3:
	leaq	8(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	callq	*%rcx
.Ltmp4:
.LBB0_7:                                # %_ZL21BM_std_function_heavyv.exit
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB0_9:                                # %.loopexit.i
.Ltmp2:
.LBB0_11:
	movq	%rax, %rbx
	movq	24(%rsp), %rax
	testq	%rax, %rax
	je	.LBB0_13
# BB#12:
.Ltmp9:
	leaq	8(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	callq	*%rax
.Ltmp10:
.LBB0_13:                               # %_ZNSt14_Function_baseD2Ev.exit2.i
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.LBB0_8:
.Ltmp5:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB0_14:
.Ltmp11:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table0:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\326\200\200"          # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	78                      # Call site table length
	.long	.Lfunc_begin0-.Lfunc_begin0 # >> Call Site 1 <<
	.long	.Ltmp0-.Lfunc_begin0    #   Call between .Lfunc_begin0 and .Ltmp0
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp0-.Lfunc_begin0    # >> Call Site 2 <<
	.long	.Ltmp1-.Ltmp0           #   Call between .Ltmp0 and .Ltmp1
	.long	.Ltmp2-.Lfunc_begin0    #     jumps to .Ltmp2
	.byte	0                       #   On action: cleanup
	.long	.Ltmp6-.Lfunc_begin0    # >> Call Site 3 <<
	.long	.Ltmp7-.Ltmp6           #   Call between .Ltmp6 and .Ltmp7
	.long	.Ltmp8-.Lfunc_begin0    #     jumps to .Ltmp8
	.byte	0                       #   On action: cleanup
	.long	.Ltmp3-.Lfunc_begin0    # >> Call Site 4 <<
	.long	.Ltmp4-.Ltmp3           #   Call between .Ltmp3 and .Ltmp4
	.long	.Ltmp5-.Lfunc_begin0    #     jumps to .Ltmp5
	.byte	1                       #   On action: 1
	.long	.Ltmp9-.Lfunc_begin0    # >> Call Site 5 <<
	.long	.Ltmp10-.Ltmp9          #   Call between .Ltmp9 and .Ltmp10
	.long	.Ltmp11-.Lfunc_begin0   #     jumps to .Ltmp11
	.byte	1                       #   On action: 1
	.long	.Ltmp10-.Lfunc_begin0   # >> Call Site 6 <<
	.long	.Lfunc_end0-.Ltmp10     #   Call between .Ltmp10 and .Lfunc_end0
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZNSt17_Function_handlerIFvPKcE10BigFunctorE9_M_invokeERKSt9_Any_dataOS1_,"axG",@progbits,_ZNSt17_Function_handlerIFvPKcE10BigFunctorE9_M_invokeERKSt9_Any_dataOS1_,comdat
	.weak	_ZNSt17_Function_handlerIFvPKcE10BigFunctorE9_M_invokeERKSt9_Any_dataOS1_
	.align	16, 0x90
	.type	_ZNSt17_Function_handlerIFvPKcE10BigFunctorE9_M_invokeERKSt9_Any_dataOS1_,@function
_ZNSt17_Function_handlerIFvPKcE10BigFunctorE9_M_invokeERKSt9_Any_dataOS1_: # @_ZNSt17_Function_handlerIFvPKcE10BigFunctorE9_M_invokeERKSt9_Any_dataOS1_
	.cfi_startproc
# BB#0:
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp21:
	.cfi_def_cfa_offset 32
.Ltmp22:
	.cfi_offset %rbx, -24
.Ltmp23:
	.cfi_offset %r14, -16
	movq	(%rdi), %r14
	movq	(%rsi), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	memcpy                  # TAILCALL
.Lfunc_end1:
	.size	_ZNSt17_Function_handlerIFvPKcE10BigFunctorE9_M_invokeERKSt9_Any_dataOS1_, .Lfunc_end1-_ZNSt17_Function_handlerIFvPKcE10BigFunctorE9_M_invokeERKSt9_Any_dataOS1_
	.cfi_endproc

	.section	.text._ZNSt14_Function_base13_Base_managerI10BigFunctorE10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation,"axG",@progbits,_ZNSt14_Function_base13_Base_managerI10BigFunctorE10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation,comdat
	.weak	_ZNSt14_Function_base13_Base_managerI10BigFunctorE10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation
	.align	16, 0x90
	.type	_ZNSt14_Function_base13_Base_managerI10BigFunctorE10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation,@function
_ZNSt14_Function_base13_Base_managerI10BigFunctorE10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation: # @_ZNSt14_Function_base13_Base_managerI10BigFunctorE10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation
	.cfi_startproc
# BB#0:
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp26:
	.cfi_def_cfa_offset 32
.Ltmp27:
	.cfi_offset %rbx, -24
.Ltmp28:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	%edx, %eax
	cmpl	$3, %edx
	ja	.LBB2_7
# BB#1:
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_2:
	movq	$_ZTI10BigFunctor, (%rbx)
	jmp	.LBB2_7
.LBB2_3:
	movq	(%r14), %rax
	movq	%rax, (%rbx)
	jmp	.LBB2_7
.LBB2_4:
	movl	$32, %edi
	callq	_Znwm
	movq	(%r14), %rcx
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	movq	%rax, (%rbx)
	jmp	.LBB2_7
.LBB2_5:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_7
# BB#6:
	callq	_ZdlPv
.LBB2_7:                                # %_ZNSt14_Function_base13_Base_managerI10BigFunctorE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	_ZNSt14_Function_base13_Base_managerI10BigFunctorE10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, .Lfunc_end2-_ZNSt14_Function_base13_Base_managerI10BigFunctorE10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation
	.cfi_endproc
	.section	.rodata._ZNSt14_Function_base13_Base_managerI10BigFunctorE10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation,"aG",@progbits,_ZNSt14_Function_base13_Base_managerI10BigFunctorE10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation,comdat
	.align	8
.LJTI2_0:
	.quad	.LBB2_2
	.quad	.LBB2_3
	.quad	.LBB2_4
	.quad	.LBB2_5

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
.Lfunc_end3:
	.size	__clang_call_terminate, .Lfunc_end3-__clang_call_terminate

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_perf_big_functor.cc,@function
_GLOBAL__sub_I_perf_big_functor.cc:     # @_GLOBAL__sub_I_perf_big_functor.cc
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp29:
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	popq	%rax
	jmp	__cxa_atexit            # TAILCALL
.Lfunc_end4:
	.size	_GLOBAL__sub_I_perf_big_functor.cc, .Lfunc_end4-_GLOBAL__sub_I_perf_big_functor.cc
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	_ZL3arr,@object         # @_ZL3arr
	.data
	.align	16
_ZL3arr:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.size	_ZL3arr, 24

	.type	_ZTS10BigFunctor,@object # @_ZTS10BigFunctor
	.section	.rodata._ZTS10BigFunctor,"aG",@progbits,_ZTS10BigFunctor,comdat
	.weak	_ZTS10BigFunctor
_ZTS10BigFunctor:
	.asciz	"10BigFunctor"
	.size	_ZTS10BigFunctor, 13

	.type	_ZTI10BigFunctor,@object # @_ZTI10BigFunctor
	.section	.rodata._ZTI10BigFunctor,"aG",@progbits,_ZTI10BigFunctor,comdat
	.weak	_ZTI10BigFunctor
	.align	8
_ZTI10BigFunctor:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS10BigFunctor
	.size	_ZTI10BigFunctor, 16

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"SampleA"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"SampleB"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"SampleC"
	.size	.L.str.2, 8

	.section	.init_array,"aw",@init_array
	.align	8
	.quad	_GLOBAL__sub_I_perf_big_functor.cc

	.ident	"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
