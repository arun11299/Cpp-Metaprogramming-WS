	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.globl	__Z12fun_functioni
	.align	4, 0x90
__Z12fun_functioni:                     ## @_Z12fun_functioni
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	incl	%eax
	movl	%eax, -4(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## BB#0:
	pushq	%rbp
Ltmp11:
	.cfi_def_cfa_offset 16
Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp13:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Ltmp14:
	.cfi_offset %rbx, -56
Ltmp15:
	.cfi_offset %r12, -48
Ltmp16:
	.cfi_offset %r13, -40
Ltmp17:
	.cfi_offset %r14, -32
Ltmp18:
	.cfi_offset %r15, -24
	leaq	__Z12fun_functioni(%rip), %rsi
	leaq	-96(%rbp), %rdi
	callq	__ZN8delegateIFViiEEC2IRS1_vEEOT_
	movl	$0, -100(%rbp)
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movq	%rax, %r14
	movq	-96(%rbp), %r12
	movq	-88(%rbp), %r13
	xorl	%ebx, %ebx
	leaq	-48(%rbp), %r15
	.align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, -48(%rbp)
Ltmp3:
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	*%r13
Ltmp4:
## BB#2:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	%eax, -100(%rbp)
	incl	%ebx
	cmpl	$10000000, %ebx         ## imm = 0x989680
	jl	LBB1_1
## BB#3:
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	subq	%r14, %rax
	movabsq	$2361183241434822607, %rcx ## imm = 0x20C49BA5E353F7CF
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	leaq	(%rdx,%rax), %rsi
Ltmp6:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp7:
## BB#4:
	movb	$10, -41(%rbp)
Ltmp8:
	leaq	-41(%rbp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp9:
## BB#5:
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB1_7
## BB#6:
	callq	__ZNSt3__119__shared_weak_count16__release_sharedEv
LBB1_7:                                 ## %_ZN8delegateIFViiEED1Ev.exit1
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB1_8:                                 ## %.loopexit
Ltmp5:
LBB1_10:
	movq	%rax, %rbx
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB1_12
## BB#11:
	callq	__ZNSt3__119__shared_weak_count16__release_sharedEv
LBB1_12:                                ## %_ZN8delegateIFViiEED1Ev.exit
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB1_9:                                 ## %.loopexit.split-lp
Ltmp10:
	jmp	LBB1_10
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table1:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\266\200\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	52                      ## Call site table length
Lset0 = Lfunc_begin1-Lfunc_begin1       ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp3-Lfunc_begin1              ##   Call between Lfunc_begin1 and Ltmp3
	.long	Lset1
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset2 = Ltmp3-Lfunc_begin1              ## >> Call Site 2 <<
	.long	Lset2
Lset3 = Ltmp4-Ltmp3                     ##   Call between Ltmp3 and Ltmp4
	.long	Lset3
Lset4 = Ltmp5-Lfunc_begin1              ##     jumps to Ltmp5
	.long	Lset4
	.byte	0                       ##   On action: cleanup
Lset5 = Ltmp6-Lfunc_begin1              ## >> Call Site 3 <<
	.long	Lset5
Lset6 = Ltmp9-Ltmp6                     ##   Call between Ltmp6 and Ltmp9
	.long	Lset6
Lset7 = Ltmp10-Lfunc_begin1             ##     jumps to Ltmp10
	.long	Lset7
	.byte	0                       ##   On action: cleanup
Lset8 = Ltmp9-Lfunc_begin1              ## >> Call Site 4 <<
	.long	Lset8
Lset9 = Lfunc_end1-Ltmp9                ##   Call between Ltmp9 and Lfunc_end1
	.long	Lset9
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.align	2

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN8delegateIFViiEEC2IRS1_vEEOT_
	.weak_def_can_be_hidden	__ZN8delegateIFViiEEC2IRS1_vEEOT_
	.align	4, 0x90
__ZN8delegateIFViiEEC2IRS1_vEEOT_:      ## @_ZN8delegateIFViiEEC2IRS1_vEEOT_
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
## BB#0:
	pushq	%rbp
Ltmp28:
	.cfi_def_cfa_offset 16
Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp30:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp31:
	.cfi_offset %rbx, -40
Ltmp32:
	.cfi_offset %r14, -32
Ltmp33:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	$0, 8(%rbx)
	movl	$8, %edi
	callq	__Znwm
	movq	%rax, %r15
	movq	%r15, 24(%rbx)
Ltmp19:
	movl	$40, %edi
	callq	__Znwm
Ltmp20:
LBB2_5:                                 ## %_ZNSt3__110shared_ptrIvEC1IvPFvPvEEEPT_T0_NS_9enable_ifIXsr14is_convertibleIS7_S3_EE5valueENS1_5__natEE4typeE.exit
	movq	$0, 16(%rax)
	movq	$0, 8(%rax)
	movq	__ZTVNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, (%rax)
	movq	%r15, 24(%rax)
	movq	__ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv@GOTPCREL(%rip), %rcx
	movq	%rcx, 32(%rax)
	movq	%rax, 32(%rbx)
	movq	$8, 40(%rbx)
	movq	%r14, (%r15)
	movq	24(%rbx), %rax
	movq	%rax, (%rbx)
	movq	__ZN8delegateIFViiEE12functor_stubIPS1_EENSt3__19enable_ifIXntoocvNS2_14is_member_pairIT_EEilEcvNS2_20is_const_member_pairIS8_EEilEES0_E4typeEPvOi@GOTPCREL(%rip), %rax
	movq	%rax, 8(%rbx)
	movq	__ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB2_4:
Ltmp21:
	movq	%rax, %rdi
	callq	___cxa_begin_catch
	movq	%r15, %rdi
	callq	__ZdlPv
Ltmp22:
	callq	___cxa_rethrow
Ltmp23:
	jmp	LBB2_5
LBB2_1:
Ltmp24:
	movq	%rax, %rbx
Ltmp25:
	callq	___cxa_end_catch
Ltmp26:
## BB#2:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB2_3:
Ltmp27:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table2:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\326\200\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	78                      ## Call site table length
Lset10 = Lfunc_begin2-Lfunc_begin2      ## >> Call Site 1 <<
	.long	Lset10
Lset11 = Ltmp19-Lfunc_begin2            ##   Call between Lfunc_begin2 and Ltmp19
	.long	Lset11
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset12 = Ltmp19-Lfunc_begin2            ## >> Call Site 2 <<
	.long	Lset12
Lset13 = Ltmp20-Ltmp19                  ##   Call between Ltmp19 and Ltmp20
	.long	Lset13
Lset14 = Ltmp21-Lfunc_begin2            ##     jumps to Ltmp21
	.long	Lset14
	.byte	1                       ##   On action: 1
Lset15 = Ltmp20-Lfunc_begin2            ## >> Call Site 3 <<
	.long	Lset15
Lset16 = Ltmp22-Ltmp20                  ##   Call between Ltmp20 and Ltmp22
	.long	Lset16
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset17 = Ltmp22-Lfunc_begin2            ## >> Call Site 4 <<
	.long	Lset17
Lset18 = Ltmp23-Ltmp22                  ##   Call between Ltmp22 and Ltmp23
	.long	Lset18
Lset19 = Ltmp24-Lfunc_begin2            ##     jumps to Ltmp24
	.long	Lset19
	.byte	0                       ##   On action: cleanup
Lset20 = Ltmp25-Lfunc_begin2            ## >> Call Site 5 <<
	.long	Lset20
Lset21 = Ltmp26-Ltmp25                  ##   Call between Ltmp25 and Ltmp26
	.long	Lset21
Lset22 = Ltmp27-Lfunc_begin2            ##     jumps to Ltmp27
	.long	Lset22
	.byte	1                       ##   On action: 1
Lset23 = Ltmp26-Lfunc_begin2            ## >> Call Site 6 <<
	.long	Lset23
Lset24 = Lfunc_end2-Ltmp26              ##   Call between Ltmp26 and Lfunc_end2
	.long	Lset24
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv
	.weak_definition	__ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv
	.align	4, 0x90
__ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv: ## @_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp34:
	.cfi_def_cfa_offset 16
Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp36:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
	.cfi_endproc

	.globl	__ZN8delegateIFViiEE12functor_stubIPS1_EENSt3__19enable_ifIXntoocvNS2_14is_member_pairIT_EEilEcvNS2_20is_const_member_pairIS8_EEilEES0_E4typeEPvOi
	.weak_definition	__ZN8delegateIFViiEE12functor_stubIPS1_EENSt3__19enable_ifIXntoocvNS2_14is_member_pairIT_EEilEcvNS2_20is_const_member_pairIS8_EEilEES0_E4typeEPvOi
	.align	4, 0x90
__ZN8delegateIFViiEE12functor_stubIPS1_EENSt3__19enable_ifIXntoocvNS2_14is_member_pairIT_EEilEcvNS2_20is_const_member_pairIS8_EEilEES0_E4typeEPvOi: ## @_ZN8delegateIFViiEE12functor_stubIPS1_EENSt3__19enable_ifIXntoocvNS2_14is_member_pairIT_EEilEcvNS2_20is_const_member_pairIS8_EEilEES0_E4typeEPvOi
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp37:
	.cfi_def_cfa_offset 16
Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp39:
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	movl	(%rsi), %edi
	popq	%rbp
	jmpq	*(%rax)                 ## TAILCALL
	.cfi_endproc

	.globl	__ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv
	.weak_definition	__ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv
	.align	4, 0x90
__ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv: ## @_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp40:
	.cfi_def_cfa_offset 16
Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp42:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	___clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	___cxa_begin_catch
	callq	__ZSt9terminatev

	.globl	__ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEED1Ev
	.align	4, 0x90
__ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEED1Ev: ## @_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEED1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp43:
	.cfi_def_cfa_offset 16
Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp45:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	__ZNSt3__119__shared_weak_countD2Ev ## TAILCALL
	.cfi_endproc

	.globl	__ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEED0Ev
	.weak_def_can_be_hidden	__ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEED0Ev
	.align	4, 0x90
__ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEED0Ev: ## @_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEED0Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp46:
	.cfi_def_cfa_offset 16
Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp48:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Ltmp49:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
                                        ## kill: RDI<def> RBX<kill>
	callq	__ZNSt3__119__shared_weak_countD2Ev
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
	.cfi_endproc

	.globl	__ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE16__on_zero_sharedEv
	.weak_def_can_be_hidden	__ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE16__on_zero_sharedEv
	.align	4, 0x90
__ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE16__on_zero_sharedEv: ## @_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE16__on_zero_sharedEv
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
## BB#0:
	pushq	%rbp
Ltmp53:
	.cfi_def_cfa_offset 16
Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp55:
	.cfi_def_cfa_register %rbp
	movq	24(%rdi), %rax
	movq	32(%rdi), %rcx
Ltmp50:
	movq	%rax, %rdi
	callq	*%rcx
Ltmp51:
## BB#1:
	popq	%rbp
	retq
LBB9_2:
Ltmp52:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table9:
Lexception9:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	21                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	13                      ## Call site table length
Lset25 = Ltmp50-Lfunc_begin9            ## >> Call Site 1 <<
	.long	Lset25
Lset26 = Ltmp51-Ltmp50                  ##   Call between Ltmp50 and Ltmp51
	.long	Lset26
Lset27 = Ltmp52-Lfunc_begin9            ##     jumps to Ltmp52
	.long	Lset27
	.byte	1                       ##   On action: 1
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZNKSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE13__get_deleterERKSt9type_info
	.weak_def_can_be_hidden	__ZNKSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE13__get_deleterERKSt9type_info
	.align	4, 0x90
__ZNKSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE13__get_deleterERKSt9type_info: ## @_ZNKSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE13__get_deleterERKSt9type_info
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp56:
	.cfi_def_cfa_offset 16
Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp58:
	.cfi_def_cfa_register %rbp
	movq	8(%rsi), %rcx
	xorl	%eax, %eax
	cmpq	__ZTSPFvPvE@GOTPCREL(%rip), %rcx
	jne	LBB10_2
## BB#1:
	addq	$32, %rdi
	movq	%rdi, %rax
LBB10_2:
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE21__on_zero_shared_weakEv
	.weak_def_can_be_hidden	__ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE21__on_zero_shared_weakEv
	.align	4, 0x90
__ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE21__on_zero_shared_weakEv: ## @_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE21__on_zero_shared_weakEv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp59:
	.cfi_def_cfa_offset 16
Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp61:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
	.cfi_endproc

	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.align	4, 0x90
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception12
## BB#0:
	pushq	%rbp
Ltmp83:
	.cfi_def_cfa_offset 16
Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp85:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Ltmp86:
	.cfi_offset %rbx, -56
Ltmp87:
	.cfi_offset %r12, -48
Ltmp88:
	.cfi_offset %r13, -40
Ltmp89:
	.cfi_offset %r14, -32
Ltmp90:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
Ltmp62:
	leaq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp63:
## BB#1:
	cmpb	$0, -64(%rbp)
	je	LBB12_12
## BB#2:
	movq	(%rbx), %rax
	movq	-24(%rax), %r12
	movq	40(%r12,%rbx), %rdi
	movl	$176, %eax
	andl	8(%r12,%rbx), %eax
	cmpl	$32, %eax
	movq	%r15, %r13
	jne	LBB12_4
## BB#3:
	leaq	(%r15,%r14), %r13
LBB12_4:
	leaq	(%rbx,%r12), %r8
	movl	144(%rbx,%r12), %eax
	cmpl	$-1, %eax
	jne	LBB12_9
## BB#5:
Ltmp65:
	movq	%rdi, -72(%rbp)         ## 8-byte Spill
	leaq	-48(%rbp), %rdi
	movq	%r8, %rsi
	movq	%r8, -80(%rbp)          ## 8-byte Spill
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp66:
## BB#6:                                ## %.noexc
Ltmp67:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-48(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp68:
## BB#7:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp69:
	movl	$32, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, -81(%rbp)          ## 1-byte Spill
Ltmp70:
## BB#8:                                ## %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	-81(%rbp), %eax         ## 1-byte Folded Reload
	movl	%eax, 144(%rbx,%r12)
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	movq	-80(%rbp), %r8          ## 8-byte Reload
LBB12_9:
	addq	%r15, %r14
Ltmp72:
	movsbl	%al, %r9d
	movq	%r15, %rsi
	movq	%r13, %rdx
	movq	%r14, %rcx
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp73:
## BB#10:
	testq	%rax, %rax
	jne	LBB12_12
## BB#11:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$5, %esi
Ltmp74:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp75:
LBB12_12:                               ## %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj.exit
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB12_17:
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB12_13:
Ltmp76:
	movq	%rax, %r14
	jmp	LBB12_14
LBB12_22:
Ltmp64:
	movq	%rax, %r14
	jmp	LBB12_15
LBB12_21:
Ltmp71:
	movq	%rax, %r14
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
LBB12_14:                               ## %.body
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB12_15:
	movq	%rbx, %r15
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	movq	(%rbx), %rax
	addq	-24(%rax), %r15
Ltmp77:
	movq	%r15, %rdi
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp78:
## BB#16:
	callq	___cxa_end_catch
	jmp	LBB12_17
LBB12_18:
Ltmp79:
	movq	%rax, %rbx
Ltmp80:
	callq	___cxa_end_catch
Ltmp81:
## BB#19:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB12_20:
Ltmp82:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table12:
Lexception12:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	125                     ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	117                     ## Call site table length
Lset28 = Ltmp62-Lfunc_begin12           ## >> Call Site 1 <<
	.long	Lset28
Lset29 = Ltmp63-Ltmp62                  ##   Call between Ltmp62 and Ltmp63
	.long	Lset29
Lset30 = Ltmp64-Lfunc_begin12           ##     jumps to Ltmp64
	.long	Lset30
	.byte	1                       ##   On action: 1
Lset31 = Ltmp65-Lfunc_begin12           ## >> Call Site 2 <<
	.long	Lset31
Lset32 = Ltmp66-Ltmp65                  ##   Call between Ltmp65 and Ltmp66
	.long	Lset32
Lset33 = Ltmp76-Lfunc_begin12           ##     jumps to Ltmp76
	.long	Lset33
	.byte	1                       ##   On action: 1
Lset34 = Ltmp67-Lfunc_begin12           ## >> Call Site 3 <<
	.long	Lset34
Lset35 = Ltmp70-Ltmp67                  ##   Call between Ltmp67 and Ltmp70
	.long	Lset35
Lset36 = Ltmp71-Lfunc_begin12           ##     jumps to Ltmp71
	.long	Lset36
	.byte	1                       ##   On action: 1
Lset37 = Ltmp72-Lfunc_begin12           ## >> Call Site 4 <<
	.long	Lset37
Lset38 = Ltmp75-Ltmp72                  ##   Call between Ltmp72 and Ltmp75
	.long	Lset38
Lset39 = Ltmp76-Lfunc_begin12           ##     jumps to Ltmp76
	.long	Lset39
	.byte	1                       ##   On action: 1
Lset40 = Ltmp75-Lfunc_begin12           ## >> Call Site 5 <<
	.long	Lset40
Lset41 = Ltmp77-Ltmp75                  ##   Call between Ltmp75 and Ltmp77
	.long	Lset41
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset42 = Ltmp77-Lfunc_begin12           ## >> Call Site 6 <<
	.long	Lset42
Lset43 = Ltmp78-Ltmp77                  ##   Call between Ltmp77 and Ltmp78
	.long	Lset43
Lset44 = Ltmp79-Lfunc_begin12           ##     jumps to Ltmp79
	.long	Lset44
	.byte	0                       ##   On action: cleanup
Lset45 = Ltmp78-Lfunc_begin12           ## >> Call Site 7 <<
	.long	Lset45
Lset46 = Ltmp80-Ltmp78                  ##   Call between Ltmp78 and Ltmp80
	.long	Lset46
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset47 = Ltmp80-Lfunc_begin12           ## >> Call Site 8 <<
	.long	Lset47
Lset48 = Ltmp81-Ltmp80                  ##   Call between Ltmp80 and Ltmp81
	.long	Lset48
Lset49 = Ltmp82-Lfunc_begin12           ##     jumps to Ltmp82
	.long	Lset49
	.byte	1                       ##   On action: 1
Lset50 = Ltmp81-Lfunc_begin12           ## >> Call Site 9 <<
	.long	Lset50
Lset51 = Lfunc_end12-Ltmp81             ##   Call between Ltmp81 and Lfunc_end12
	.long	Lset51
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.align	4, 0x90
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ## @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception13
## BB#0:
	pushq	%rbp
Ltmp94:
	.cfi_def_cfa_offset 16
Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp96:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp97:
	.cfi_offset %rbx, -56
Ltmp98:
	.cfi_offset %r12, -48
Ltmp99:
	.cfi_offset %r13, -40
Ltmp100:
	.cfi_offset %r14, -32
Ltmp101:
	.cfi_offset %r15, -24
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rdi, %r13
	xorl	%eax, %eax
	testq	%r13, %r13
	je	LBB13_12
## BB#1:
	movq	%r14, %rax
	subq	%rsi, %rax
	movq	24(%r8), %rcx
	xorl	%r15d, %r15d
	subq	%rax, %rcx
	cmovgq	%rcx, %r15
	movq	%rbx, %r12
	subq	%rsi, %r12
	testq	%r12, %r12
	jle	LBB13_3
## BB#2:
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%r12, %rdx
	movq	%rbx, -80(%rbp)         ## 8-byte Spill
	movq	%r14, -72(%rbp)         ## 8-byte Spill
	movq	%r8, %rbx
	movl	%r9d, %r14d
	callq	*96(%rax)
	movl	%r14d, %r9d
	movq	%rbx, %r8
	movq	-72(%rbp), %r14         ## 8-byte Reload
	movq	-80(%rbp), %rbx         ## 8-byte Reload
	movq	%rax, %rcx
	xorl	%eax, %eax
	cmpq	%r12, %rcx
	jne	LBB13_12
LBB13_3:
	testq	%r15, %r15
	jle	LBB13_9
## BB#4:
	movq	%r8, -72(%rbp)          ## 8-byte Spill
	movsbl	%r9b, %edx
	leaq	-64(%rbp), %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	testb	$1, -64(%rbp)
	jne	LBB13_5
## BB#6:
	movq	%r14, %r12
	leaq	-63(%rbp), %rsi
	jmp	LBB13_7
LBB13_5:
	movq	%r14, %r12
	movq	-48(%rbp), %rsi
LBB13_7:                                ## %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit
	movq	(%r13), %rax
	movq	96(%rax), %rax
Ltmp91:
	movq	%r13, %rdi
	movq	%r15, %rdx
	callq	*%rax
	movq	%rax, %r14
Ltmp92:
## BB#8:                                ## %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl.exit
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	xorl	%eax, %eax
	cmpq	%r15, %r14
	cmovneq	%rax, %r13
	movq	-72(%rbp), %r8          ## 8-byte Reload
	movq	%r12, %r14
	jne	LBB13_12
LBB13_9:
	subq	%rbx, %r14
	testq	%r14, %r14
	jle	LBB13_11
## BB#10:
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	movq	%r8, %rbx
	callq	*96(%rax)
	movq	%rbx, %r8
	movq	%rax, %rcx
	xorl	%eax, %eax
	cmpq	%r14, %rcx
	jne	LBB13_12
LBB13_11:
	movq	$0, 24(%r8)
	movq	%r13, %rax
LBB13_12:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB13_13:
Ltmp93:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end13:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table13:
Lexception13:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset52 = Lfunc_begin13-Lfunc_begin13    ## >> Call Site 1 <<
	.long	Lset52
Lset53 = Ltmp91-Lfunc_begin13           ##   Call between Lfunc_begin13 and Ltmp91
	.long	Lset53
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset54 = Ltmp91-Lfunc_begin13           ## >> Call Site 2 <<
	.long	Lset54
Lset55 = Ltmp92-Ltmp91                  ##   Call between Ltmp91 and Ltmp92
	.long	Lset55
Lset56 = Ltmp93-Lfunc_begin13           ##     jumps to Ltmp93
	.long	Lset56
	.byte	0                       ##   On action: cleanup
Lset57 = Ltmp92-Lfunc_begin13           ## >> Call Site 3 <<
	.long	Lset57
Lset58 = Lfunc_end13-Ltmp92             ##   Call between Ltmp92 and Lfunc_end13
	.long	Lset58
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.align	2

	.section	__DATA,__datacoal_nt,coalesced
	.globl	__ZTVNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE ## @_ZTVNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE
	.weak_def_can_be_hidden	__ZTVNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE
	.align	3
__ZTVNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE:
	.quad	0
	.quad	__ZTINSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE
	.quad	__ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEED1Ev
	.quad	__ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEED0Ev
	.quad	__ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE16__on_zero_sharedEv
	.quad	__ZNKSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE13__get_deleterERKSt9type_info
	.quad	__ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE21__on_zero_shared_weakEv

	.section	__TEXT,__const_coal,coalesced
	.globl	__ZTSNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE ## @_ZTSNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE
	.weak_definition	__ZTSNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE
	.align	4
__ZTSNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE:
	.asciz	"NSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE"

	.section	__DATA,__datacoal_nt,coalesced
	.globl	__ZTINSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE ## @_ZTINSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE
	.weak_definition	__ZTINSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE
	.align	4
__ZTINSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE
	.quad	__ZTINSt3__119__shared_weak_countE

	.section	__TEXT,__const_coal,coalesced
	.globl	__ZTSPFvPvE             ## @_ZTSPFvPvE
	.weak_definition	__ZTSPFvPvE
__ZTSPFvPvE:
	.asciz	"PFvPvE"


.subsections_via_symbols
