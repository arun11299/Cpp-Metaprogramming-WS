	.text
	.file	"../perf_fast_delegate.cc"
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
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp11:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 48
	subq	$64, %rsp
.Ltmp13:
	.cfi_def_cfa_offset 112
.Ltmp14:
	.cfi_offset %rbx, -48
.Ltmp15:
	.cfi_offset %r12, -40
.Ltmp16:
	.cfi_offset %r14, -32
.Ltmp17:
	.cfi_offset %r15, -24
.Ltmp18:
	.cfi_offset %rbp, -16
	leaq	8(%rsp), %rdi
	movl	$_Z12fun_functioni, %esi
	callq	_ZN8delegateIFViiEEC2IRS1_vEEOT_
	movl	$0, 4(%rsp)
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r14
	movq	8(%rsp), %r12
	movq	16(%rsp), %rbx
	xorl	%ebp, %ebp
	leaq	56(%rsp), %r15
	.align	16, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	4(%rsp), %eax
	movl	%eax, 56(%rsp)
.Ltmp0:
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	*%rbx
.Ltmp1:
# BB#2:                                 #   in Loop: Header=BB1_1 Depth=1
	movl	%eax, 4(%rsp)
	incl	%ebp
	cmpl	$10000000, %ebp         # imm = 0x989680
	jl	.LBB1_1
# BB#3:
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
# BB#4:                                 # %_ZNSolsEl.exit
	movb	$10, 63(%rsp)
.Ltmp5:
	leaq	63(%rsp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp6:
# BB#5:
	movq	40(%rsp), %rbx
	testq	%rbx, %rbx
	je	.LBB1_28
# BB#6:
	leaq	8(%rbx), %rax
	movl	$__pthread_key_create, %ecx
	testq	%rcx, %rcx
	je	.LBB1_21
# BB#7:
	movl	$-1, %ecx
	lock		xaddl	%ecx, (%rax)
	jmp	.LBB1_22
.LBB1_21:
	movl	(%rax), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, (%rax)
.LBB1_22:                               # %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i.i.i
	cmpl	$1, %ecx
	jne	.LBB1_28
# BB#23:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	callq	*16(%rax)
	leaq	12(%rbx), %rax
	movl	$__pthread_key_create, %ecx
	testq	%rcx, %rcx
	je	.LBB1_25
# BB#24:
	movl	$-1, %ecx
	lock		xaddl	%ecx, (%rax)
	jmp	.LBB1_26
.LBB1_25:
	movl	(%rax), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, (%rax)
.LBB1_26:                               # %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit2.i.i.i.i
	cmpl	$1, %ecx
	jne	.LBB1_28
# BB#27:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	callq	*24(%rax)
.LBB1_28:                               # %_ZN8delegateIFViiEED2Ev.exit
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_8:                                # %.loopexit
.Ltmp2:
.LBB1_10:
	movq	%rax, %r14
	movq	40(%rsp), %rbx
	testq	%rbx, %rbx
	je	.LBB1_20
# BB#11:
	leaq	8(%rbx), %rax
	movl	$__pthread_key_create, %ecx
	testq	%rcx, %rcx
	je	.LBB1_13
# BB#12:
	movl	$-1, %ecx
	lock		xaddl	%ecx, (%rax)
	jmp	.LBB1_14
.LBB1_13:
	movl	(%rax), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, (%rax)
.LBB1_14:                               # %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i.i.i2
	cmpl	$1, %ecx
	jne	.LBB1_20
# BB#15:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	callq	*16(%rax)
	leaq	12(%rbx), %rax
	movl	$__pthread_key_create, %ecx
	testq	%rcx, %rcx
	je	.LBB1_17
# BB#16:
	movl	$-1, %ecx
	lock		xaddl	%ecx, (%rax)
	jmp	.LBB1_18
.LBB1_17:
	movl	(%rax), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, (%rax)
.LBB1_18:                               # %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit2.i.i.i.i4
	cmpl	$1, %ecx
	jne	.LBB1_20
# BB#19:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	callq	*24(%rax)
.LBB1_20:                               # %_ZN8delegateIFViiEED2Ev.exit5
	movq	%r14, %rdi
	callq	_Unwind_Resume
.LBB1_9:                                # %.loopexit.split-lp
.Ltmp7:
	jmp	.LBB1_10
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table1:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\266\200\200"          # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	52                      # Call site table length
	.long	.Lfunc_begin0-.Lfunc_begin0 # >> Call Site 1 <<
	.long	.Ltmp0-.Lfunc_begin0    #   Call between .Lfunc_begin0 and .Ltmp0
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp0-.Lfunc_begin0    # >> Call Site 2 <<
	.long	.Ltmp1-.Ltmp0           #   Call between .Ltmp0 and .Ltmp1
	.long	.Ltmp2-.Lfunc_begin0    #     jumps to .Ltmp2
	.byte	0                       #   On action: cleanup
	.long	.Ltmp3-.Lfunc_begin0    # >> Call Site 3 <<
	.long	.Ltmp6-.Ltmp3           #   Call between .Ltmp3 and .Ltmp6
	.long	.Ltmp7-.Lfunc_begin0    #     jumps to .Ltmp7
	.byte	0                       #   On action: cleanup
	.long	.Ltmp6-.Lfunc_begin0    # >> Call Site 4 <<
	.long	.Lfunc_end1-.Ltmp6      #   Call between .Ltmp6 and .Lfunc_end1
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.section	.text._ZN8delegateIFViiEEC2IRS1_vEEOT_,"axG",@progbits,_ZN8delegateIFViiEEC2IRS1_vEEOT_,comdat
	.weak	_ZN8delegateIFViiEEC2IRS1_vEEOT_
	.align	16, 0x90
	.type	_ZN8delegateIFViiEEC2IRS1_vEEOT_,@function
_ZN8delegateIFViiEEC2IRS1_vEEOT_:       # @_ZN8delegateIFViiEEC2IRS1_vEEOT_
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# BB#0:
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 32
.Ltmp31:
	.cfi_offset %rbx, -32
.Ltmp32:
	.cfi_offset %r14, -24
.Ltmp33:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	$0, 8(%rbx)
	movl	$8, %edi
	callq	_Znwm
	movq	%rax, %r15
	movq	%r15, 24(%rbx)
	movq	$0, 32(%rbx)
.Ltmp19:
	movl	$32, %edi
	callq	_Znwm
.Ltmp20:
.LBB2_5:                                # %_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EEC2IvPFvPvEEEPT_T0_.exit
	movl	$1, 8(%rax)
	movl	$1, 12(%rax)
	movq	$_ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE+16, (%rax)
	movq	$_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv, 16(%rax)
	movq	%r15, 24(%rax)
	movq	%rax, 32(%rbx)
	movq	$8, 40(%rbx)
	movq	24(%rbx), %rax
	movq	%r14, (%rax)
	movq	24(%rbx), %rax
	movq	%rax, (%rbx)
	movq	$_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntoocvNS2_14is_member_pairIT_EEilEcvNS2_20is_const_member_pairIS7_EEilEES0_E4typeEPvOi, 8(%rbx)
	movq	$_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv, 16(%rbx)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB2_4:
.Ltmp21:
	movq	%rax, %rdi
	callq	__cxa_begin_catch
	movq	%r15, %rdi
	callq	_ZdlPv
.Ltmp22:
	callq	__cxa_rethrow
.Ltmp23:
	jmp	.LBB2_5
.LBB2_1:
.Ltmp24:
	movq	%rax, %rbx
.Ltmp25:
	callq	__cxa_end_catch
.Ltmp26:
# BB#2:
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.LBB2_3:
.Ltmp27:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end2:
	.size	_ZN8delegateIFViiEEC2IRS1_vEEOT_, .Lfunc_end2-_ZN8delegateIFViiEEC2IRS1_vEEOT_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table2:
.Lexception1:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\326\200\200"          # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	78                      # Call site table length
	.long	.Lfunc_begin1-.Lfunc_begin1 # >> Call Site 1 <<
	.long	.Ltmp19-.Lfunc_begin1   #   Call between .Lfunc_begin1 and .Ltmp19
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp19-.Lfunc_begin1   # >> Call Site 2 <<
	.long	.Ltmp20-.Ltmp19         #   Call between .Ltmp19 and .Ltmp20
	.long	.Ltmp21-.Lfunc_begin1   #     jumps to .Ltmp21
	.byte	1                       #   On action: 1
	.long	.Ltmp20-.Lfunc_begin1   # >> Call Site 3 <<
	.long	.Ltmp22-.Ltmp20         #   Call between .Ltmp20 and .Ltmp22
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp22-.Lfunc_begin1   # >> Call Site 4 <<
	.long	.Ltmp23-.Ltmp22         #   Call between .Ltmp22 and .Ltmp23
	.long	.Ltmp24-.Lfunc_begin1   #     jumps to .Ltmp24
	.byte	0                       #   On action: cleanup
	.long	.Ltmp25-.Lfunc_begin1   # >> Call Site 5 <<
	.long	.Ltmp26-.Ltmp25         #   Call between .Ltmp25 and .Ltmp26
	.long	.Ltmp27-.Lfunc_begin1   #     jumps to .Ltmp27
	.byte	1                       #   On action: 1
	.long	.Ltmp26-.Lfunc_begin1   # >> Call Site 6 <<
	.long	.Lfunc_end2-.Ltmp26     #   Call between .Ltmp26 and .Lfunc_end2
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
.Lfunc_end3:
	.size	__clang_call_terminate, .Lfunc_end3-__clang_call_terminate

	.section	.text._ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv,"axG",@progbits,_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv,comdat
	.weak	_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv
	.align	16, 0x90
	.type	_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv,@function
_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv: # @_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv
	.cfi_startproc
# BB#0:
	jmp	_ZdlPv                  # TAILCALL
.Lfunc_end4:
	.size	_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv, .Lfunc_end4-_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv
	.cfi_endproc

	.section	.text._ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntoocvNS2_14is_member_pairIT_EEilEcvNS2_20is_const_member_pairIS7_EEilEES0_E4typeEPvOi,"axG",@progbits,_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntoocvNS2_14is_member_pairIT_EEilEcvNS2_20is_const_member_pairIS7_EEilEES0_E4typeEPvOi,comdat
	.weak	_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntoocvNS2_14is_member_pairIT_EEilEcvNS2_20is_const_member_pairIS7_EEilEES0_E4typeEPvOi
	.align	16, 0x90
	.type	_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntoocvNS2_14is_member_pairIT_EEilEcvNS2_20is_const_member_pairIS7_EEilEES0_E4typeEPvOi,@function
_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntoocvNS2_14is_member_pairIT_EEilEcvNS2_20is_const_member_pairIS7_EEilEES0_E4typeEPvOi: # @_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntoocvNS2_14is_member_pairIT_EEilEcvNS2_20is_const_member_pairIS7_EEilEES0_E4typeEPvOi
	.cfi_startproc
# BB#0:
	movq	%rdi, %rax
	movl	(%rsi), %edi
	jmpq	*(%rax)                 # TAILCALL
.Lfunc_end5:
	.size	_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntoocvNS2_14is_member_pairIT_EEilEcvNS2_20is_const_member_pairIS7_EEilEES0_E4typeEPvOi, .Lfunc_end5-_ZN8delegateIFViiEE12functor_stubIPS1_EENSt9enable_ifIXntoocvNS2_14is_member_pairIT_EEilEcvNS2_20is_const_member_pairIS7_EEilEES0_E4typeEPvOi
	.cfi_endproc

	.section	.text._ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv,"axG",@progbits,_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv,comdat
	.weak	_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv
	.align	16, 0x90
	.type	_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv,@function
_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv: # @_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv
	.cfi_startproc
# BB#0:
	retq
.Lfunc_end6:
	.size	_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv, .Lfunc_end6-_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv
	.cfi_endproc

	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev,comdat
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.align	16, 0x90
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev,@function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev: # @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.cfi_startproc
# BB#0:
	retq
.Lfunc_end7:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, .Lfunc_end7-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.cfi_endproc

	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev,comdat
	.weak	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.align	16, 0x90
	.type	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev,@function
_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev: # @_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.cfi_startproc
# BB#0:
	jmp	_ZdlPv                  # TAILCALL
.Lfunc_end8:
	.size	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, .Lfunc_end8-_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.cfi_endproc

	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,comdat
	.weak	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.align	16, 0x90
	.type	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,@function
_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv: # @_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception2
# BB#0:
	pushq	%rax
.Ltmp37:
	.cfi_def_cfa_offset 16
	movq	16(%rdi), %rax
	movq	24(%rdi), %rdi
.Ltmp34:
	callq	*%rax
.Ltmp35:
# BB#1:
	popq	%rax
	retq
.LBB9_2:
.Ltmp36:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end9:
	.size	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, .Lfunc_end9-_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table9:
.Lexception2:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	21                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	13                      # Call site table length
	.long	.Ltmp34-.Lfunc_begin2   # >> Call Site 1 <<
	.long	.Ltmp35-.Ltmp34         #   Call between .Ltmp34 and .Ltmp35
	.long	.Ltmp36-.Lfunc_begin2   #     jumps to .Ltmp36
	.byte	1                       #   On action: 1
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,comdat
	.weak	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.align	16, 0x90
	.type	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,@function
_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv: # @_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.cfi_startproc
# BB#0:
	testq	%rdi, %rdi
	je	.LBB10_1
# BB#2:
	jmp	_ZdlPv                  # TAILCALL
.LBB10_1:                               # %_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPvPFvS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit
	retq
.Lfunc_end10:
	.size	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, .Lfunc_end10-_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.cfi_endproc

	.section	.text._ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,"axG",@progbits,_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,comdat
	.weak	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.align	16, 0x90
	.type	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,@function
_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info: # @_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	8(%rsi), %rdi
	movl	$_ZTSPFvPvE, %eax
	cmpq	%rax, %rdi
	je	.LBB11_3
# BB#1:
	movzbl	(%rdi), %ecx
	xorl	%eax, %eax
	cmpl	$42, %ecx
	je	.LBB11_4
# BB#2:                                 # %_ZNKSt9type_infoeqERKS_.exit
	movl	$_ZTSPFvPvE, %esi
	callq	strcmp
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB11_4
.LBB11_3:                               # %_ZNKSt9type_infoeqERKS_.exit.thread
	addq	$16, %rbx
	movq	%rbx, %rax
.LBB11_4:                               # %_ZNKSt9type_infoeqERKS_.exit.thread1
	popq	%rbx
	retq
.Lfunc_end11:
	.size	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info, .Lfunc_end11-_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_perf_fast_delegate.cc,@function
_GLOBAL__sub_I_perf_fast_delegate.cc:   # @_GLOBAL__sub_I_perf_fast_delegate.cc
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp40:
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	popq	%rax
	jmp	__cxa_atexit            # TAILCALL
.Lfunc_end12:
	.size	_GLOBAL__sub_I_perf_fast_delegate.cc, .Lfunc_end12-_GLOBAL__sub_I_perf_fast_delegate.cc
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	_ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE,@object # @_ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE,comdat
	.weak	_ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE
	.align	8
_ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE:
	.quad	0
	.quad	_ZTISt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.quad	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.quad	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.quad	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.quad	_ZNSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.size	_ZTVSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, 56

	.type	_ZTSSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE,@object # @_ZTSSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTSSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTSSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE,comdat
	.weak	_ZTSSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE
	.align	16
_ZTSSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE:
	.asciz	"St19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE"
	.size	_ZTSSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, 69

	.type	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,@object # @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.weak	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.align	16
_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.asciz	"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE"
	.size	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, 52

	.type	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,@object # @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.weak	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.align	16
_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.asciz	"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE"
	.size	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, 47

	.type	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,@object # @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.weak	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.align	8
_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.size	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, 16

	.type	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,@object # @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.weak	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.align	16
_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.size	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, 24

	.type	_ZTISt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE,@object # @_ZTISt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTISt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTISt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE,comdat
	.weak	_ZTISt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE
	.align	16
_ZTISt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.size	_ZTISt19_Sp_counted_deleterIPvPFvS0_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, 24

	.type	_ZTSPFvPvE,@object      # @_ZTSPFvPvE
	.section	.rodata._ZTSPFvPvE,"aG",@progbits,_ZTSPFvPvE,comdat
	.weak	_ZTSPFvPvE
_ZTSPFvPvE:
	.asciz	"PFvPvE"
	.size	_ZTSPFvPvE, 7

	.section	.init_array,"aw",@init_array
	.align	8
	.quad	_GLOBAL__sub_I_perf_fast_delegate.cc
	.weak	__pthread_key_create

	.ident	"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
