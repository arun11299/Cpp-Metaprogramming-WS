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
Ltmp13:
	.cfi_def_cfa_offset 16
Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp15:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Ltmp16:
	.cfi_offset %rbx, -56
Ltmp17:
	.cfi_offset %r12, -48
Ltmp18:
	.cfi_offset %r13, -40
Ltmp19:
	.cfi_offset %r14, -32
Ltmp20:
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %r12
	movq	(%r12), %r12
	movq	%r12, -48(%rbp)
	leaq	-96(%rbp), %r15
	movq	%r15, -64(%rbp)
	movq	__ZTVNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, -96(%rbp)
	leaq	__Z12fun_functioni(%rip), %rax
	movq	%rax, -88(%rbp)
	movl	$0, -108(%rbp)
	xorl	%ebx, %ebx
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movq	%rax, %r14
	leaq	-104(%rbp), %r13
	.align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-108(%rbp), %eax
	movl	%eax, -104(%rbp)
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB1_2
LBB1_3:                                 ##   in Loop: Header=BB1_1 Depth=1
	movq	(%rdi), %rax
	movq	48(%rax), %rax
Ltmp3:
	movq	%r13, %rsi
	callq	*%rax
Ltmp4:
## BB#4:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	%eax, -108(%rbp)
	incl	%ebx
	cmpl	$10000000, %ebx         ## imm = 0x989680
	jl	LBB1_1
	jmp	LBB1_5
LBB1_2:                                 ##   in Loop: Header=BB1_1 Depth=1
	movl	$8, %edi
	callq	___cxa_allocate_exception
	movq	__ZTVNSt3__117bad_function_callE@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, (%rax)
Ltmp10:
	movq	__ZTINSt3__117bad_function_callE@GOTPCREL(%rip), %rsi
	movq	__ZNSt3__117bad_function_callD1Ev@GOTPCREL(%rip), %rdx
	movq	%rax, %rdi
	callq	___cxa_throw
Ltmp11:
	jmp	LBB1_3
LBB1_5:
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
## BB#6:
	movb	$10, -97(%rbp)
Ltmp8:
	leaq	-97(%rbp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp9:
## BB#7:
	movq	-64(%rbp), %rdi
	cmpq	%r15, %rdi
	je	LBB1_8
## BB#16:
	testq	%rdi, %rdi
	je	LBB1_18
## BB#17:
	movq	(%rdi), %rax
	callq	*40(%rax)
	jmp	LBB1_18
LBB1_8:
	movq	(%rdi), %rax
	callq	*32(%rax)
LBB1_18:                                ## %_ZNSt3__18functionIFViiEED1Ev.exit
	cmpq	-48(%rbp), %r12
	jne	LBB1_20
## BB#19:                               ## %_ZNSt3__18functionIFViiEED1Ev.exit
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB1_9:                                 ## %.loopexit
Ltmp5:
	jmp	LBB1_11
LBB1_10:                                ## %.loopexit.split-lp
Ltmp12:
LBB1_11:
	movq	%rax, %rbx
	movq	-64(%rbp), %rdi
	cmpq	%r15, %rdi
	jne	LBB1_13
## BB#12:
	movq	-96(%rbp), %rax
	leaq	-96(%rbp), %rdi
	callq	*32(%rax)
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB1_13:
	testq	%rdi, %rdi
	je	LBB1_15
## BB#14:
	movq	(%rdi), %rax
	callq	*40(%rax)
LBB1_15:                                ## %_ZNSt3__18functionIFViiEED1Ev.exit2
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB1_20:                                ## %_ZNSt3__18functionIFViiEED1Ev.exit
	callq	___stack_chk_fail
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
Lset0 = Ltmp3-Lfunc_begin1              ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp4-Ltmp3                     ##   Call between Ltmp3 and Ltmp4
	.long	Lset1
Lset2 = Ltmp5-Lfunc_begin1              ##     jumps to Ltmp5
	.long	Lset2
	.byte	0                       ##   On action: cleanup
Lset3 = Ltmp4-Lfunc_begin1              ## >> Call Site 2 <<
	.long	Lset3
Lset4 = Ltmp10-Ltmp4                    ##   Call between Ltmp4 and Ltmp10
	.long	Lset4
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset5 = Ltmp10-Lfunc_begin1             ## >> Call Site 3 <<
	.long	Lset5
Lset6 = Ltmp9-Ltmp10                    ##   Call between Ltmp10 and Ltmp9
	.long	Lset6
Lset7 = Ltmp12-Lfunc_begin1             ##     jumps to Ltmp12
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
	.globl	__ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_ED1Ev
	.weak_def_can_be_hidden	__ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_ED1Ev
	.align	4, 0x90
__ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_ED1Ev: ## @_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_ED1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp21:
	.cfi_def_cfa_offset 16
Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp23:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_ED0Ev
	.weak_def_can_be_hidden	__ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_ED0Ev
	.align	4, 0x90
__ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_ED0Ev: ## @_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_ED0Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp24:
	.cfi_def_cfa_offset 16
Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp26:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
	.cfi_endproc

	.globl	__ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEv
	.weak_def_can_be_hidden	__ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEv
	.align	4, 0x90
__ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEv: ## @_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEv
	.cfi_startproc
## BB#0:                                ## %_ZNSt3__110unique_ptrINS_10__function6__funcIPFViiENS_9allocatorIS5_EES4_EENS_22__allocator_destructorINS6_IS8_EEEEED1Ev.exit
	pushq	%rbp
Ltmp27:
	.cfi_def_cfa_offset 16
Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp29:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Ltmp30:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movl	$16, %edi
	callq	__Znwm
	movq	__ZTVNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, (%rax)
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEPNS0_6__baseIS3_EE
	.weak_def_can_be_hidden	__ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEPNS0_6__baseIS3_EE
	.align	4, 0x90
__ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEPNS0_6__baseIS3_EE: ## @_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEPNS0_6__baseIS3_EE
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp31:
	.cfi_def_cfa_offset 16
Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp33:
	.cfi_def_cfa_register %rbp
	movq	__ZTVNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rsi)
	movq	8(%rdi), %rax
	movq	%rax, 8(%rsi)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7destroyEv
	.weak_def_can_be_hidden	__ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7destroyEv
	.align	4, 0x90
__ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7destroyEv: ## @_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7destroyEv
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
	retq
	.cfi_endproc

	.globl	__ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E18destroy_deallocateEv
	.weak_def_can_be_hidden	__ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E18destroy_deallocateEv
	.align	4, 0x90
__ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E18destroy_deallocateEv: ## @_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E18destroy_deallocateEv
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
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
	.cfi_endproc

	.globl	__ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EclEOi
	.weak_def_can_be_hidden	__ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EclEOi
	.align	4, 0x90
__ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EclEOi: ## @_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EclEOi
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
	movq	%rdi, %rax
	movl	(%rsi), %edi
	popq	%rbp
	jmpq	*8(%rax)                ## TAILCALL
	.cfi_endproc

	.globl	__ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E6targetERKSt9type_info
	.weak_def_can_be_hidden	__ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E6targetERKSt9type_info
	.align	4, 0x90
__ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E6targetERKSt9type_info: ## @_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E6targetERKSt9type_info
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
	movq	8(%rsi), %rcx
	xorl	%eax, %eax
	cmpq	__ZTSPFViiE@GOTPCREL(%rip), %rcx
	jne	LBB9_2
## BB#1:
	addq	$8, %rdi
	movq	%rdi, %rax
LBB9_2:
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E11target_typeEv
	.weak_def_can_be_hidden	__ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E11target_typeEv
	.align	4, 0x90
__ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E11target_typeEv: ## @_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E11target_typeEv
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
	movq	__ZTIPFViiE@GOTPCREL(%rip), %rax
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

	.globl	__ZNSt3__117bad_function_callD1Ev
	.weak_def_can_be_hidden	__ZNSt3__117bad_function_callD1Ev
	.align	4, 0x90
__ZNSt3__117bad_function_callD1Ev:      ## @_ZNSt3__117bad_function_callD1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp49:
	.cfi_def_cfa_offset 16
Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp51:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	__ZNSt9exceptionD2Ev    ## TAILCALL
	.cfi_endproc

	.globl	__ZNSt3__117bad_function_callD0Ev
	.weak_def_can_be_hidden	__ZNSt3__117bad_function_callD0Ev
	.align	4, 0x90
__ZNSt3__117bad_function_callD0Ev:      ## @_ZNSt3__117bad_function_callD0Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp52:
	.cfi_def_cfa_offset 16
Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp54:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Ltmp55:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
                                        ## kill: RDI<def> RBX<kill>
	callq	__ZNSt9exceptionD2Ev
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
	.cfi_endproc

	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.align	4, 0x90
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception14
## BB#0:
	pushq	%rbp
Ltmp77:
	.cfi_def_cfa_offset 16
Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp79:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Ltmp80:
	.cfi_offset %rbx, -56
Ltmp81:
	.cfi_offset %r12, -48
Ltmp82:
	.cfi_offset %r13, -40
Ltmp83:
	.cfi_offset %r14, -32
Ltmp84:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
Ltmp56:
	leaq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp57:
## BB#1:
	cmpb	$0, -64(%rbp)
	je	LBB14_12
## BB#2:
	movq	(%rbx), %rax
	movq	-24(%rax), %r12
	movq	40(%r12,%rbx), %rdi
	movl	$176, %eax
	andl	8(%r12,%rbx), %eax
	cmpl	$32, %eax
	movq	%r15, %r13
	jne	LBB14_4
## BB#3:
	leaq	(%r15,%r14), %r13
LBB14_4:
	leaq	(%rbx,%r12), %r8
	movl	144(%rbx,%r12), %eax
	cmpl	$-1, %eax
	jne	LBB14_9
## BB#5:
Ltmp59:
	movq	%rdi, -72(%rbp)         ## 8-byte Spill
	leaq	-48(%rbp), %rdi
	movq	%r8, %rsi
	movq	%r8, -80(%rbp)          ## 8-byte Spill
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp60:
## BB#6:                                ## %.noexc
Ltmp61:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-48(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp62:
## BB#7:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp63:
	movl	$32, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, -81(%rbp)          ## 1-byte Spill
Ltmp64:
## BB#8:                                ## %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	-81(%rbp), %eax         ## 1-byte Folded Reload
	movl	%eax, 144(%rbx,%r12)
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	movq	-80(%rbp), %r8          ## 8-byte Reload
LBB14_9:
	addq	%r15, %r14
Ltmp66:
	movsbl	%al, %r9d
	movq	%r15, %rsi
	movq	%r13, %rdx
	movq	%r14, %rcx
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp67:
## BB#10:
	testq	%rax, %rax
	jne	LBB14_12
## BB#11:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$5, %esi
Ltmp68:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp69:
LBB14_12:                               ## %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj.exit
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB14_17:
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB14_13:
Ltmp70:
	movq	%rax, %r14
	jmp	LBB14_14
LBB14_22:
Ltmp58:
	movq	%rax, %r14
	jmp	LBB14_15
LBB14_21:
Ltmp65:
	movq	%rax, %r14
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
LBB14_14:                               ## %.body
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB14_15:
	movq	%rbx, %r15
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	movq	(%rbx), %rax
	addq	-24(%rax), %r15
Ltmp71:
	movq	%r15, %rdi
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp72:
## BB#16:
	callq	___cxa_end_catch
	jmp	LBB14_17
LBB14_18:
Ltmp73:
	movq	%rax, %rbx
Ltmp74:
	callq	___cxa_end_catch
Ltmp75:
## BB#19:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB14_20:
Ltmp76:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end14:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table14:
Lexception14:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	125                     ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	117                     ## Call site table length
Lset10 = Ltmp56-Lfunc_begin14           ## >> Call Site 1 <<
	.long	Lset10
Lset11 = Ltmp57-Ltmp56                  ##   Call between Ltmp56 and Ltmp57
	.long	Lset11
Lset12 = Ltmp58-Lfunc_begin14           ##     jumps to Ltmp58
	.long	Lset12
	.byte	1                       ##   On action: 1
Lset13 = Ltmp59-Lfunc_begin14           ## >> Call Site 2 <<
	.long	Lset13
Lset14 = Ltmp60-Ltmp59                  ##   Call between Ltmp59 and Ltmp60
	.long	Lset14
Lset15 = Ltmp70-Lfunc_begin14           ##     jumps to Ltmp70
	.long	Lset15
	.byte	1                       ##   On action: 1
Lset16 = Ltmp61-Lfunc_begin14           ## >> Call Site 3 <<
	.long	Lset16
Lset17 = Ltmp64-Ltmp61                  ##   Call between Ltmp61 and Ltmp64
	.long	Lset17
Lset18 = Ltmp65-Lfunc_begin14           ##     jumps to Ltmp65
	.long	Lset18
	.byte	1                       ##   On action: 1
Lset19 = Ltmp66-Lfunc_begin14           ## >> Call Site 4 <<
	.long	Lset19
Lset20 = Ltmp69-Ltmp66                  ##   Call between Ltmp66 and Ltmp69
	.long	Lset20
Lset21 = Ltmp70-Lfunc_begin14           ##     jumps to Ltmp70
	.long	Lset21
	.byte	1                       ##   On action: 1
Lset22 = Ltmp69-Lfunc_begin14           ## >> Call Site 5 <<
	.long	Lset22
Lset23 = Ltmp71-Ltmp69                  ##   Call between Ltmp69 and Ltmp71
	.long	Lset23
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset24 = Ltmp71-Lfunc_begin14           ## >> Call Site 6 <<
	.long	Lset24
Lset25 = Ltmp72-Ltmp71                  ##   Call between Ltmp71 and Ltmp72
	.long	Lset25
Lset26 = Ltmp73-Lfunc_begin14           ##     jumps to Ltmp73
	.long	Lset26
	.byte	0                       ##   On action: cleanup
Lset27 = Ltmp72-Lfunc_begin14           ## >> Call Site 7 <<
	.long	Lset27
Lset28 = Ltmp74-Ltmp72                  ##   Call between Ltmp72 and Ltmp74
	.long	Lset28
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset29 = Ltmp74-Lfunc_begin14           ## >> Call Site 8 <<
	.long	Lset29
Lset30 = Ltmp75-Ltmp74                  ##   Call between Ltmp74 and Ltmp75
	.long	Lset30
Lset31 = Ltmp76-Lfunc_begin14           ##     jumps to Ltmp76
	.long	Lset31
	.byte	1                       ##   On action: 1
Lset32 = Ltmp75-Lfunc_begin14           ## >> Call Site 9 <<
	.long	Lset32
Lset33 = Lfunc_end14-Ltmp75             ##   Call between Ltmp75 and Lfunc_end14
	.long	Lset33
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
Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception15
## BB#0:
	pushq	%rbp
Ltmp88:
	.cfi_def_cfa_offset 16
Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp90:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp91:
	.cfi_offset %rbx, -56
Ltmp92:
	.cfi_offset %r12, -48
Ltmp93:
	.cfi_offset %r13, -40
Ltmp94:
	.cfi_offset %r14, -32
Ltmp95:
	.cfi_offset %r15, -24
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rdi, %r13
	xorl	%eax, %eax
	testq	%r13, %r13
	je	LBB15_12
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
	jle	LBB15_3
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
	jne	LBB15_12
LBB15_3:
	testq	%r15, %r15
	jle	LBB15_9
## BB#4:
	movq	%r8, -72(%rbp)          ## 8-byte Spill
	movsbl	%r9b, %edx
	leaq	-64(%rbp), %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	testb	$1, -64(%rbp)
	jne	LBB15_5
## BB#6:
	movq	%r14, %r12
	leaq	-63(%rbp), %rsi
	jmp	LBB15_7
LBB15_5:
	movq	%r14, %r12
	movq	-48(%rbp), %rsi
LBB15_7:                                ## %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit
	movq	(%r13), %rax
	movq	96(%rax), %rax
Ltmp85:
	movq	%r13, %rdi
	movq	%r15, %rdx
	callq	*%rax
	movq	%rax, %r14
Ltmp86:
## BB#8:                                ## %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl.exit
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	xorl	%eax, %eax
	cmpq	%r15, %r14
	cmovneq	%rax, %r13
	movq	-72(%rbp), %r8          ## 8-byte Reload
	movq	%r12, %r14
	jne	LBB15_12
LBB15_9:
	subq	%rbx, %r14
	testq	%r14, %r14
	jle	LBB15_11
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
	jne	LBB15_12
LBB15_11:
	movq	$0, 24(%r8)
	movq	%r13, %rax
LBB15_12:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB15_13:
Ltmp87:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
Lfunc_end15:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table15:
Lexception15:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset34 = Lfunc_begin15-Lfunc_begin15    ## >> Call Site 1 <<
	.long	Lset34
Lset35 = Ltmp85-Lfunc_begin15           ##   Call between Lfunc_begin15 and Ltmp85
	.long	Lset35
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset36 = Ltmp85-Lfunc_begin15           ## >> Call Site 2 <<
	.long	Lset36
Lset37 = Ltmp86-Ltmp85                  ##   Call between Ltmp85 and Ltmp86
	.long	Lset37
Lset38 = Ltmp87-Lfunc_begin15           ##     jumps to Ltmp87
	.long	Lset38
	.byte	0                       ##   On action: cleanup
Lset39 = Ltmp86-Lfunc_begin15           ## >> Call Site 3 <<
	.long	Lset39
Lset40 = Lfunc_end15-Ltmp86             ##   Call between Ltmp86 and Lfunc_end15
	.long	Lset40
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.align	2

	.section	__DATA,__datacoal_nt,coalesced
	.globl	__ZTVNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE ## @_ZTVNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE
	.weak_def_can_be_hidden	__ZTVNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE
	.align	3
__ZTVNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE:
	.quad	0
	.quad	__ZTINSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE
	.quad	__ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_ED1Ev
	.quad	__ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_ED0Ev
	.quad	__ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEv
	.quad	__ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEPNS0_6__baseIS3_EE
	.quad	__ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7destroyEv
	.quad	__ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E18destroy_deallocateEv
	.quad	__ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EclEOi
	.quad	__ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E6targetERKSt9type_info
	.quad	__ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E11target_typeEv

	.section	__TEXT,__const_coal,coalesced
	.globl	__ZTSNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE ## @_ZTSNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE
	.weak_definition	__ZTSNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE
	.align	4
__ZTSNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE:
	.asciz	"NSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE"

	.globl	__ZTSNSt3__110__function6__baseIFViiEEE ## @_ZTSNSt3__110__function6__baseIFViiEEE
	.weak_definition	__ZTSNSt3__110__function6__baseIFViiEEE
	.align	4
__ZTSNSt3__110__function6__baseIFViiEEE:
	.asciz	"NSt3__110__function6__baseIFViiEEE"

	.section	__DATA,__datacoal_nt,coalesced
	.globl	__ZTINSt3__110__function6__baseIFViiEEE ## @_ZTINSt3__110__function6__baseIFViiEEE
	.weak_definition	__ZTINSt3__110__function6__baseIFViiEEE
	.align	3
__ZTINSt3__110__function6__baseIFViiEEE:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTSNSt3__110__function6__baseIFViiEEE

	.globl	__ZTINSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE ## @_ZTINSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE
	.weak_definition	__ZTINSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE
	.align	4
__ZTINSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE
	.quad	__ZTINSt3__110__function6__baseIFViiEEE

	.section	__TEXT,__const_coal,coalesced
	.globl	__ZTSPFViiE             ## @_ZTSPFViiE
	.weak_definition	__ZTSPFViiE
__ZTSPFViiE:
	.asciz	"PFViiE"

	.globl	__ZTSFViiE              ## @_ZTSFViiE
	.weak_definition	__ZTSFViiE
__ZTSFViiE:
	.asciz	"FViiE"

	.section	__DATA,__datacoal_nt,coalesced
	.globl	__ZTIFViiE              ## @_ZTIFViiE
	.weak_definition	__ZTIFViiE
	.align	3
__ZTIFViiE:
	.quad	__ZTVN10__cxxabiv120__function_type_infoE+16
	.quad	__ZTSFViiE

	.globl	__ZTIPFViiE             ## @_ZTIPFViiE
	.weak_definition	__ZTIPFViiE
	.align	4
__ZTIPFViiE:
	.quad	__ZTVN10__cxxabiv119__pointer_type_infoE+16
	.quad	__ZTSPFViiE
	.long	0                       ## 0x0
	.space	4
	.quad	__ZTIFViiE

	.section	__TEXT,__const_coal,coalesced
	.globl	__ZTSNSt3__117bad_function_callE ## @_ZTSNSt3__117bad_function_callE
	.weak_definition	__ZTSNSt3__117bad_function_callE
	.align	4
__ZTSNSt3__117bad_function_callE:
	.asciz	"NSt3__117bad_function_callE"

	.section	__DATA,__datacoal_nt,coalesced
	.globl	__ZTINSt3__117bad_function_callE ## @_ZTINSt3__117bad_function_callE
	.weak_definition	__ZTINSt3__117bad_function_callE
	.align	4
__ZTINSt3__117bad_function_callE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__117bad_function_callE
	.quad	__ZTISt9exception

	.globl	__ZTVNSt3__117bad_function_callE ## @_ZTVNSt3__117bad_function_callE
	.weak_def_can_be_hidden	__ZTVNSt3__117bad_function_callE
	.align	3
__ZTVNSt3__117bad_function_callE:
	.quad	0
	.quad	__ZTINSt3__117bad_function_callE
	.quad	__ZNSt3__117bad_function_callD1Ev
	.quad	__ZNSt3__117bad_function_callD0Ev
	.quad	__ZNKSt9exception4whatEv


.subsections_via_symbols
