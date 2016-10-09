	.text
	.file	"../bench_f_vf.cc"
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

	.align	16, 0x90
	.type	_ZL21BM_std_function_basicRN9benchmark5StateE,@function
_ZL21BM_std_function_basicRN9benchmark5StateE: # @_ZL21BM_std_function_basicRN9benchmark5StateE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# BB#0:
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 32
	subq	$80, %rsp
.Ltmp13:
	.cfi_def_cfa_offset 112
.Ltmp14:
	.cfi_offset %rbx, -32
.Ltmp15:
	.cfi_offset %r14, -24
.Ltmp16:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	leaq	16(%rsp), %r15
	movq	%r15, 48(%rsp)
	movq	$_ZTVNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE+16, 16(%rsp)
	movq	$_Z12fun_functioni, 24(%rsp)
	movl	$0, 12(%rsp)
	leaq	76(%rsp), %r14
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_10:                               #   in Loop: Header=BB1_1 Depth=1
	movl	%eax, 12(%rsp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB1_2
.LBB1_3:                                # %.noexc
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	8(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rbx)
	cmpq	72(%rbx), %rax
	jae	.LBB1_4
# BB#7:                                 #   in Loop: Header=BB1_1 Depth=1
	movl	12(%rsp), %eax
	movl	%eax, 76(%rsp)
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB1_8
.LBB1_9:                                #   in Loop: Header=BB1_1 Depth=1
	movq	(%rdi), %rax
	movq	48(%rax), %rax
.Ltmp4:
	movq	%r14, %rsi
	callq	*%rax
.Ltmp5:
	jmp	.LBB1_10
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp0:
	movq	%rbx, %rdi
	callq	_ZN9benchmark5State16StartKeepRunningEv
.Ltmp1:
	jmp	.LBB1_3
.LBB1_8:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$8, %edi
	callq	__cxa_allocate_exception
	movq	$_ZTVNSt3__117bad_function_callE+16, (%rax)
.Ltmp7:
	movl	$_ZTINSt3__117bad_function_callE, %esi
	movl	$_ZNSt9exceptionD2Ev, %edx
	movq	%rax, %rdi
	callq	__cxa_throw
.Ltmp8:
	jmp	.LBB1_9
.LBB1_4:
.Ltmp2:
	movq	%rbx, %rdi
	callq	_ZN9benchmark5State17FinishKeepRunningEv
.Ltmp3:
# BB#5:
	movq	48(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB1_6
# BB#18:
	testq	%rdi, %rdi
	je	.LBB1_20
# BB#19:
	movq	(%rdi), %rax
	callq	*40(%rax)
	jmp	.LBB1_20
.LBB1_6:
	movq	(%rdi), %rax
	callq	*32(%rax)
.LBB1_20:                               # %_ZNSt3__18functionIFViiEED2Ev.exit
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB1_11:                               # %.loopexit
.Ltmp6:
.LBB1_13:
	movq	%rax, %rbx
	movq	48(%rsp), %rdi
	cmpq	%r15, %rdi
	jne	.LBB1_15
# BB#14:
	movq	16(%rsp), %rax
	leaq	16(%rsp), %rdi
	callq	*32(%rax)
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.LBB1_15:
	testq	%rdi, %rdi
	je	.LBB1_17
# BB#16:
	movq	(%rdi), %rax
	callq	*40(%rax)
.LBB1_17:                               # %_ZNSt3__18functionIFViiEED2Ev.exit4
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.LBB1_12:                               # %.loopexit.split-lp
.Ltmp9:
	jmp	.LBB1_13
.Lfunc_end1:
	.size	_ZL21BM_std_function_basicRN9benchmark5StateE, .Lfunc_end1-_ZL21BM_std_function_basicRN9benchmark5StateE
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
	.long	.Ltmp4-.Lfunc_begin0    # >> Call Site 1 <<
	.long	.Ltmp1-.Ltmp4           #   Call between .Ltmp4 and .Ltmp1
	.long	.Ltmp6-.Lfunc_begin0    #     jumps to .Ltmp6
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1-.Lfunc_begin0    # >> Call Site 2 <<
	.long	.Ltmp7-.Ltmp1           #   Call between .Ltmp1 and .Ltmp7
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp7-.Lfunc_begin0    # >> Call Site 3 <<
	.long	.Ltmp3-.Ltmp7           #   Call between .Ltmp7 and .Ltmp3
	.long	.Ltmp9-.Lfunc_begin0    #     jumps to .Ltmp9
	.byte	0                       #   On action: cleanup
	.long	.Ltmp3-.Lfunc_begin0    # >> Call Site 4 <<
	.long	.Lfunc_end1-.Ltmp3      #   Call between .Ltmp3 and .Lfunc_end1
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_0:
	.zero	16
	.text
	.align	16, 0x90
	.type	_ZL21BM_std_function_heavyRN9benchmark5StateE,@function
_ZL21BM_std_function_heavyRN9benchmark5StateE: # @_ZL21BM_std_function_heavyRN9benchmark5StateE
	.cfi_startproc
# BB#0:
	pushq	%r15
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp20:
	.cfi_def_cfa_offset 80
.Ltmp21:
	.cfi_offset %rbx, -32
.Ltmp22:
	.cfi_offset %r14, -24
.Ltmp23:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movabsq	$8382154847883714899, %r15 # imm = 0x7453656C706D6153
	leaq	(%rsp), %r14
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_7:                                #   in Loop: Header=BB2_1 Depth=1
	movq	(%rdi), %rax
	callq	*40(%rax)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB2_2
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	movq	8(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rbx)
	cmpq	72(%rbx), %rax
	jae	.LBB2_8
# BB#4:                                 #   in Loop: Header=BB2_1 Depth=1
	movl	$40, %edi
	callq	_Znwm
	movq	$_ZTVNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE+16, (%rax)
	movq	%rax, 32(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 20(%rax)
	movl	$0, 36(%rax)
	movq	%r15, 8(%rax)
	movl	$1735289202, 16(%rax)   # imm = 0x676E6972
	#APP
	#NO_APP
	movq	32(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB2_5
# BB#6:                                 #   in Loop: Header=BB2_1 Depth=1
	testq	%rdi, %rdi
	jne	.LBB2_7
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	movq	(%rsp), %rax
	movq	%r14, %rdi
	callq	*32(%rax)
	jmp	.LBB2_1
.LBB2_2:                                #   in Loop: Header=BB2_1 Depth=1
	movq	%rbx, %rdi
	callq	_ZN9benchmark5State16StartKeepRunningEv
	jmp	.LBB2_3
.LBB2_8:
	movq	%rbx, %rdi
	callq	_ZN9benchmark5State17FinishKeepRunningEv
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	_ZL21BM_std_function_heavyRN9benchmark5StateE, .Lfunc_end2-_ZL21BM_std_function_heavyRN9benchmark5StateE
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL23BM_std_function_poly_cbRN9benchmark5StateE,@function
_ZL23BM_std_function_poly_cbRN9benchmark5StateE: # @_ZL23BM_std_function_poly_cbRN9benchmark5StateE
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# BB#0:
	pushq	%r15
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp32:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 40
	subq	$120, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 160
.Ltmp35:
	.cfi_offset %rbx, -40
.Ltmp36:
	.cfi_offset %r12, -32
.Ltmp37:
	.cfi_offset %r14, -24
.Ltmp38:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movl	$0, (%rsp)
	leaq	16(%rsp), %r14
	movq	$0, 48(%rsp)
	leaq	64(%rsp), %r15
	leaq	(%rsp), %r12
	jmp	.LBB3_1
	.align	16, 0x90
.LBB3_10:                               #   in Loop: Header=BB3_1 Depth=1
	movq	(%rdi), %rax
	callq	*40(%rax)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB3_2
.LBB3_3:                                # %.noexc
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	8(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rbx)
	cmpq	72(%rbx), %rax
	jae	.LBB3_4
# BB#7:                                 #   in Loop: Header=BB3_1 Depth=1
	movq	%r15, 96(%rsp)
	movq	$_ZTVNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEEE+16, 64(%rsp)
	movq	%r12, 72(%rsp)
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_ZNSt3__18functionIFvP6ObjectEE4swapERS4_
	movq	96(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB3_8
# BB#9:                                 #   in Loop: Header=BB3_1 Depth=1
	testq	%rdi, %rdi
	jne	.LBB3_10
	jmp	.LBB3_1
	.align	16, 0x90
.LBB3_8:                                #   in Loop: Header=BB3_1 Depth=1
	movq	64(%rsp), %rax
	movq	%r15, %rdi
	callq	*32(%rax)
	jmp	.LBB3_1
.LBB3_2:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp24:
	movq	%rbx, %rdi
	callq	_ZN9benchmark5State16StartKeepRunningEv
.Ltmp25:
	jmp	.LBB3_3
.LBB3_11:                               # %.loopexit
.Ltmp26:
	jmp	.LBB3_13
.LBB3_4:
.Ltmp27:
	movq	%rbx, %rdi
	callq	_ZN9benchmark5State17FinishKeepRunningEv
.Ltmp28:
# BB#5:
	movq	48(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB3_6
# BB#18:
	testq	%rdi, %rdi
	je	.LBB3_20
# BB#19:
	movq	(%rdi), %rax
	callq	*40(%rax)
	jmp	.LBB3_20
.LBB3_6:
	movq	16(%rsp), %rax
	movq	%r14, %rdi
	callq	*32(%rax)
.LBB3_20:                               # %_ZN9SF_ButtonD2Ev.exit
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB3_12:                               # %.loopexit.split-lp
.Ltmp29:
.LBB3_13:
	movq	%rax, %rbx
	movq	48(%rsp), %rdi
	cmpq	%r14, %rdi
	jne	.LBB3_15
# BB#14:
	movq	(%rdi), %rax
	callq	*32(%rax)
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.LBB3_15:
	testq	%rdi, %rdi
	je	.LBB3_17
# BB#16:
	movq	(%rdi), %rax
	callq	*40(%rax)
.LBB3_17:                               # %_ZN9SF_ButtonD2Ev.exit2
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.Lfunc_end3:
	.size	_ZL23BM_std_function_poly_cbRN9benchmark5StateE, .Lfunc_end3-_ZL23BM_std_function_poly_cbRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table3:
.Lexception1:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\266\200\200"          # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	52                      # Call site table length
	.long	.Lfunc_begin1-.Lfunc_begin1 # >> Call Site 1 <<
	.long	.Ltmp24-.Lfunc_begin1   #   Call between .Lfunc_begin1 and .Ltmp24
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp24-.Lfunc_begin1   # >> Call Site 2 <<
	.long	.Ltmp25-.Ltmp24         #   Call between .Ltmp24 and .Ltmp25
	.long	.Ltmp26-.Lfunc_begin1   #     jumps to .Ltmp26
	.byte	0                       #   On action: cleanup
	.long	.Ltmp27-.Lfunc_begin1   # >> Call Site 3 <<
	.long	.Ltmp28-.Ltmp27         #   Call between .Ltmp27 and .Ltmp28
	.long	.Ltmp29-.Lfunc_begin1   #     jumps to .Ltmp29
	.byte	0                       #   On action: cleanup
	.long	.Ltmp28-.Lfunc_begin1   # >> Call Site 4 <<
	.long	.Lfunc_end3-.Ltmp28     #   Call between .Ltmp28 and .Lfunc_end3
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.text
	.align	16, 0x90
	.type	_ZL25BM_virtual_function_basicRN9benchmark5StateE,@function
_ZL25BM_virtual_function_basicRN9benchmark5StateE: # @_ZL25BM_virtual_function_basicRN9benchmark5StateE
	.cfi_startproc
# BB#0:
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp41:
	.cfi_def_cfa_offset 48
.Ltmp42:
	.cfi_offset %rbx, -24
.Ltmp43:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	$_ZTV7Derived+16, 16(%rsp)
	movq	$_ZTV5Dummy+16, 8(%rsp)
	movq	16(%rbx), %rax
	cmpq	%rax, 24(%rbx)
	je	.LBB4_10
# BB#1:                                 # %_ZNK9benchmark5State5rangeEm.exit
	cmpl	$48, (%rax)
	jne	.LBB4_3
# BB#2:
	leaq	16(%rsp), %r14
	jmp	.LBB4_4
.LBB4_3:                                # %select.false
	leaq	8(%rsp), %r14
.LBB4_4:                                # %select.end
	movl	$0, 4(%rsp)
	jmp	.LBB4_5
	.align	16, 0x90
.LBB4_8:                                #   in Loop: Header=BB4_5 Depth=1
	movq	(%r14), %rax
	movq	(%rax), %rax
	movl	4(%rsp), %esi
	movq	%r14, %rdi
	callq	*%rax
	movl	%eax, 4(%rsp)
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB4_6
.LBB4_7:                                #   in Loop: Header=BB4_5 Depth=1
	movq	8(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rbx)
	cmpq	72(%rbx), %rax
	jb	.LBB4_8
	jmp	.LBB4_9
.LBB4_6:                                #   in Loop: Header=BB4_5 Depth=1
	movq	%rbx, %rdi
	callq	_ZN9benchmark5State16StartKeepRunningEv
	jmp	.LBB4_7
.LBB4_9:
	movq	%rbx, %rdi
	callq	_ZN9benchmark5State17FinishKeepRunningEv
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB4_10:
	movl	$.L.str.15, %edi
	movl	$.L.str.16, %esi
	movl	$433, %edx              # imm = 0x1B1
	movl	$.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm, %ecx
	callq	__assert_fail
.Lfunc_end4:
	.size	_ZL25BM_virtual_function_basicRN9benchmark5StateE, .Lfunc_end4-_ZL25BM_virtual_function_basicRN9benchmark5StateE
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL26BM_imp_fast_delegate_basicRN9benchmark5StateE,@function
_ZL26BM_imp_fast_delegate_basicRN9benchmark5StateE: # @_ZL26BM_imp_fast_delegate_basicRN9benchmark5StateE
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception2
# BB#0:
	pushq	%r15
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp54:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 40
	subq	$72, %rsp
.Ltmp56:
	.cfi_def_cfa_offset 112
.Ltmp57:
	.cfi_offset %rbx, -40
.Ltmp58:
	.cfi_offset %r12, -32
.Ltmp59:
	.cfi_offset %r14, -24
.Ltmp60:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	leaq	16(%rsp), %rdi
	movl	$_Z12fun_functioni, %esi
	callq	_ZN8delegateIFViiEEC2IRS1_vEEOT_
	movl	$0, 12(%rsp)
	movq	16(%rsp), %r14
	movq	24(%rsp), %r12
	leaq	68(%rsp), %r15
	jmp	.LBB5_1
	.align	16, 0x90
.LBB5_9:                                #   in Loop: Header=BB5_1 Depth=1
	movl	%eax, 12(%rsp)
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB5_2
.LBB5_3:                                # %.noexc
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	8(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rbx)
	cmpq	72(%rbx), %rax
	jae	.LBB5_4
# BB#8:                                 #   in Loop: Header=BB5_1 Depth=1
	movl	12(%rsp), %eax
	movl	%eax, 68(%rsp)
.Ltmp49:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*%r12
.Ltmp50:
	jmp	.LBB5_9
.LBB5_2:                                #   in Loop: Header=BB5_1 Depth=1
.Ltmp44:
	movq	%rbx, %rdi
	callq	_ZN9benchmark5State16StartKeepRunningEv
.Ltmp45:
	jmp	.LBB5_3
.LBB5_10:                               # %.loopexit
.Ltmp51:
.LBB5_12:
	movq	%rax, %rbx
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_14
# BB#13:
	callq	_ZNSt3__119__shared_weak_count16__release_sharedEv
.LBB5_14:                               # %_ZN8delegateIFViiEED2Ev.exit
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.LBB5_4:
.Ltmp46:
	movq	%rbx, %rdi
	callq	_ZN9benchmark5State17FinishKeepRunningEv
.Ltmp47:
# BB#5:
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_7
# BB#6:
	callq	_ZNSt3__119__shared_weak_count16__release_sharedEv
.LBB5_7:                                # %_ZN8delegateIFViiEED2Ev.exit3
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB5_11:                               # %.loopexit.split-lp
.Ltmp48:
	jmp	.LBB5_12
.Lfunc_end5:
	.size	_ZL26BM_imp_fast_delegate_basicRN9benchmark5StateE, .Lfunc_end5-_ZL26BM_imp_fast_delegate_basicRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table5:
.Lexception2:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\266\200\200"          # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	52                      # Call site table length
	.long	.Lfunc_begin2-.Lfunc_begin2 # >> Call Site 1 <<
	.long	.Ltmp49-.Lfunc_begin2   #   Call between .Lfunc_begin2 and .Ltmp49
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp49-.Lfunc_begin2   # >> Call Site 2 <<
	.long	.Ltmp45-.Ltmp49         #   Call between .Ltmp49 and .Ltmp45
	.long	.Ltmp51-.Lfunc_begin2   #     jumps to .Ltmp51
	.byte	0                       #   On action: cleanup
	.long	.Ltmp45-.Lfunc_begin2   # >> Call Site 3 <<
	.long	.Ltmp46-.Ltmp45         #   Call between .Ltmp45 and .Ltmp46
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp46-.Lfunc_begin2   # >> Call Site 4 <<
	.long	.Ltmp47-.Ltmp46         #   Call between .Ltmp46 and .Ltmp47
	.long	.Ltmp48-.Lfunc_begin2   #     jumps to .Ltmp48
	.byte	0                       #   On action: cleanup
	.align	4

	.text
	.align	16, 0x90
	.type	_ZL26BM_imp_fast_delegate_heavyRN9benchmark5StateE,@function
_ZL26BM_imp_fast_delegate_heavyRN9benchmark5StateE: # @_ZL26BM_imp_fast_delegate_heavyRN9benchmark5StateE
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception3
# BB#0:
	pushq	%r15
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp66:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 40
	subq	$104, %rsp
.Ltmp68:
	.cfi_def_cfa_offset 144
.Ltmp69:
	.cfi_offset %rbx, -40
.Ltmp70:
	.cfi_offset %r12, -32
.Ltmp71:
	.cfi_offset %r14, -24
.Ltmp72:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	leaq	48(%rsp), %r14
	leaq	16(%rsp), %r15
	leaq	96(%rsp), %r12
	jmp	.LBB6_1
	.align	16, 0x90
.LBB6_6:                                #   in Loop: Header=BB6_1 Depth=1
	callq	_ZNSt3__119__shared_weak_count16__release_sharedEv
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB6_2
.LBB6_3:                                #   in Loop: Header=BB6_1 Depth=1
	movq	8(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rbx)
	cmpq	72(%rbx), %rax
	jae	.LBB6_10
# BB#4:                                 #   in Loop: Header=BB6_1 Depth=1
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_ZN8delegateIFbPKcEEC2I10BigFunctorvEEOT_
	movq	$.L.str.14, 96(%rsp)
	movq	48(%rsp), %rdi
	movq	56(%rsp), %rax
.Ltmp61:
	movq	%r12, %rsi
	callq	*%rax
.Ltmp62:
# BB#5:                                 #   in Loop: Header=BB6_1 Depth=1
	movb	%al, 15(%rsp)
	#APP
	#NO_APP
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB6_6
	jmp	.LBB6_1
.LBB6_2:                                #   in Loop: Header=BB6_1 Depth=1
	movq	%rbx, %rdi
	callq	_ZN9benchmark5State16StartKeepRunningEv
	jmp	.LBB6_3
.LBB6_10:
	movq	%rbx, %rdi
	callq	_ZN9benchmark5State17FinishKeepRunningEv
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB6_7:
.Ltmp63:
	movq	%rax, %rbx
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB6_9
# BB#8:
	callq	_ZNSt3__119__shared_weak_count16__release_sharedEv
.LBB6_9:                                # %_ZN8delegateIFbPKcEED2Ev.exit1
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.Lfunc_end6:
	.size	_ZL26BM_imp_fast_delegate_heavyRN9benchmark5StateE, .Lfunc_end6-_ZL26BM_imp_fast_delegate_heavyRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table6:
.Lexception3:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	41                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	39                      # Call site table length
	.long	.Lfunc_begin3-.Lfunc_begin3 # >> Call Site 1 <<
	.long	.Ltmp61-.Lfunc_begin3   #   Call between .Lfunc_begin3 and .Ltmp61
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp61-.Lfunc_begin3   # >> Call Site 2 <<
	.long	.Ltmp62-.Ltmp61         #   Call between .Ltmp61 and .Ltmp62
	.long	.Ltmp63-.Lfunc_begin3   #     jumps to .Ltmp63
	.byte	0                       #   On action: cleanup
	.long	.Ltmp62-.Lfunc_begin3   # >> Call Site 3 <<
	.long	.Lfunc_end6-.Ltmp62     #   Call between .Ltmp62 and .Lfunc_end6
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI7_0:
	.zero	16
	.text
	.align	16, 0x90
	.type	_ZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateE,@function
_ZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateE: # @_ZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateE
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception4
# BB#0:
	pushq	%r15
.Ltmp92:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp93:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp94:
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
.Ltmp95:
	.cfi_def_cfa_offset 96
.Ltmp96:
	.cfi_offset %rbx, -32
.Ltmp97:
	.cfi_offset %r14, -24
.Ltmp98:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movl	$0, 8(%rsp)
	movq	$0, 24(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 40(%rsp)
	leaq	8(%rsp), %r15
	jmp	.LBB7_1
	.align	16, 0x90
.LBB7_18:                               # %"_ZN9FD_Button11setCallbackIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEE3$_1EEvOT_.exit"
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	40(%rsp), %rax
	movq	%r15, (%rax)
	movq	40(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	$_ZN8delegateIFvP6ObjectEE12functor_stubIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEE3$_1EENSt3__19enable_ifIXntoocvNS3_14is_member_pairIT_EEilEcvNS3_20is_const_member_pairISC_EEilEEvE4typeEPvOS1_, 24(%rsp)
	movq	$_ZN8delegateIFvP6ObjectEE12deleter_stubIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEE3$_1EEvPv, 32(%rsp)
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%r14), %eax
	cmpl	$1, %eax
	jne	.LBB7_2
.LBB7_3:                                # %.noexc
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	8(%r14), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%r14)
	cmpq	72(%r14), %rax
	jae	.LBB7_4
# BB#8:                                 #   in Loop: Header=BB7_1 Depth=1
	cmpq	$8, 56(%rsp)
	jb	.LBB7_11
# BB#9:                                 #   in Loop: Header=BB7_1 Depth=1
	movq	48(%rsp), %rax
	testq	%rax, %rax
	je	.LBB7_11
# BB#10:                                # %_ZNKSt3__110shared_ptrIvE6uniqueEv.exit.i.i
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.LBB7_17
.LBB7_11:                               # %_ZNKSt3__110shared_ptrIvE6uniqueEv.exit.thread.i.i
                                        #   in Loop: Header=BB7_1 Depth=1
.Ltmp80:
	movl	$8, %edi
	callq	_Znwm
	movq	%rax, %rbx
.Ltmp81:
# BB#12:                                # %.noexc2
                                        #   in Loop: Header=BB7_1 Depth=1
.Ltmp83:
	movl	$40, %edi
	callq	_Znwm
.Ltmp84:
.LBB7_14:                               # %_ZNSt3__110shared_ptrIvEC2IvPFvPvEEEPT_T0_NS_9enable_ifIXsr14is_convertibleIS7_S3_EE5valueENS1_5__natEE4typeE.exit.i.i.i
                                        #   in Loop: Header=BB7_1 Depth=1
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rax)
	movq	$_ZTVNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE+16, (%rax)
	movq	%rbx, 24(%rax)
	movq	$_ZN8delegateIFvP6ObjectEE15functor_deleterIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEE3$_1EEvPv, 32(%rax)
	movq	%rbx, 40(%rsp)
	movq	48(%rsp), %rdi
	movq	%rax, 48(%rsp)
	testq	%rdi, %rdi
	je	.LBB7_16
# BB#15:                                #   in Loop: Header=BB7_1 Depth=1
	callq	_ZNSt3__119__shared_weak_count16__release_sharedEv
.LBB7_16:                               # %_ZNSt3__110shared_ptrIvE5resetIvPFvPvEEENS_9enable_ifIXsr14is_convertibleIPT_S3_EE5valueEvE4typeES8_T0_.exit.i.i
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	$8, 56(%rsp)
	jmp	.LBB7_18
.LBB7_17:                               #   in Loop: Header=BB7_1 Depth=1
	movq	32(%rsp), %rax
	movq	40(%rsp), %rdi
.Ltmp78:
	callq	*%rax
.Ltmp79:
	jmp	.LBB7_18
.LBB7_2:                                #   in Loop: Header=BB7_1 Depth=1
.Ltmp73:
	movq	%r14, %rdi
	callq	_ZN9benchmark5State16StartKeepRunningEv
.Ltmp74:
	jmp	.LBB7_3
.LBB7_13:                               #   in Loop: Header=BB7_1 Depth=1
.Ltmp85:
	movq	%rax, %rdi
	callq	__cxa_begin_catch
	movq	%rbx, %rdi
	callq	_ZdlPv
.Ltmp86:
	callq	__cxa_rethrow
.Ltmp87:
	jmp	.LBB7_14
.LBB7_25:
.Ltmp88:
	movq	%rax, %rbx
.Ltmp89:
	callq	__cxa_end_catch
.Ltmp90:
	jmp	.LBB7_22
.LBB7_26:
.Ltmp91:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB7_4:
.Ltmp75:
	movq	%r14, %rdi
	callq	_ZN9benchmark5State17FinishKeepRunningEv
.Ltmp76:
# BB#5:
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_7
# BB#6:
	callq	_ZNSt3__119__shared_weak_count16__release_sharedEv
.LBB7_7:                                # %_ZN9FD_ButtonD2Ev.exit
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB7_19:                               # %.loopexit
.Ltmp82:
.LBB7_21:                               # %.body
	movq	%rax, %rbx
.LBB7_22:                               # %.body
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_24
# BB#23:
	callq	_ZNSt3__119__shared_weak_count16__release_sharedEv
.LBB7_24:                               # %_ZN9FD_ButtonD2Ev.exit4
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.LBB7_20:                               # %.loopexit.split-lp
.Ltmp77:
	jmp	.LBB7_21
.Lfunc_end7:
	.size	_ZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateE, .Lfunc_end7-_ZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table7:
.Lexception4:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\360"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	104                     # Call site table length
	.long	.Ltmp80-.Lfunc_begin4   # >> Call Site 1 <<
	.long	.Ltmp81-.Ltmp80         #   Call between .Ltmp80 and .Ltmp81
	.long	.Ltmp82-.Lfunc_begin4   #     jumps to .Ltmp82
	.byte	0                       #   On action: cleanup
	.long	.Ltmp83-.Lfunc_begin4   # >> Call Site 2 <<
	.long	.Ltmp84-.Ltmp83         #   Call between .Ltmp83 and .Ltmp84
	.long	.Ltmp85-.Lfunc_begin4   #     jumps to .Ltmp85
	.byte	1                       #   On action: 1
	.long	.Ltmp78-.Lfunc_begin4   # >> Call Site 3 <<
	.long	.Ltmp74-.Ltmp78         #   Call between .Ltmp78 and .Ltmp74
	.long	.Ltmp82-.Lfunc_begin4   #     jumps to .Ltmp82
	.byte	0                       #   On action: cleanup
	.long	.Ltmp74-.Lfunc_begin4   # >> Call Site 4 <<
	.long	.Ltmp86-.Ltmp74         #   Call between .Ltmp74 and .Ltmp86
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp86-.Lfunc_begin4   # >> Call Site 5 <<
	.long	.Ltmp87-.Ltmp86         #   Call between .Ltmp86 and .Ltmp87
	.long	.Ltmp88-.Lfunc_begin4   #     jumps to .Ltmp88
	.byte	0                       #   On action: cleanup
	.long	.Ltmp89-.Lfunc_begin4   # >> Call Site 6 <<
	.long	.Ltmp90-.Ltmp89         #   Call between .Ltmp89 and .Ltmp90
	.long	.Ltmp91-.Lfunc_begin4   #     jumps to .Ltmp91
	.byte	1                       #   On action: 1
	.long	.Ltmp75-.Lfunc_begin4   # >> Call Site 7 <<
	.long	.Ltmp76-.Ltmp75         #   Call between .Ltmp75 and .Ltmp76
	.long	.Ltmp77-.Lfunc_begin4   #     jumps to .Ltmp77
	.byte	0                       #   On action: cleanup
	.long	.Ltmp76-.Lfunc_begin4   # >> Call Site 8 <<
	.long	.Lfunc_end7-.Ltmp76     #   Call between .Ltmp76 and .Lfunc_end7
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp99:
	.cfi_def_cfa_offset 16
	movl	%edi, 4(%rsp)
	leaq	4(%rsp), %rdi
	callq	_ZN9benchmark10InitializeEPiPPc
	callq	_ZN9benchmark22RunSpecifiedBenchmarksEv
	xorl	%eax, %eax
	popq	%rcx
	retq
.Lfunc_end8:
	.size	main, .Lfunc_end8-main
	.cfi_endproc

	.section	.text._ZNSt3__110__function6__baseIFViiEED2Ev,"axG",@progbits,_ZNSt3__110__function6__baseIFViiEED2Ev,comdat
	.hidden	_ZNSt3__110__function6__baseIFViiEED2Ev
	.weak	_ZNSt3__110__function6__baseIFViiEED2Ev
	.align	16, 0x90
	.type	_ZNSt3__110__function6__baseIFViiEED2Ev,@function
_ZNSt3__110__function6__baseIFViiEED2Ev: # @_ZNSt3__110__function6__baseIFViiEED2Ev
	.cfi_startproc
# BB#0:
	retq
.Lfunc_end9:
	.size	_ZNSt3__110__function6__baseIFViiEED2Ev, .Lfunc_end9-_ZNSt3__110__function6__baseIFViiEED2Ev
	.cfi_endproc

	.section	.text._ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_ED0Ev,"axG",@progbits,_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_ED0Ev,comdat
	.weak	_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_ED0Ev
	.align	16, 0x90
	.type	_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_ED0Ev,@function
_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_ED0Ev: # @_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_ED0Ev
	.cfi_startproc
# BB#0:
	jmp	_ZdlPv                  # TAILCALL
.Lfunc_end10:
	.size	_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_ED0Ev, .Lfunc_end10-_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_ED0Ev
	.cfi_endproc

	.section	.text._ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEv,"axG",@progbits,_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEv,comdat
	.weak	_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEv
	.align	16, 0x90
	.type	_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEv,@function
_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEv: # @_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEv
	.cfi_startproc
# BB#0:                                 # %_ZNSt3__110unique_ptrINS_10__function6__funcIPFViiENS_9allocatorIS5_EES4_EENS_22__allocator_destructorINS6_IS8_EEEEED2Ev.exit
	pushq	%rbx
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$16, %edi
	callq	_Znwm
	movq	$_ZTVNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE+16, (%rax)
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rax)
	popq	%rbx
	retq
.Lfunc_end11:
	.size	_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEv, .Lfunc_end11-_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEv
	.cfi_endproc

	.section	.text._ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEPNS0_6__baseIS3_EE,"axG",@progbits,_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEPNS0_6__baseIS3_EE,comdat
	.weak	_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEPNS0_6__baseIS3_EE
	.align	16, 0x90
	.type	_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEPNS0_6__baseIS3_EE,@function
_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEPNS0_6__baseIS3_EE: # @_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEPNS0_6__baseIS3_EE
	.cfi_startproc
# BB#0:
	movq	$_ZTVNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE+16, (%rsi)
	movq	8(%rdi), %rax
	movq	%rax, 8(%rsi)
	retq
.Lfunc_end12:
	.size	_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEPNS0_6__baseIS3_EE, .Lfunc_end12-_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEPNS0_6__baseIS3_EE
	.cfi_endproc

	.section	.text._ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7destroyEv,"axG",@progbits,_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7destroyEv,comdat
	.weak	_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7destroyEv
	.align	16, 0x90
	.type	_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7destroyEv,@function
_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7destroyEv: # @_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7destroyEv
	.cfi_startproc
# BB#0:
	retq
.Lfunc_end13:
	.size	_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7destroyEv, .Lfunc_end13-_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7destroyEv
	.cfi_endproc

	.section	.text._ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E18destroy_deallocateEv,"axG",@progbits,_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E18destroy_deallocateEv,comdat
	.weak	_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E18destroy_deallocateEv
	.align	16, 0x90
	.type	_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E18destroy_deallocateEv,@function
_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E18destroy_deallocateEv: # @_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E18destroy_deallocateEv
	.cfi_startproc
# BB#0:
	jmp	_ZdlPv                  # TAILCALL
.Lfunc_end14:
	.size	_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E18destroy_deallocateEv, .Lfunc_end14-_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E18destroy_deallocateEv
	.cfi_endproc

	.section	.text._ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EclEOi,"axG",@progbits,_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EclEOi,comdat
	.weak	_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EclEOi
	.align	16, 0x90
	.type	_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EclEOi,@function
_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EclEOi: # @_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EclEOi
	.cfi_startproc
# BB#0:
	movq	%rdi, %rax
	movl	(%rsi), %edi
	jmpq	*8(%rax)                # TAILCALL
.Lfunc_end15:
	.size	_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EclEOi, .Lfunc_end15-_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EclEOi
	.cfi_endproc

	.section	.text._ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E6targetERKSt9type_info,"axG",@progbits,_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E6targetERKSt9type_info,comdat
	.weak	_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E6targetERKSt9type_info
	.align	16, 0x90
	.type	_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E6targetERKSt9type_info,@function
_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E6targetERKSt9type_info: # @_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E6targetERKSt9type_info
	.cfi_startproc
# BB#0:
	movl	$_ZTSPFViiE, %eax
	cmpq	%rax, 8(%rsi)
	je	.LBB16_1
# BB#2:                                 # %select.false
	xorl	%edi, %edi
	movq	%rdi, %rax
	retq
.LBB16_1:
	addq	$8, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end16:
	.size	_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E6targetERKSt9type_info, .Lfunc_end16-_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E6targetERKSt9type_info
	.cfi_endproc

	.section	.text._ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E11target_typeEv,"axG",@progbits,_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E11target_typeEv,comdat
	.weak	_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E11target_typeEv
	.align	16, 0x90
	.type	_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E11target_typeEv,@function
_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E11target_typeEv: # @_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E11target_typeEv
	.cfi_startproc
# BB#0:
	movl	$_ZTIPFViiE, %eax
	retq
.Lfunc_end17:
	.size	_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E11target_typeEv, .Lfunc_end17-_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E11target_typeEv
	.cfi_endproc

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
.Lfunc_end18:
	.size	__clang_call_terminate, .Lfunc_end18-__clang_call_terminate

	.section	.text._ZNSt3__117bad_function_callD0Ev,"axG",@progbits,_ZNSt3__117bad_function_callD0Ev,comdat
	.weak	_ZNSt3__117bad_function_callD0Ev
	.align	16, 0x90
	.type	_ZNSt3__117bad_function_callD0Ev,@function
_ZNSt3__117bad_function_callD0Ev:       # @_ZNSt3__117bad_function_callD0Ev
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	_ZNSt9exceptionD2Ev
	movq	%rbx, %rdi
	popq	%rbx
	jmp	_ZdlPv                  # TAILCALL
.Lfunc_end19:
	.size	_ZNSt3__117bad_function_callD0Ev, .Lfunc_end19-_ZNSt3__117bad_function_callD0Ev
	.cfi_endproc

	.section	.text._ZNSt3__110__function6__baseIFbPKcEED2Ev,"axG",@progbits,_ZNSt3__110__function6__baseIFbPKcEED2Ev,comdat
	.hidden	_ZNSt3__110__function6__baseIFbPKcEED2Ev
	.weak	_ZNSt3__110__function6__baseIFbPKcEED2Ev
	.align	16, 0x90
	.type	_ZNSt3__110__function6__baseIFbPKcEED2Ev,@function
_ZNSt3__110__function6__baseIFbPKcEED2Ev: # @_ZNSt3__110__function6__baseIFbPKcEED2Ev
	.cfi_startproc
# BB#0:
	retq
.Lfunc_end20:
	.size	_ZNSt3__110__function6__baseIFbPKcEED2Ev, .Lfunc_end20-_ZNSt3__110__function6__baseIFbPKcEED2Ev
	.cfi_endproc

	.section	.text._ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEED0Ev,"axG",@progbits,_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEED0Ev,comdat
	.weak	_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEED0Ev
	.align	16, 0x90
	.type	_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEED0Ev,@function
_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEED0Ev: # @_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEED0Ev
	.cfi_startproc
# BB#0:
	jmp	_ZdlPv                  # TAILCALL
.Lfunc_end21:
	.size	_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEED0Ev, .Lfunc_end21-_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEED0Ev
	.cfi_endproc

	.section	.text._ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7__cloneEv,"axG",@progbits,_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7__cloneEv,comdat
	.weak	_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7__cloneEv
	.align	16, 0x90
	.type	_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7__cloneEv,@function
_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7__cloneEv: # @_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7__cloneEv
	.cfi_startproc
# BB#0:                                 # %_ZNSt3__110unique_ptrINS_10__function6__funcI10BigFunctorNS_9allocatorIS3_EEFbPKcEEENS_22__allocator_destructorINS4_IS9_EEEEED2Ev.exit
	pushq	%rbx
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$40, %edi
	callq	_Znwm
	movq	$_ZTVNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE+16, (%rax)
	movups	8(%rbx), %xmm0
	movups	24(%rbx), %xmm1
	movups	%xmm1, 24(%rax)
	movups	%xmm0, 8(%rax)
	popq	%rbx
	retq
.Lfunc_end22:
	.size	_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7__cloneEv, .Lfunc_end22-_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7__cloneEv
	.cfi_endproc

	.section	.text._ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7__cloneEPNS0_6__baseIS7_EE,"axG",@progbits,_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7__cloneEPNS0_6__baseIS7_EE,comdat
	.weak	_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7__cloneEPNS0_6__baseIS7_EE
	.align	16, 0x90
	.type	_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7__cloneEPNS0_6__baseIS7_EE,@function
_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7__cloneEPNS0_6__baseIS7_EE: # @_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7__cloneEPNS0_6__baseIS7_EE
	.cfi_startproc
# BB#0:
	movq	$_ZTVNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE+16, (%rsi)
	movups	8(%rdi), %xmm0
	movups	24(%rdi), %xmm1
	movups	%xmm1, 24(%rsi)
	movups	%xmm0, 8(%rsi)
	retq
.Lfunc_end23:
	.size	_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7__cloneEPNS0_6__baseIS7_EE, .Lfunc_end23-_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7__cloneEPNS0_6__baseIS7_EE
	.cfi_endproc

	.section	.text._ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7destroyEv,"axG",@progbits,_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7destroyEv,comdat
	.weak	_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7destroyEv
	.align	16, 0x90
	.type	_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7destroyEv,@function
_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7destroyEv: # @_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7destroyEv
	.cfi_startproc
# BB#0:
	retq
.Lfunc_end24:
	.size	_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7destroyEv, .Lfunc_end24-_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7destroyEv
	.cfi_endproc

	.section	.text._ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE18destroy_deallocateEv,"axG",@progbits,_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE18destroy_deallocateEv,comdat
	.weak	_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE18destroy_deallocateEv
	.align	16, 0x90
	.type	_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE18destroy_deallocateEv,@function
_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE18destroy_deallocateEv: # @_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE18destroy_deallocateEv
	.cfi_startproc
# BB#0:
	jmp	_ZdlPv                  # TAILCALL
.Lfunc_end25:
	.size	_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE18destroy_deallocateEv, .Lfunc_end25-_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE18destroy_deallocateEv
	.cfi_endproc

	.section	.text._ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEclEOS6_,"axG",@progbits,_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEclEOS6_,comdat
	.weak	_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEclEOS6_
	.align	16, 0x90
	.type	_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEclEOS6_,@function
_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEclEOS6_: # @_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEclEOS6_
	.cfi_startproc
# BB#0:
	pushq	%r15
.Ltmp106:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp107:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp108:
	.cfi_def_cfa_offset 32
.Ltmp109:
	.cfi_offset %rbx, -32
.Ltmp110:
	.cfi_offset %r14, -24
.Ltmp111:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	(%rsi), %r14
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %rbx
	addq	$8, %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	andl	$1, %ebx
	movb	%bl, %al
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end26:
	.size	_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEclEOS6_, .Lfunc_end26-_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEclEOS6_
	.cfi_endproc

	.section	.text._ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE6targetERKSt9type_info,"axG",@progbits,_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE6targetERKSt9type_info,comdat
	.weak	_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE6targetERKSt9type_info
	.align	16, 0x90
	.type	_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE6targetERKSt9type_info,@function
_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE6targetERKSt9type_info: # @_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE6targetERKSt9type_info
	.cfi_startproc
# BB#0:
	movl	$_ZTS10BigFunctor, %eax
	cmpq	%rax, 8(%rsi)
	je	.LBB27_1
# BB#2:                                 # %select.false
	xorl	%edi, %edi
	movq	%rdi, %rax
	retq
.LBB27_1:
	addq	$8, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end27:
	.size	_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE6targetERKSt9type_info, .Lfunc_end27-_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE6targetERKSt9type_info
	.cfi_endproc

	.section	.text._ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE11target_typeEv,"axG",@progbits,_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE11target_typeEv,comdat
	.weak	_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE11target_typeEv
	.align	16, 0x90
	.type	_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE11target_typeEv,@function
_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE11target_typeEv: # @_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE11target_typeEv
	.cfi_startproc
# BB#0:
	movl	$_ZTI10BigFunctor, %eax
	retq
.Lfunc_end28:
	.size	_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE11target_typeEv, .Lfunc_end28-_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE11target_typeEv
	.cfi_endproc

	.section	.text._ZNSt3__18functionIFvP6ObjectEE4swapERS4_,"axG",@progbits,_ZNSt3__18functionIFvP6ObjectEE4swapERS4_,comdat
	.weak	_ZNSt3__18functionIFvP6ObjectEE4swapERS4_
	.align	16, 0x90
	.type	_ZNSt3__18functionIFvP6ObjectEE4swapERS4_,@function
_ZNSt3__18functionIFvP6ObjectEE4swapERS4_: # @_ZNSt3__18functionIFvP6ObjectEE4swapERS4_
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception5
# BB#0:
	pushq	%r15
.Ltmp123:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp124:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp125:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp126:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp127:
	.cfi_def_cfa_offset 80
.Ltmp128:
	.cfi_offset %rbx, -40
.Ltmp129:
	.cfi_offset %r12, -32
.Ltmp130:
	.cfi_offset %r14, -24
.Ltmp131:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	32(%r12), %rbx
	movq	32(%r14), %r15
	cmpq	%r12, %rbx
	je	.LBB29_1
# BB#8:
	cmpq	%r14, %r15
	je	.LBB29_9
# BB#11:
	movq	%r15, 32(%r12)
	movq	%rbx, 32(%r14)
	jmp	.LBB29_12
.LBB29_1:
	cmpq	%r14, %r15
	je	.LBB29_2
# BB#6:
	movq	(%rbx), %rax
	movq	24(%rax), %rax
.Ltmp114:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*%rax
.Ltmp115:
# BB#7:
	movq	32(%r12), %rdi
	movq	(%rdi), %rax
	callq	*32(%rax)
	movq	32(%r14), %rax
	movq	%rax, 32(%r12)
	movq	%r14, 32(%r14)
	jmp	.LBB29_12
.LBB29_9:
	movq	(%r14), %rax
	movq	24(%rax), %rax
.Ltmp112:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*%rax
.Ltmp113:
# BB#10:
	movq	32(%r14), %rdi
	movq	(%rdi), %rax
	callq	*32(%rax)
	movq	32(%r12), %rax
	movq	%rax, 32(%r14)
	movq	%r12, 32(%r12)
	jmp	.LBB29_12
.LBB29_2:
	movq	(%rbx), %rax
	movq	24(%rax), %rax
.Ltmp116:
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*%rax
.Ltmp117:
# BB#3:
	movq	32(%r12), %rdi
	movq	(%rdi), %rax
	callq	*32(%rax)
	movq	$0, 32(%r12)
	movq	32(%r14), %rdi
	movq	(%rdi), %rax
	movq	24(%rax), %rax
.Ltmp118:
	movq	%rbx, %rsi
	callq	*%rax
.Ltmp119:
# BB#4:
	movq	32(%r14), %rdi
	movq	(%rdi), %rax
	callq	*32(%rax)
	movq	$0, 32(%r14)
	movq	%r12, 32(%r12)
	movq	(%rsp), %rax
	movq	24(%rax), %rax
.Ltmp120:
	leaq	(%rsp), %rdi
	movq	%r15, %rsi
	callq	*%rax
.Ltmp121:
# BB#5:
	movq	(%rsp), %rax
	leaq	(%rsp), %rdi
	callq	*32(%rax)
	movq	%r14, 32(%r14)
.LBB29_12:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB29_13:
.Ltmp122:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end29:
	.size	_ZNSt3__18functionIFvP6ObjectEE4swapERS4_, .Lfunc_end29-_ZNSt3__18functionIFvP6ObjectEE4swapERS4_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table29:
.Lexception5:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\213\201"              # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.ascii	"\202\001"              # Call site table length
	.long	.Ltmp114-.Lfunc_begin5  # >> Call Site 1 <<
	.long	.Ltmp115-.Ltmp114       #   Call between .Ltmp114 and .Ltmp115
	.long	.Ltmp122-.Lfunc_begin5  #     jumps to .Ltmp122
	.byte	1                       #   On action: 1
	.long	.Ltmp115-.Lfunc_begin5  # >> Call Site 2 <<
	.long	.Ltmp112-.Ltmp115       #   Call between .Ltmp115 and .Ltmp112
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp112-.Lfunc_begin5  # >> Call Site 3 <<
	.long	.Ltmp113-.Ltmp112       #   Call between .Ltmp112 and .Ltmp113
	.long	.Ltmp122-.Lfunc_begin5  #     jumps to .Ltmp122
	.byte	1                       #   On action: 1
	.long	.Ltmp113-.Lfunc_begin5  # >> Call Site 4 <<
	.long	.Ltmp116-.Ltmp113       #   Call between .Ltmp113 and .Ltmp116
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp116-.Lfunc_begin5  # >> Call Site 5 <<
	.long	.Ltmp117-.Ltmp116       #   Call between .Ltmp116 and .Ltmp117
	.long	.Ltmp122-.Lfunc_begin5  #     jumps to .Ltmp122
	.byte	1                       #   On action: 1
	.long	.Ltmp117-.Lfunc_begin5  # >> Call Site 6 <<
	.long	.Ltmp118-.Ltmp117       #   Call between .Ltmp117 and .Ltmp118
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp118-.Lfunc_begin5  # >> Call Site 7 <<
	.long	.Ltmp119-.Ltmp118       #   Call between .Ltmp118 and .Ltmp119
	.long	.Ltmp122-.Lfunc_begin5  #     jumps to .Ltmp122
	.byte	1                       #   On action: 1
	.long	.Ltmp119-.Lfunc_begin5  # >> Call Site 8 <<
	.long	.Ltmp120-.Ltmp119       #   Call between .Ltmp119 and .Ltmp120
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp120-.Lfunc_begin5  # >> Call Site 9 <<
	.long	.Ltmp121-.Ltmp120       #   Call between .Ltmp120 and .Ltmp121
	.long	.Ltmp122-.Lfunc_begin5  #     jumps to .Ltmp122
	.byte	1                       #   On action: 1
	.long	.Ltmp121-.Lfunc_begin5  # >> Call Site 10 <<
	.long	.Lfunc_end29-.Ltmp121   #   Call between .Ltmp121 and .Lfunc_end29
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZNSt3__110__function6__baseIFvP6ObjectEED2Ev,"axG",@progbits,_ZNSt3__110__function6__baseIFvP6ObjectEED2Ev,comdat
	.hidden	_ZNSt3__110__function6__baseIFvP6ObjectEED2Ev
	.weak	_ZNSt3__110__function6__baseIFvP6ObjectEED2Ev
	.align	16, 0x90
	.type	_ZNSt3__110__function6__baseIFvP6ObjectEED2Ev,@function
_ZNSt3__110__function6__baseIFvP6ObjectEED2Ev: # @_ZNSt3__110__function6__baseIFvP6ObjectEED2Ev
	.cfi_startproc
# BB#0:
	retq
.Lfunc_end30:
	.size	_ZNSt3__110__function6__baseIFvP6ObjectEED2Ev, .Lfunc_end30-_ZNSt3__110__function6__baseIFvP6ObjectEED2Ev
	.cfi_endproc

	.text
	.align	16, 0x90
	.type	_ZNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEED0Ev,@function
_ZNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEED0Ev: # @"_ZNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEED0Ev"
	.cfi_startproc
# BB#0:
	jmp	_ZdlPv                  # TAILCALL
.Lfunc_end31:
	.size	_ZNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEED0Ev, .Lfunc_end31-_ZNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEED0Ev
	.cfi_endproc

	.align	16, 0x90
	.type	_ZNKSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE7__cloneEv,@function
_ZNKSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE7__cloneEv: # @"_ZNKSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE7__cloneEv"
	.cfi_startproc
# BB#0:                                 # %"_ZNSt3__110unique_ptrINS_10__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS6_EEFvP6ObjectEEENS_22__allocator_destructorINS7_ISC_EEEEED2Ev.exit"
	pushq	%rbx
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$16, %edi
	callq	_Znwm
	movq	$_ZTVNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEEE+16, (%rax)
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rax)
	popq	%rbx
	retq
.Lfunc_end32:
	.size	_ZNKSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE7__cloneEv, .Lfunc_end32-_ZNKSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE7__cloneEv
	.cfi_endproc

	.align	16, 0x90
	.type	_ZNKSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE7__cloneEPNS0_6__baseISA_EE,@function
_ZNKSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE7__cloneEPNS0_6__baseISA_EE: # @"_ZNKSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE7__cloneEPNS0_6__baseISA_EE"
	.cfi_startproc
# BB#0:
	movq	$_ZTVNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEEE+16, (%rsi)
	movq	8(%rdi), %rax
	movq	%rax, 8(%rsi)
	retq
.Lfunc_end33:
	.size	_ZNKSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE7__cloneEPNS0_6__baseISA_EE, .Lfunc_end33-_ZNKSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE7__cloneEPNS0_6__baseISA_EE
	.cfi_endproc

	.align	16, 0x90
	.type	_ZNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE7destroyEv,@function
_ZNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE7destroyEv: # @"_ZNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE7destroyEv"
	.cfi_startproc
# BB#0:
	retq
.Lfunc_end34:
	.size	_ZNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE7destroyEv, .Lfunc_end34-_ZNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE7destroyEv
	.cfi_endproc

	.align	16, 0x90
	.type	_ZNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE18destroy_deallocateEv,@function
_ZNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE18destroy_deallocateEv: # @"_ZNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE18destroy_deallocateEv"
	.cfi_startproc
# BB#0:
	jmp	_ZdlPv                  # TAILCALL
.Lfunc_end35:
	.size	_ZNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE18destroy_deallocateEv, .Lfunc_end35-_ZNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE18destroy_deallocateEv
	.cfi_endproc

	.align	16, 0x90
	.type	_ZNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEEclEOS9_,@function
_ZNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEEclEOS9_: # @"_ZNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEEclEOS9_"
	.cfi_startproc
# BB#0:
	movq	8(%rdi), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rsp)
	movl	-4(%rsp), %eax
	incl	%eax
	movl	%eax, -4(%rsp)
	movq	8(%rdi), %rcx
	movl	%eax, (%rcx)
	retq
.Lfunc_end36:
	.size	_ZNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEEclEOS9_, .Lfunc_end36-_ZNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEEclEOS9_
	.cfi_endproc

	.align	16, 0x90
	.type	_ZNKSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE6targetERKSt9type_info,@function
_ZNKSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE6targetERKSt9type_info: # @"_ZNKSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE6targetERKSt9type_info"
	.cfi_startproc
# BB#0:
	movl	$_ZTSZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0, %eax
	cmpq	%rax, 8(%rsi)
	je	.LBB37_1
# BB#2:                                 # %select.false
	xorl	%edi, %edi
	movq	%rdi, %rax
	retq
.LBB37_1:
	addq	$8, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end37:
	.size	_ZNKSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE6targetERKSt9type_info, .Lfunc_end37-_ZNKSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE6targetERKSt9type_info
	.cfi_endproc

	.align	16, 0x90
	.type	_ZNKSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE11target_typeEv,@function
_ZNKSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE11target_typeEv: # @"_ZNKSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE11target_typeEv"
	.cfi_startproc
# BB#0:
	movl	$_ZTIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0, %eax
	retq
.Lfunc_end38:
	.size	_ZNKSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE11target_typeEv, .Lfunc_end38-_ZNKSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE11target_typeEv
	.cfi_endproc

	.section	.text._ZN7Derived12fun_functionEi,"axG",@progbits,_ZN7Derived12fun_functionEi,comdat
	.weak	_ZN7Derived12fun_functionEi
	.align	16, 0x90
	.type	_ZN7Derived12fun_functionEi,@function
_ZN7Derived12fun_functionEi:            # @_ZN7Derived12fun_functionEi
	.cfi_startproc
# BB#0:
	movl	%esi, -4(%rsp)
	movl	-4(%rsp), %eax
	incl	%eax
	movl	%eax, -4(%rsp)
	retq
.Lfunc_end39:
	.size	_ZN7Derived12fun_functionEi, .Lfunc_end39-_ZN7Derived12fun_functionEi
	.cfi_endproc

	.section	.text._ZN5Dummy12fun_functionEi,"axG",@progbits,_ZN5Dummy12fun_functionEi,comdat
	.weak	_ZN5Dummy12fun_functionEi
	.align	16, 0x90
	.type	_ZN5Dummy12fun_functionEi,@function
_ZN5Dummy12fun_functionEi:              # @_ZN5Dummy12fun_functionEi
	.cfi_startproc
# BB#0:
	movl	%esi, -4(%rsp)
	movl	-4(%rsp), %eax
	incl	%eax
	movl	%eax, -4(%rsp)
	retq
.Lfunc_end40:
	.size	_ZN5Dummy12fun_functionEi, .Lfunc_end40-_ZN5Dummy12fun_functionEi
	.cfi_endproc

	.section	.text._ZN8delegateIFViiEEC2IRS1_vEEOT_,"axG",@progbits,_ZN8delegateIFViiEEC2IRS1_vEEOT_,comdat
	.weak	_ZN8delegateIFViiEEC2IRS1_vEEOT_
	.align	16, 0x90
	.type	_ZN8delegateIFViiEEC2IRS1_vEEOT_,@function
_ZN8delegateIFViiEEC2IRS1_vEEOT_:       # @_ZN8delegateIFViiEEC2IRS1_vEEOT_
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception6
# BB#0:
	pushq	%r15
.Ltmp143:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp144:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp145:
	.cfi_def_cfa_offset 32
.Ltmp146:
	.cfi_offset %rbx, -32
.Ltmp147:
	.cfi_offset %r14, -24
.Ltmp148:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	$0, 8(%rbx)
	movl	$8, %edi
	callq	_Znwm
	movq	%rax, %r15
	movq	%r15, 24(%rbx)
.Ltmp134:
	movl	$40, %edi
	callq	_Znwm
.Ltmp135:
.LBB41_5:                               # %_ZNSt3__110shared_ptrIvEC2IvPFvPvEEEPT_T0_NS_9enable_ifIXsr14is_convertibleIS7_S3_EE5valueENS1_5__natEE4typeE.exit
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rax)
	movq	$_ZTVNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE+16, (%rax)
	movq	%r15, 24(%rax)
	movq	$_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv, 32(%rax)
	movq	%rax, 32(%rbx)
	movq	$8, 40(%rbx)
	movq	%r14, (%r15)
	movq	24(%rbx), %rax
	movq	%rax, (%rbx)
	movq	$_ZN8delegateIFViiEE12functor_stubIPS1_EENSt3__19enable_ifIXntoocvNS2_14is_member_pairIT_EEilEcvNS2_20is_const_member_pairIS8_EEilEES0_E4typeEPvOi, 8(%rbx)
	movq	$_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv, 16(%rbx)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB41_4:
.Ltmp136:
	movq	%rax, %rdi
	callq	__cxa_begin_catch
	movq	%r15, %rdi
	callq	_ZdlPv
.Ltmp137:
	callq	__cxa_rethrow
.Ltmp138:
	jmp	.LBB41_5
.LBB41_1:
.Ltmp139:
	movq	%rax, %rbx
.Ltmp140:
	callq	__cxa_end_catch
.Ltmp141:
# BB#2:
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.LBB41_3:
.Ltmp142:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end41:
	.size	_ZN8delegateIFViiEEC2IRS1_vEEOT_, .Lfunc_end41-_ZN8delegateIFViiEEC2IRS1_vEEOT_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table41:
.Lexception6:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\326\200\200"          # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	78                      # Call site table length
	.long	.Lfunc_begin6-.Lfunc_begin6 # >> Call Site 1 <<
	.long	.Ltmp134-.Lfunc_begin6  #   Call between .Lfunc_begin6 and .Ltmp134
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp134-.Lfunc_begin6  # >> Call Site 2 <<
	.long	.Ltmp135-.Ltmp134       #   Call between .Ltmp134 and .Ltmp135
	.long	.Ltmp136-.Lfunc_begin6  #     jumps to .Ltmp136
	.byte	1                       #   On action: 1
	.long	.Ltmp135-.Lfunc_begin6  # >> Call Site 3 <<
	.long	.Ltmp137-.Ltmp135       #   Call between .Ltmp135 and .Ltmp137
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp137-.Lfunc_begin6  # >> Call Site 4 <<
	.long	.Ltmp138-.Ltmp137       #   Call between .Ltmp137 and .Ltmp138
	.long	.Ltmp139-.Lfunc_begin6  #     jumps to .Ltmp139
	.byte	0                       #   On action: cleanup
	.long	.Ltmp140-.Lfunc_begin6  # >> Call Site 5 <<
	.long	.Ltmp141-.Ltmp140       #   Call between .Ltmp140 and .Ltmp141
	.long	.Ltmp142-.Lfunc_begin6  #     jumps to .Ltmp142
	.byte	1                       #   On action: 1
	.long	.Ltmp141-.Lfunc_begin6  # >> Call Site 6 <<
	.long	.Lfunc_end41-.Ltmp141   #   Call between .Ltmp141 and .Lfunc_end41
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv,"axG",@progbits,_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv,comdat
	.weak	_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv
	.align	16, 0x90
	.type	_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv,@function
_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv: # @_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv
	.cfi_startproc
# BB#0:
	jmp	_ZdlPv                  # TAILCALL
.Lfunc_end42:
	.size	_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv, .Lfunc_end42-_ZN8delegateIFViiEE15functor_deleterIPS1_EEvPv
	.cfi_endproc

	.section	.text._ZN8delegateIFViiEE12functor_stubIPS1_EENSt3__19enable_ifIXntoocvNS2_14is_member_pairIT_EEilEcvNS2_20is_const_member_pairIS8_EEilEES0_E4typeEPvOi,"axG",@progbits,_ZN8delegateIFViiEE12functor_stubIPS1_EENSt3__19enable_ifIXntoocvNS2_14is_member_pairIT_EEilEcvNS2_20is_const_member_pairIS8_EEilEES0_E4typeEPvOi,comdat
	.weak	_ZN8delegateIFViiEE12functor_stubIPS1_EENSt3__19enable_ifIXntoocvNS2_14is_member_pairIT_EEilEcvNS2_20is_const_member_pairIS8_EEilEES0_E4typeEPvOi
	.align	16, 0x90
	.type	_ZN8delegateIFViiEE12functor_stubIPS1_EENSt3__19enable_ifIXntoocvNS2_14is_member_pairIT_EEilEcvNS2_20is_const_member_pairIS8_EEilEES0_E4typeEPvOi,@function
_ZN8delegateIFViiEE12functor_stubIPS1_EENSt3__19enable_ifIXntoocvNS2_14is_member_pairIT_EEilEcvNS2_20is_const_member_pairIS8_EEilEES0_E4typeEPvOi: # @_ZN8delegateIFViiEE12functor_stubIPS1_EENSt3__19enable_ifIXntoocvNS2_14is_member_pairIT_EEilEcvNS2_20is_const_member_pairIS8_EEilEES0_E4typeEPvOi
	.cfi_startproc
# BB#0:
	movq	%rdi, %rax
	movl	(%rsi), %edi
	jmpq	*(%rax)                 # TAILCALL
.Lfunc_end43:
	.size	_ZN8delegateIFViiEE12functor_stubIPS1_EENSt3__19enable_ifIXntoocvNS2_14is_member_pairIT_EEilEcvNS2_20is_const_member_pairIS8_EEilEES0_E4typeEPvOi, .Lfunc_end43-_ZN8delegateIFViiEE12functor_stubIPS1_EENSt3__19enable_ifIXntoocvNS2_14is_member_pairIT_EEilEcvNS2_20is_const_member_pairIS8_EEilEES0_E4typeEPvOi
	.cfi_endproc

	.section	.text._ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv,"axG",@progbits,_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv,comdat
	.weak	_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv
	.align	16, 0x90
	.type	_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv,@function
_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv: # @_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv
	.cfi_startproc
# BB#0:
	retq
.Lfunc_end44:
	.size	_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv, .Lfunc_end44-_ZN8delegateIFViiEE12deleter_stubIPS1_EEvPv
	.cfi_endproc

	.section	.text._ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEED0Ev,"axG",@progbits,_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEED0Ev,comdat
	.weak	_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEED0Ev
	.align	16, 0x90
	.type	_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEED0Ev,@function
_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEED0Ev: # @_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEED0Ev
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp149:
	.cfi_def_cfa_offset 16
.Ltmp150:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	_ZNSt3__119__shared_weak_countD2Ev
	movq	%rbx, %rdi
	popq	%rbx
	jmp	_ZdlPv                  # TAILCALL
.Lfunc_end45:
	.size	_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEED0Ev, .Lfunc_end45-_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEED0Ev
	.cfi_endproc

	.section	.text._ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE16__on_zero_sharedEv,"axG",@progbits,_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE16__on_zero_sharedEv,comdat
	.weak	_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE16__on_zero_sharedEv
	.align	16, 0x90
	.type	_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE16__on_zero_sharedEv,@function
_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE16__on_zero_sharedEv: # @_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE16__on_zero_sharedEv
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception7
# BB#0:
	pushq	%rax
.Ltmp154:
	.cfi_def_cfa_offset 16
	movq	24(%rdi), %rax
	movq	32(%rdi), %rcx
.Ltmp151:
	movq	%rax, %rdi
	callq	*%rcx
.Ltmp152:
# BB#1:
	popq	%rax
	retq
.LBB46_2:
.Ltmp153:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end46:
	.size	_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE16__on_zero_sharedEv, .Lfunc_end46-_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE16__on_zero_sharedEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table46:
.Lexception7:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	21                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	13                      # Call site table length
	.long	.Ltmp151-.Lfunc_begin7  # >> Call Site 1 <<
	.long	.Ltmp152-.Ltmp151       #   Call between .Ltmp151 and .Ltmp152
	.long	.Ltmp153-.Lfunc_begin7  #     jumps to .Ltmp153
	.byte	1                       #   On action: 1
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZNKSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE13__get_deleterERKSt9type_info,"axG",@progbits,_ZNKSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE13__get_deleterERKSt9type_info,comdat
	.weak	_ZNKSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE13__get_deleterERKSt9type_info
	.align	16, 0x90
	.type	_ZNKSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE13__get_deleterERKSt9type_info,@function
_ZNKSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE13__get_deleterERKSt9type_info: # @_ZNKSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE13__get_deleterERKSt9type_info
	.cfi_startproc
# BB#0:
	movl	$_ZTSPFvPvE, %eax
	cmpq	%rax, 8(%rsi)
	je	.LBB47_1
# BB#2:                                 # %select.false
	xorl	%edi, %edi
	movq	%rdi, %rax
	retq
.LBB47_1:
	addq	$32, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end47:
	.size	_ZNKSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE13__get_deleterERKSt9type_info, .Lfunc_end47-_ZNKSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE13__get_deleterERKSt9type_info
	.cfi_endproc

	.section	.text._ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE21__on_zero_shared_weakEv,"axG",@progbits,_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE21__on_zero_shared_weakEv,comdat
	.weak	_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE21__on_zero_shared_weakEv
	.align	16, 0x90
	.type	_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE21__on_zero_shared_weakEv,@function
_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE21__on_zero_shared_weakEv: # @_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE21__on_zero_shared_weakEv
	.cfi_startproc
# BB#0:
	jmp	_ZdlPv                  # TAILCALL
.Lfunc_end48:
	.size	_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE21__on_zero_shared_weakEv, .Lfunc_end48-_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE21__on_zero_shared_weakEv
	.cfi_endproc

	.section	.text._ZN8delegateIFbPKcEEC2I10BigFunctorvEEOT_,"axG",@progbits,_ZN8delegateIFbPKcEEC2I10BigFunctorvEEOT_,comdat
	.weak	_ZN8delegateIFbPKcEEC2I10BigFunctorvEEOT_
	.align	16, 0x90
	.type	_ZN8delegateIFbPKcEEC2I10BigFunctorvEEOT_,@function
_ZN8delegateIFbPKcEEC2I10BigFunctorvEEOT_: # @_ZN8delegateIFbPKcEEC2I10BigFunctorvEEOT_
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception8
# BB#0:
	pushq	%r15
.Ltmp164:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp165:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp166:
	.cfi_def_cfa_offset 32
.Ltmp167:
	.cfi_offset %rbx, -32
.Ltmp168:
	.cfi_offset %r14, -24
.Ltmp169:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	$0, 8(%rbx)
	movl	$32, %edi
	callq	_Znwm
	movq	%rax, %r14
	movq	%r14, 24(%rbx)
.Ltmp155:
	movl	$40, %edi
	callq	_Znwm
.Ltmp156:
.LBB49_5:                               # %_ZNSt3__110shared_ptrIvEC2IvPFvPvEEEPT_T0_NS_9enable_ifIXsr14is_convertibleIS7_S3_EE5valueENS1_5__natEE4typeE.exit
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rax)
	movq	$_ZTVNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE+16, (%rax)
	movq	%r14, 24(%rax)
	movq	$_ZN8delegateIFbPKcEE15functor_deleterI10BigFunctorEEvPv, 32(%rax)
	movq	%rax, 32(%rbx)
	movq	$32, 40(%rbx)
	movups	(%r15), %xmm0
	movups	16(%r15), %xmm1
	movups	%xmm1, 16(%r14)
	movups	%xmm0, (%r14)
	movq	%r14, (%rbx)
	movq	$_ZN8delegateIFbPKcEE12functor_stubI10BigFunctorEENSt3__19enable_ifIXntoocvNS3_14is_member_pairIT_EEilEcvNS3_20is_const_member_pairIS9_EEilEEbE4typeEPvOS1_, 8(%rbx)
	movq	$_ZN8delegateIFbPKcEE12deleter_stubI10BigFunctorEEvPv, 16(%rbx)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB49_4:
.Ltmp157:
	movq	%rax, %rdi
	callq	__cxa_begin_catch
	movq	%r14, %rdi
	callq	_ZdlPv
.Ltmp158:
	callq	__cxa_rethrow
.Ltmp159:
	jmp	.LBB49_5
.LBB49_1:
.Ltmp160:
	movq	%rax, %rbx
.Ltmp161:
	callq	__cxa_end_catch
.Ltmp162:
# BB#2:
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.LBB49_3:
.Ltmp163:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end49:
	.size	_ZN8delegateIFbPKcEEC2I10BigFunctorvEEOT_, .Lfunc_end49-_ZN8delegateIFbPKcEEC2I10BigFunctorvEEOT_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table49:
.Lexception8:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\326\200\200"          # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	78                      # Call site table length
	.long	.Lfunc_begin8-.Lfunc_begin8 # >> Call Site 1 <<
	.long	.Ltmp155-.Lfunc_begin8  #   Call between .Lfunc_begin8 and .Ltmp155
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp155-.Lfunc_begin8  # >> Call Site 2 <<
	.long	.Ltmp156-.Ltmp155       #   Call between .Ltmp155 and .Ltmp156
	.long	.Ltmp157-.Lfunc_begin8  #     jumps to .Ltmp157
	.byte	1                       #   On action: 1
	.long	.Ltmp156-.Lfunc_begin8  # >> Call Site 3 <<
	.long	.Ltmp158-.Ltmp156       #   Call between .Ltmp156 and .Ltmp158
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp158-.Lfunc_begin8  # >> Call Site 4 <<
	.long	.Ltmp159-.Ltmp158       #   Call between .Ltmp158 and .Ltmp159
	.long	.Ltmp160-.Lfunc_begin8  #     jumps to .Ltmp160
	.byte	0                       #   On action: cleanup
	.long	.Ltmp161-.Lfunc_begin8  # >> Call Site 5 <<
	.long	.Ltmp162-.Ltmp161       #   Call between .Ltmp161 and .Ltmp162
	.long	.Ltmp163-.Lfunc_begin8  #     jumps to .Ltmp163
	.byte	1                       #   On action: 1
	.long	.Ltmp162-.Lfunc_begin8  # >> Call Site 6 <<
	.long	.Lfunc_end49-.Ltmp162   #   Call between .Ltmp162 and .Lfunc_end49
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZN8delegateIFbPKcEE15functor_deleterI10BigFunctorEEvPv,"axG",@progbits,_ZN8delegateIFbPKcEE15functor_deleterI10BigFunctorEEvPv,comdat
	.weak	_ZN8delegateIFbPKcEE15functor_deleterI10BigFunctorEEvPv
	.align	16, 0x90
	.type	_ZN8delegateIFbPKcEE15functor_deleterI10BigFunctorEEvPv,@function
_ZN8delegateIFbPKcEE15functor_deleterI10BigFunctorEEvPv: # @_ZN8delegateIFbPKcEE15functor_deleterI10BigFunctorEEvPv
	.cfi_startproc
# BB#0:
	jmp	_ZdlPv                  # TAILCALL
.Lfunc_end50:
	.size	_ZN8delegateIFbPKcEE15functor_deleterI10BigFunctorEEvPv, .Lfunc_end50-_ZN8delegateIFbPKcEE15functor_deleterI10BigFunctorEEvPv
	.cfi_endproc

	.section	.text._ZN8delegateIFbPKcEE12functor_stubI10BigFunctorEENSt3__19enable_ifIXntoocvNS3_14is_member_pairIT_EEilEcvNS3_20is_const_member_pairIS9_EEilEEbE4typeEPvOS1_,"axG",@progbits,_ZN8delegateIFbPKcEE12functor_stubI10BigFunctorEENSt3__19enable_ifIXntoocvNS3_14is_member_pairIT_EEilEcvNS3_20is_const_member_pairIS9_EEilEEbE4typeEPvOS1_,comdat
	.weak	_ZN8delegateIFbPKcEE12functor_stubI10BigFunctorEENSt3__19enable_ifIXntoocvNS3_14is_member_pairIT_EEilEcvNS3_20is_const_member_pairIS9_EEilEEbE4typeEPvOS1_
	.align	16, 0x90
	.type	_ZN8delegateIFbPKcEE12functor_stubI10BigFunctorEENSt3__19enable_ifIXntoocvNS3_14is_member_pairIT_EEilEcvNS3_20is_const_member_pairIS9_EEilEEbE4typeEPvOS1_,@function
_ZN8delegateIFbPKcEE12functor_stubI10BigFunctorEENSt3__19enable_ifIXntoocvNS3_14is_member_pairIT_EEilEcvNS3_20is_const_member_pairIS9_EEilEEbE4typeEPvOS1_: # @_ZN8delegateIFbPKcEE12functor_stubI10BigFunctorEENSt3__19enable_ifIXntoocvNS3_14is_member_pairIT_EEilEcvNS3_20is_const_member_pairIS9_EEilEEbE4typeEPvOS1_
	.cfi_startproc
# BB#0:
	pushq	%r15
.Ltmp170:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp171:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp172:
	.cfi_def_cfa_offset 32
.Ltmp173:
	.cfi_offset %rbx, -32
.Ltmp174:
	.cfi_offset %r14, -24
.Ltmp175:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	(%rsi), %r15
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	andl	$1, %ebx
	movb	%bl, %al
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end51:
	.size	_ZN8delegateIFbPKcEE12functor_stubI10BigFunctorEENSt3__19enable_ifIXntoocvNS3_14is_member_pairIT_EEilEcvNS3_20is_const_member_pairIS9_EEilEEbE4typeEPvOS1_, .Lfunc_end51-_ZN8delegateIFbPKcEE12functor_stubI10BigFunctorEENSt3__19enable_ifIXntoocvNS3_14is_member_pairIT_EEilEcvNS3_20is_const_member_pairIS9_EEilEEbE4typeEPvOS1_
	.cfi_endproc

	.section	.text._ZN8delegateIFbPKcEE12deleter_stubI10BigFunctorEEvPv,"axG",@progbits,_ZN8delegateIFbPKcEE12deleter_stubI10BigFunctorEEvPv,comdat
	.weak	_ZN8delegateIFbPKcEE12deleter_stubI10BigFunctorEEvPv
	.align	16, 0x90
	.type	_ZN8delegateIFbPKcEE12deleter_stubI10BigFunctorEEvPv,@function
_ZN8delegateIFbPKcEE12deleter_stubI10BigFunctorEEvPv: # @_ZN8delegateIFbPKcEE12deleter_stubI10BigFunctorEEvPv
	.cfi_startproc
# BB#0:
	retq
.Lfunc_end52:
	.size	_ZN8delegateIFbPKcEE12deleter_stubI10BigFunctorEEvPv, .Lfunc_end52-_ZN8delegateIFbPKcEE12deleter_stubI10BigFunctorEEvPv
	.cfi_endproc

	.text
	.align	16, 0x90
	.type	_ZN8delegateIFvP6ObjectEE15functor_deleterIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEE3$_1EEvPv,@function
_ZN8delegateIFvP6ObjectEE15functor_deleterIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEE3$_1EEvPv: # @"_ZN8delegateIFvP6ObjectEE15functor_deleterIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEE3$_1EEvPv"
	.cfi_startproc
# BB#0:
	jmp	_ZdlPv                  # TAILCALL
.Lfunc_end53:
	.size	_ZN8delegateIFvP6ObjectEE15functor_deleterIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEE3$_1EEvPv, .Lfunc_end53-_ZN8delegateIFvP6ObjectEE15functor_deleterIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEE3$_1EEvPv
	.cfi_endproc

	.align	16, 0x90
	.type	_ZN8delegateIFvP6ObjectEE12functor_stubIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEE3$_1EENSt3__19enable_ifIXntoocvNS3_14is_member_pairIT_EEilEcvNS3_20is_const_member_pairISC_EEilEEvE4typeEPvOS1_,@function
_ZN8delegateIFvP6ObjectEE12functor_stubIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEE3$_1EENSt3__19enable_ifIXntoocvNS3_14is_member_pairIT_EEilEcvNS3_20is_const_member_pairISC_EEilEEvE4typeEPvOS1_: # @"_ZN8delegateIFvP6ObjectEE12functor_stubIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEE3$_1EENSt3__19enable_ifIXntoocvNS3_14is_member_pairIT_EEilEcvNS3_20is_const_member_pairISC_EEilEEvE4typeEPvOS1_"
	.cfi_startproc
# BB#0:
	movq	(%rdi), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rsp)
	movl	-4(%rsp), %eax
	incl	%eax
	movl	%eax, -4(%rsp)
	movq	(%rdi), %rcx
	movl	%eax, (%rcx)
	retq
.Lfunc_end54:
	.size	_ZN8delegateIFvP6ObjectEE12functor_stubIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEE3$_1EENSt3__19enable_ifIXntoocvNS3_14is_member_pairIT_EEilEcvNS3_20is_const_member_pairISC_EEilEEvE4typeEPvOS1_, .Lfunc_end54-_ZN8delegateIFvP6ObjectEE12functor_stubIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEE3$_1EENSt3__19enable_ifIXntoocvNS3_14is_member_pairIT_EEilEcvNS3_20is_const_member_pairISC_EEilEEvE4typeEPvOS1_
	.cfi_endproc

	.align	16, 0x90
	.type	_ZN8delegateIFvP6ObjectEE12deleter_stubIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEE3$_1EEvPv,@function
_ZN8delegateIFvP6ObjectEE12deleter_stubIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEE3$_1EEvPv: # @"_ZN8delegateIFvP6ObjectEE12deleter_stubIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEE3$_1EEvPv"
	.cfi_startproc
# BB#0:
	retq
.Lfunc_end55:
	.size	_ZN8delegateIFvP6ObjectEE12deleter_stubIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEE3$_1EEvPv, .Lfunc_end55-_ZN8delegateIFvP6ObjectEE12deleter_stubIZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateEE3$_1EEvPv
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_bench_f_vf.cc,@function
_GLOBAL__sub_I_bench_f_vf.cc:           # @_GLOBAL__sub_I_bench_f_vf.cc
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception9
# BB#0:
	pushq	%r14
.Ltmp197:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp198:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp199:
	.cfi_def_cfa_offset 32
.Ltmp200:
	.cfi_offset %rbx, -24
.Ltmp201:
	.cfi_offset %r14, -16
	callq	_ZN9benchmark8internal17InitializeStreamsEv
	movl	$136, %edi
	callq	_Znwm
	movq	%rax, %rbx
.Ltmp176:
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	_ZN9benchmark8internal9BenchmarkC2EPKc
.Ltmp177:
# BB#1:                                 # %__cxx_global_var_init.1.exit
	movq	$_ZTVN9benchmark8internal17FunctionBenchmarkE+16, (%rbx)
	movq	$_ZL21BM_std_function_basicRN9benchmark5StateE, 128(%rbx)
	movq	%rbx, %rdi
	callq	_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE
	movq	%rax, _ZL33_benchmark_2BM_std_function_basic(%rip)
	movl	$136, %edi
	callq	_Znwm
	movq	%rax, %rbx
.Ltmp179:
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	_ZN9benchmark8internal9BenchmarkC2EPKc
.Ltmp180:
# BB#2:                                 # %__cxx_global_var_init.2.exit
	movq	$_ZTVN9benchmark8internal17FunctionBenchmarkE+16, (%rbx)
	movq	$_ZL21BM_std_function_heavyRN9benchmark5StateE, 128(%rbx)
	movq	%rbx, %rdi
	callq	_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE
	movq	%rax, _ZL33_benchmark_3BM_std_function_heavy(%rip)
	movl	$136, %edi
	callq	_Znwm
	movq	%rax, %rbx
.Ltmp182:
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	_ZN9benchmark8internal9BenchmarkC2EPKc
.Ltmp183:
# BB#3:                                 # %__cxx_global_var_init.4.exit
	movq	$_ZTVN9benchmark8internal17FunctionBenchmarkE+16, (%rbx)
	movq	$_ZL23BM_std_function_poly_cbRN9benchmark5StateE, 128(%rbx)
	movq	%rbx, %rdi
	callq	_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE
	movq	%rax, _ZL35_benchmark_4BM_std_function_poly_cb(%rip)
	movl	$136, %edi
	callq	_Znwm
	movq	%rax, %rbx
.Ltmp185:
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	_ZN9benchmark8internal9BenchmarkC2EPKc
.Ltmp186:
# BB#4:                                 # %__cxx_global_var_init.6.exit
	movq	$_ZTVN9benchmark8internal17FunctionBenchmarkE+16, (%rbx)
	movq	$_ZL25BM_virtual_function_basicRN9benchmark5StateE, 128(%rbx)
	movq	%rbx, %rdi
	callq	_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE
	movl	$48, %esi
	movq	%rax, %rdi
	callq	_ZN9benchmark8internal9Benchmark3ArgEi
	movq	%rax, _ZL37_benchmark_5BM_virtual_function_basic(%rip)
	movl	$136, %edi
	callq	_Znwm
	movq	%rax, %rbx
.Ltmp188:
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	_ZN9benchmark8internal9BenchmarkC2EPKc
.Ltmp189:
# BB#5:                                 # %__cxx_global_var_init.8.exit
	movq	$_ZTVN9benchmark8internal17FunctionBenchmarkE+16, (%rbx)
	movq	$_ZL26BM_imp_fast_delegate_basicRN9benchmark5StateE, 128(%rbx)
	movq	%rbx, %rdi
	callq	_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE
	movq	%rax, _ZL38_benchmark_6BM_imp_fast_delegate_basic(%rip)
	movl	$136, %edi
	callq	_Znwm
	movq	%rax, %rbx
.Ltmp191:
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	callq	_ZN9benchmark8internal9BenchmarkC2EPKc
.Ltmp192:
# BB#6:                                 # %__cxx_global_var_init.10.exit
	movq	$_ZTVN9benchmark8internal17FunctionBenchmarkE+16, (%rbx)
	movq	$_ZL26BM_imp_fast_delegate_heavyRN9benchmark5StateE, 128(%rbx)
	movq	%rbx, %rdi
	callq	_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE
	movq	%rax, _ZL38_benchmark_7BM_imp_fast_delegate_heavy(%rip)
	movl	$136, %edi
	callq	_Znwm
	movq	%rax, %rbx
.Ltmp194:
	movl	$.L.str.13, %esi
	movq	%rbx, %rdi
	callq	_ZN9benchmark8internal9BenchmarkC2EPKc
.Ltmp195:
# BB#7:                                 # %__cxx_global_var_init.12.exit
	movq	$_ZTVN9benchmark8internal17FunctionBenchmarkE+16, (%rbx)
	movq	$_ZL28BM_imp_fast_delegate_poly_cbRN9benchmark5StateE, 128(%rbx)
	movq	%rbx, %rdi
	callq	_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE
	movq	%rax, _ZL40_benchmark_8BM_imp_fast_delegate_poly_cb(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB56_8:
.Ltmp178:
	jmp	.LBB56_9
.LBB56_10:
.Ltmp181:
	jmp	.LBB56_9
.LBB56_11:
.Ltmp184:
	jmp	.LBB56_9
.LBB56_12:
.Ltmp187:
	jmp	.LBB56_9
.LBB56_13:
.Ltmp190:
	jmp	.LBB56_9
.LBB56_14:
.Ltmp193:
	jmp	.LBB56_9
.LBB56_15:
.Ltmp196:
.LBB56_9:                               # %unwind_resume
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_ZdlPv
	movq	%r14, %rdi
	callq	_Unwind_Resume
.Lfunc_end56:
	.size	_GLOBAL__sub_I_bench_f_vf.cc, .Lfunc_end56-_GLOBAL__sub_I_bench_f_vf.cc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table56:
.Lexception9:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\306\201\200"          # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.ascii	"\303\001"              # Call site table length
	.long	.Lfunc_begin9-.Lfunc_begin9 # >> Call Site 1 <<
	.long	.Ltmp176-.Lfunc_begin9  #   Call between .Lfunc_begin9 and .Ltmp176
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp176-.Lfunc_begin9  # >> Call Site 2 <<
	.long	.Ltmp177-.Ltmp176       #   Call between .Ltmp176 and .Ltmp177
	.long	.Ltmp178-.Lfunc_begin9  #     jumps to .Ltmp178
	.byte	0                       #   On action: cleanup
	.long	.Ltmp177-.Lfunc_begin9  # >> Call Site 3 <<
	.long	.Ltmp179-.Ltmp177       #   Call between .Ltmp177 and .Ltmp179
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp179-.Lfunc_begin9  # >> Call Site 4 <<
	.long	.Ltmp180-.Ltmp179       #   Call between .Ltmp179 and .Ltmp180
	.long	.Ltmp181-.Lfunc_begin9  #     jumps to .Ltmp181
	.byte	0                       #   On action: cleanup
	.long	.Ltmp180-.Lfunc_begin9  # >> Call Site 5 <<
	.long	.Ltmp182-.Ltmp180       #   Call between .Ltmp180 and .Ltmp182
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp182-.Lfunc_begin9  # >> Call Site 6 <<
	.long	.Ltmp183-.Ltmp182       #   Call between .Ltmp182 and .Ltmp183
	.long	.Ltmp184-.Lfunc_begin9  #     jumps to .Ltmp184
	.byte	0                       #   On action: cleanup
	.long	.Ltmp183-.Lfunc_begin9  # >> Call Site 7 <<
	.long	.Ltmp185-.Ltmp183       #   Call between .Ltmp183 and .Ltmp185
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp185-.Lfunc_begin9  # >> Call Site 8 <<
	.long	.Ltmp186-.Ltmp185       #   Call between .Ltmp185 and .Ltmp186
	.long	.Ltmp187-.Lfunc_begin9  #     jumps to .Ltmp187
	.byte	0                       #   On action: cleanup
	.long	.Ltmp186-.Lfunc_begin9  # >> Call Site 9 <<
	.long	.Ltmp188-.Ltmp186       #   Call between .Ltmp186 and .Ltmp188
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp188-.Lfunc_begin9  # >> Call Site 10 <<
	.long	.Ltmp189-.Ltmp188       #   Call between .Ltmp188 and .Ltmp189
	.long	.Ltmp190-.Lfunc_begin9  #     jumps to .Ltmp190
	.byte	0                       #   On action: cleanup
	.long	.Ltmp189-.Lfunc_begin9  # >> Call Site 11 <<
	.long	.Ltmp191-.Ltmp189       #   Call between .Ltmp189 and .Ltmp191
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp191-.Lfunc_begin9  # >> Call Site 12 <<
	.long	.Ltmp192-.Ltmp191       #   Call between .Ltmp191 and .Ltmp192
	.long	.Ltmp193-.Lfunc_begin9  #     jumps to .Ltmp193
	.byte	0                       #   On action: cleanup
	.long	.Ltmp192-.Lfunc_begin9  # >> Call Site 13 <<
	.long	.Ltmp194-.Ltmp192       #   Call between .Ltmp192 and .Ltmp194
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp194-.Lfunc_begin9  # >> Call Site 14 <<
	.long	.Ltmp195-.Ltmp194       #   Call between .Ltmp194 and .Ltmp195
	.long	.Ltmp196-.Lfunc_begin9  #     jumps to .Ltmp196
	.byte	0                       #   On action: cleanup
	.long	.Ltmp195-.Lfunc_begin9  # >> Call Site 15 <<
	.long	.Lfunc_end56-.Ltmp195   #   Call between .Ltmp195 and .Lfunc_end56
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.type	_ZL33_benchmark_2BM_std_function_basic,@object # @_ZL33_benchmark_2BM_std_function_basic
	.local	_ZL33_benchmark_2BM_std_function_basic
	.comm	_ZL33_benchmark_2BM_std_function_basic,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"BM_std_function_basic"
	.size	.L.str, 22

	.type	_ZL33_benchmark_3BM_std_function_heavy,@object # @_ZL33_benchmark_3BM_std_function_heavy
	.local	_ZL33_benchmark_3BM_std_function_heavy
	.comm	_ZL33_benchmark_3BM_std_function_heavy,8,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"BM_std_function_heavy"
	.size	.L.str.3, 22

	.type	_ZL35_benchmark_4BM_std_function_poly_cb,@object # @_ZL35_benchmark_4BM_std_function_poly_cb
	.local	_ZL35_benchmark_4BM_std_function_poly_cb
	.comm	_ZL35_benchmark_4BM_std_function_poly_cb,8,8
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"BM_std_function_poly_cb"
	.size	.L.str.5, 24

	.type	_ZL37_benchmark_5BM_virtual_function_basic,@object # @_ZL37_benchmark_5BM_virtual_function_basic
	.local	_ZL37_benchmark_5BM_virtual_function_basic
	.comm	_ZL37_benchmark_5BM_virtual_function_basic,8,8
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"BM_virtual_function_basic"
	.size	.L.str.7, 26

	.type	_ZL38_benchmark_6BM_imp_fast_delegate_basic,@object # @_ZL38_benchmark_6BM_imp_fast_delegate_basic
	.local	_ZL38_benchmark_6BM_imp_fast_delegate_basic
	.comm	_ZL38_benchmark_6BM_imp_fast_delegate_basic,8,8
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"BM_imp_fast_delegate_basic"
	.size	.L.str.9, 27

	.type	_ZL38_benchmark_7BM_imp_fast_delegate_heavy,@object # @_ZL38_benchmark_7BM_imp_fast_delegate_heavy
	.local	_ZL38_benchmark_7BM_imp_fast_delegate_heavy
	.comm	_ZL38_benchmark_7BM_imp_fast_delegate_heavy,8,8
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"BM_imp_fast_delegate_heavy"
	.size	.L.str.11, 27

	.type	_ZL40_benchmark_8BM_imp_fast_delegate_poly_cb,@object # @_ZL40_benchmark_8BM_imp_fast_delegate_poly_cb
	.local	_ZL40_benchmark_8BM_imp_fast_delegate_poly_cb
	.comm	_ZL40_benchmark_8BM_imp_fast_delegate_poly_cb,8,8
	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"BM_imp_fast_delegate_poly_cb"
	.size	.L.str.13, 29

	.type	_ZTVNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE,@object # @_ZTVNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE
	.section	.rodata._ZTVNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE,"aG",@progbits,_ZTVNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE,comdat
	.weak	_ZTVNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE
	.align	8
_ZTVNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE:
	.quad	0
	.quad	_ZTINSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE
	.quad	_ZNSt3__110__function6__baseIFViiEED2Ev
	.quad	_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_ED0Ev
	.quad	_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEv
	.quad	_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7__cloneEPNS0_6__baseIS3_EE
	.quad	_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E7destroyEv
	.quad	_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E18destroy_deallocateEv
	.quad	_ZNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EclEOi
	.quad	_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E6targetERKSt9type_info
	.quad	_ZNKSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_E11target_typeEv
	.size	_ZTVNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE, 88

	.type	_ZTSNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE,@object # @_ZTSNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE
	.section	.rodata._ZTSNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE,"aG",@progbits,_ZTSNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE,comdat
	.weak	_ZTSNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE
	.align	16
_ZTSNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE:
	.asciz	"NSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE"
	.size	_ZTSNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE, 58

	.type	_ZTSNSt3__110__function6__baseIFViiEEE,@object # @_ZTSNSt3__110__function6__baseIFViiEEE
	.section	.rodata._ZTSNSt3__110__function6__baseIFViiEEE,"aG",@progbits,_ZTSNSt3__110__function6__baseIFViiEEE,comdat
	.weak	_ZTSNSt3__110__function6__baseIFViiEEE
	.align	16
_ZTSNSt3__110__function6__baseIFViiEEE:
	.asciz	"NSt3__110__function6__baseIFViiEEE"
	.size	_ZTSNSt3__110__function6__baseIFViiEEE, 35

	.type	_ZTINSt3__110__function6__baseIFViiEEE,@object # @_ZTINSt3__110__function6__baseIFViiEEE
	.section	.rodata._ZTINSt3__110__function6__baseIFViiEEE,"aG",@progbits,_ZTINSt3__110__function6__baseIFViiEEE,comdat
	.weak	_ZTINSt3__110__function6__baseIFViiEEE
	.align	8
_ZTINSt3__110__function6__baseIFViiEEE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSNSt3__110__function6__baseIFViiEEE
	.size	_ZTINSt3__110__function6__baseIFViiEEE, 16

	.type	_ZTINSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE,@object # @_ZTINSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE
	.section	.rodata._ZTINSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE,"aG",@progbits,_ZTINSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE,comdat
	.weak	_ZTINSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE
	.align	16
_ZTINSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE
	.quad	_ZTINSt3__110__function6__baseIFViiEEE
	.size	_ZTINSt3__110__function6__funcIPFViiENS_9allocatorIS4_EES3_EE, 24

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

	.type	_ZTSNSt3__117bad_function_callE,@object # @_ZTSNSt3__117bad_function_callE
	.section	.rodata._ZTSNSt3__117bad_function_callE,"aG",@progbits,_ZTSNSt3__117bad_function_callE,comdat
	.weak	_ZTSNSt3__117bad_function_callE
	.align	16
_ZTSNSt3__117bad_function_callE:
	.asciz	"NSt3__117bad_function_callE"
	.size	_ZTSNSt3__117bad_function_callE, 28

	.type	_ZTINSt3__117bad_function_callE,@object # @_ZTINSt3__117bad_function_callE
	.section	.rodata._ZTINSt3__117bad_function_callE,"aG",@progbits,_ZTINSt3__117bad_function_callE,comdat
	.weak	_ZTINSt3__117bad_function_callE
	.align	16
_ZTINSt3__117bad_function_callE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt3__117bad_function_callE
	.quad	_ZTISt9exception
	.size	_ZTINSt3__117bad_function_callE, 24

	.type	_ZTVNSt3__117bad_function_callE,@object # @_ZTVNSt3__117bad_function_callE
	.section	.rodata._ZTVNSt3__117bad_function_callE,"aG",@progbits,_ZTVNSt3__117bad_function_callE,comdat
	.weak	_ZTVNSt3__117bad_function_callE
	.align	8
_ZTVNSt3__117bad_function_callE:
	.quad	0
	.quad	_ZTINSt3__117bad_function_callE
	.quad	_ZNSt9exceptionD2Ev
	.quad	_ZNSt3__117bad_function_callD0Ev
	.quad	_ZNKSt9exception4whatEv
	.size	_ZTVNSt3__117bad_function_callE, 40

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"SampleString"
	.size	.L.str.14, 13

	.type	_ZTVNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE,@object # @_ZTVNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE
	.section	.rodata._ZTVNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE,"aG",@progbits,_ZTVNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE,comdat
	.weak	_ZTVNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE
	.align	8
_ZTVNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE:
	.quad	0
	.quad	_ZTINSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE
	.quad	_ZNSt3__110__function6__baseIFbPKcEED2Ev
	.quad	_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEED0Ev
	.quad	_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7__cloneEv
	.quad	_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7__cloneEPNS0_6__baseIS7_EE
	.quad	_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE7destroyEv
	.quad	_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE18destroy_deallocateEv
	.quad	_ZNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEclEOS6_
	.quad	_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE6targetERKSt9type_info
	.quad	_ZNKSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEE11target_typeEv
	.size	_ZTVNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE, 88

	.type	_ZTSNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE,@object # @_ZTSNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE
	.section	.rodata._ZTSNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE,"aG",@progbits,_ZTSNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE,comdat
	.weak	_ZTSNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE
	.align	16
_ZTSNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE:
	.asciz	"NSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE"
	.size	_ZTSNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE, 67

	.type	_ZTSNSt3__110__function6__baseIFbPKcEEE,@object # @_ZTSNSt3__110__function6__baseIFbPKcEEE
	.section	.rodata._ZTSNSt3__110__function6__baseIFbPKcEEE,"aG",@progbits,_ZTSNSt3__110__function6__baseIFbPKcEEE,comdat
	.weak	_ZTSNSt3__110__function6__baseIFbPKcEEE
	.align	16
_ZTSNSt3__110__function6__baseIFbPKcEEE:
	.asciz	"NSt3__110__function6__baseIFbPKcEEE"
	.size	_ZTSNSt3__110__function6__baseIFbPKcEEE, 36

	.type	_ZTINSt3__110__function6__baseIFbPKcEEE,@object # @_ZTINSt3__110__function6__baseIFbPKcEEE
	.section	.rodata._ZTINSt3__110__function6__baseIFbPKcEEE,"aG",@progbits,_ZTINSt3__110__function6__baseIFbPKcEEE,comdat
	.weak	_ZTINSt3__110__function6__baseIFbPKcEEE
	.align	8
_ZTINSt3__110__function6__baseIFbPKcEEE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSNSt3__110__function6__baseIFbPKcEEE
	.size	_ZTINSt3__110__function6__baseIFbPKcEEE, 16

	.type	_ZTINSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE,@object # @_ZTINSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE
	.section	.rodata._ZTINSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE,"aG",@progbits,_ZTINSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE,comdat
	.weak	_ZTINSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE
	.align	16
_ZTINSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE
	.quad	_ZTINSt3__110__function6__baseIFbPKcEEE
	.size	_ZTINSt3__110__function6__funcI10BigFunctorNS_9allocatorIS2_EEFbPKcEEE, 24

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

	.type	_ZTVNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEEE,@object # @"_ZTVNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEEE"
	.section	.rodata,"a",@progbits
	.align	8
_ZTVNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEEE:
	.quad	0
	.quad	_ZTINSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEEE
	.quad	_ZNSt3__110__function6__baseIFvP6ObjectEED2Ev
	.quad	_ZNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEED0Ev
	.quad	_ZNKSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE7__cloneEv
	.quad	_ZNKSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE7__cloneEPNS0_6__baseISA_EE
	.quad	_ZNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE7destroyEv
	.quad	_ZNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE18destroy_deallocateEv
	.quad	_ZNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEEclEOS9_
	.quad	_ZNKSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE6targetERKSt9type_info
	.quad	_ZNKSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEE11target_typeEv
	.size	_ZTVNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEEE, 88

	.type	_ZTSNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEEE,@object # @"_ZTSNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEEE"
	.align	16
_ZTSNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEEE:
	.asciz	"NSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEEE"
	.size	_ZTSNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEEE, 111

	.type	_ZTSNSt3__110__function6__baseIFvP6ObjectEEE,@object # @_ZTSNSt3__110__function6__baseIFvP6ObjectEEE
	.section	.rodata._ZTSNSt3__110__function6__baseIFvP6ObjectEEE,"aG",@progbits,_ZTSNSt3__110__function6__baseIFvP6ObjectEEE,comdat
	.weak	_ZTSNSt3__110__function6__baseIFvP6ObjectEEE
	.align	16
_ZTSNSt3__110__function6__baseIFvP6ObjectEEE:
	.asciz	"NSt3__110__function6__baseIFvP6ObjectEEE"
	.size	_ZTSNSt3__110__function6__baseIFvP6ObjectEEE, 41

	.type	_ZTINSt3__110__function6__baseIFvP6ObjectEEE,@object # @_ZTINSt3__110__function6__baseIFvP6ObjectEEE
	.section	.rodata._ZTINSt3__110__function6__baseIFvP6ObjectEEE,"aG",@progbits,_ZTINSt3__110__function6__baseIFvP6ObjectEEE,comdat
	.weak	_ZTINSt3__110__function6__baseIFvP6ObjectEEE
	.align	8
_ZTINSt3__110__function6__baseIFvP6ObjectEEE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSNSt3__110__function6__baseIFvP6ObjectEEE
	.size	_ZTINSt3__110__function6__baseIFvP6ObjectEEE, 16

	.type	_ZTINSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEEE,@object # @"_ZTINSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEEE"
	.section	.rodata,"a",@progbits
	.align	16
_ZTINSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEEE
	.quad	_ZTINSt3__110__function6__baseIFvP6ObjectEEE
	.size	_ZTINSt3__110__function6__funcIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0NS_9allocatorIS5_EEFvP6ObjectEEE, 24

	.type	_ZTSZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0,@object # @"_ZTSZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0"
	.align	16
_ZTSZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0:
	.asciz	"ZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0"
	.size	_ZTSZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0, 52

	.type	_ZTIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0,@object # @"_ZTIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0"
	.align	8
_ZTIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0
	.size	_ZTIZL23BM_std_function_poly_cbRN9benchmark5StateEE3$_0, 16

	.type	_ZTV7Derived,@object    # @_ZTV7Derived
	.section	.rodata._ZTV7Derived,"aG",@progbits,_ZTV7Derived,comdat
	.weak	_ZTV7Derived
	.align	8
_ZTV7Derived:
	.quad	0
	.quad	_ZTI7Derived
	.quad	_ZN7Derived12fun_functionEi
	.size	_ZTV7Derived, 24

	.type	_ZTS7Derived,@object    # @_ZTS7Derived
	.section	.rodata._ZTS7Derived,"aG",@progbits,_ZTS7Derived,comdat
	.weak	_ZTS7Derived
_ZTS7Derived:
	.asciz	"7Derived"
	.size	_ZTS7Derived, 9

	.type	_ZTS4Base,@object       # @_ZTS4Base
	.section	.rodata._ZTS4Base,"aG",@progbits,_ZTS4Base,comdat
	.weak	_ZTS4Base
_ZTS4Base:
	.asciz	"4Base"
	.size	_ZTS4Base, 6

	.type	_ZTI4Base,@object       # @_ZTI4Base
	.section	.rodata._ZTI4Base,"aG",@progbits,_ZTI4Base,comdat
	.weak	_ZTI4Base
	.align	8
_ZTI4Base:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS4Base
	.size	_ZTI4Base, 16

	.type	_ZTI7Derived,@object    # @_ZTI7Derived
	.section	.rodata._ZTI7Derived,"aG",@progbits,_ZTI7Derived,comdat
	.weak	_ZTI7Derived
	.align	16
_ZTI7Derived:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS7Derived
	.quad	_ZTI4Base
	.size	_ZTI7Derived, 24

	.type	_ZTV5Dummy,@object      # @_ZTV5Dummy
	.section	.rodata._ZTV5Dummy,"aG",@progbits,_ZTV5Dummy,comdat
	.weak	_ZTV5Dummy
	.align	8
_ZTV5Dummy:
	.quad	0
	.quad	_ZTI5Dummy
	.quad	_ZN5Dummy12fun_functionEi
	.size	_ZTV5Dummy, 24

	.type	_ZTS5Dummy,@object      # @_ZTS5Dummy
	.section	.rodata._ZTS5Dummy,"aG",@progbits,_ZTS5Dummy,comdat
	.weak	_ZTS5Dummy
_ZTS5Dummy:
	.asciz	"5Dummy"
	.size	_ZTS5Dummy, 7

	.type	_ZTI5Dummy,@object      # @_ZTI5Dummy
	.section	.rodata._ZTI5Dummy,"aG",@progbits,_ZTI5Dummy,comdat
	.weak	_ZTI5Dummy
	.align	16
_ZTI5Dummy:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS5Dummy
	.quad	_ZTI4Base
	.size	_ZTI5Dummy, 24

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"range_.size() > pos"
	.size	.L.str.15, 20

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"/home/arun/benchmark-master/include/benchmark/benchmark_api.h"
	.size	.L.str.16, 62

	.type	.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm,@object # @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm
.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm:
	.asciz	"int benchmark::State::range(std::size_t) const"
	.size	.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm, 47

	.type	_ZTVNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE,@object # @_ZTVNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE
	.section	.rodata._ZTVNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE,"aG",@progbits,_ZTVNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE,comdat
	.weak	_ZTVNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE
	.align	8
_ZTVNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE:
	.quad	0
	.quad	_ZTINSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE
	.quad	_ZNSt3__119__shared_weak_countD2Ev
	.quad	_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEED0Ev
	.quad	_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE16__on_zero_sharedEv
	.quad	_ZNKSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE13__get_deleterERKSt9type_info
	.quad	_ZNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEE21__on_zero_shared_weakEv
	.size	_ZTVNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE, 56

	.type	_ZTSNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE,@object # @_ZTSNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE
	.section	.rodata._ZTSNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE,"aG",@progbits,_ZTSNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE,comdat
	.weak	_ZTSNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE
	.align	16
_ZTSNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE:
	.asciz	"NSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE"
	.size	_ZTSNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE, 59

	.type	_ZTINSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE,@object # @_ZTINSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE
	.section	.rodata._ZTINSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE,"aG",@progbits,_ZTINSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE,comdat
	.weak	_ZTINSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE
	.align	16
_ZTINSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE
	.quad	_ZTINSt3__119__shared_weak_countE
	.size	_ZTINSt3__120__shared_ptr_pointerIPvPFvS1_ENS_9allocatorIvEEEE, 24

	.type	_ZTSPFvPvE,@object      # @_ZTSPFvPvE
	.section	.rodata._ZTSPFvPvE,"aG",@progbits,_ZTSPFvPvE,comdat
	.weak	_ZTSPFvPvE
_ZTSPFvPvE:
	.asciz	"PFvPvE"
	.size	_ZTSPFvPvE, 7

	.section	.init_array,"aw",@init_array
	.align	8
	.quad	_GLOBAL__sub_I_bench_f_vf.cc

	.ident	"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
