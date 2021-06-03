	.file	"flybot.cpp"
	.section .rdata,"dr"
__ZStL19piecewise_construct:
	.space 1
	.section	.text$_ZnwjPv,"x"
	.linkonce discard
	.globl	__ZnwjPv
	.def	__ZnwjPv;	.scl	2;	.type	32;	.endef
__ZnwjPv:
LFB691:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	12(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE691:
	.section .rdata,"dr"
__ZStL13allocator_arg:
	.space 1
__ZStL6ignore:
	.space 1
.lcomm __ZStL8__ioinit,1,1
	.align 4
__ZN9__gnu_cxxL21__default_lock_policyE:
	.long	2
__ZStL10defer_lock:
	.space 1
__ZStL11try_to_lock:
	.space 1
__ZStL10adopt_lock:
	.space 1
	.align 4
__ZNSt15regex_constantsL5icaseE:
	.long	1
	.align 4
__ZNSt15regex_constantsL6nosubsE:
	.long	2
	.align 4
__ZNSt15regex_constantsL8optimizeE:
	.long	4
	.align 4
__ZNSt15regex_constantsL7collateE:
	.long	8
	.align 4
__ZNSt15regex_constantsL10ECMAScriptE:
	.long	16
	.align 4
__ZNSt15regex_constantsL5basicE:
	.long	32
	.align 4
__ZNSt15regex_constantsL8extendedE:
	.long	64
	.align 4
__ZNSt15regex_constantsL3awkE:
	.long	128
	.align 4
__ZNSt15regex_constantsL4grepE:
	.long	256
	.align 4
__ZNSt15regex_constantsL5egrepE:
	.long	512
	.align 4
__ZNSt15regex_constantsL12__polynomialE:
	.long	1024
	.align 4
__ZNSt15regex_constantsL13match_defaultE:
	.space 4
	.align 4
__ZNSt15regex_constantsL13match_not_bolE:
	.long	1
	.align 4
__ZNSt15regex_constantsL13match_not_eolE:
	.long	2
	.align 4
__ZNSt15regex_constantsL13match_not_bowE:
	.long	4
	.align 4
__ZNSt15regex_constantsL13match_not_eowE:
	.long	8
	.align 4
__ZNSt15regex_constantsL9match_anyE:
	.long	16
	.align 4
__ZNSt15regex_constantsL14match_not_nullE:
	.long	32
	.align 4
__ZNSt15regex_constantsL16match_continuousE:
	.long	64
	.align 4
__ZNSt15regex_constantsL16match_prev_availE:
	.long	128
	.align 4
__ZNSt15regex_constantsL14format_defaultE:
	.space 4
	.align 4
__ZNSt15regex_constantsL10format_sedE:
	.long	256
	.align 4
__ZNSt15regex_constantsL14format_no_copyE:
	.long	512
	.align 4
__ZNSt15regex_constantsL17format_first_onlyE:
	.long	1024
	.align 4
__ZNSt15regex_constantsL13error_collateE:
	.space 4
	.align 4
__ZNSt15regex_constantsL11error_ctypeE:
	.long	1
	.align 4
__ZNSt15regex_constantsL12error_escapeE:
	.long	2
	.align 4
__ZNSt15regex_constantsL13error_backrefE:
	.long	3
	.align 4
__ZNSt15regex_constantsL11error_brackE:
	.long	4
	.align 4
__ZNSt15regex_constantsL11error_parenE:
	.long	5
	.align 4
__ZNSt15regex_constantsL11error_braceE:
	.long	6
	.align 4
__ZNSt15regex_constantsL14error_badbraceE:
	.long	7
	.align 4
__ZNSt15regex_constantsL11error_rangeE:
	.long	8
	.align 4
__ZNSt15regex_constantsL11error_spaceE:
	.long	9
	.align 4
__ZNSt15regex_constantsL15error_badrepeatE:
	.long	10
	.align 4
__ZNSt15regex_constantsL16error_complexityE:
	.long	11
	.align 4
__ZNSt15regex_constantsL11error_stackE:
	.long	12
	.align 4
__ZNSt8__detailL19_S_invalid_state_idE:
	.long	-1
	.text
	.globl	__Z13combinatoricsPSt6vectorIS_IcSaIcEESaIS1_EEjjcci
	.def	__Z13combinatoricsPSt6vectorIS_IcSaIcEESaIS1_EEjjcci;	.scl	2;	.type	32;	.endef
__Z13combinatoricsPSt6vectorIS_IcSaIcEESaIS1_EEjjcci:
LFB7686:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$76, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	20(%ebp), %edx
	movl	24(%ebp), %eax
	movb	%dl, -60(%ebp)
	movb	%al, -64(%ebp)
	movl	%esp, %eax
	movl	%eax, -68(%ebp)
	cmpl	$1, 12(%ebp)
	je	L4
	cmpl	$1, 16(%ebp)
	jne	L5
L4:
	movl	$1, %eax
	cltd
	idivl	28(%ebp)
	movl	%edx, %eax
	jmp	L6
L5:
	movl	16(%ebp), %eax
	leal	-1(%eax), %ebx
	movl	12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZNSt6vectorIS_IcSaIcEESaIS1_EE2atEj
	subl	$4, %esp
	movl	%ebx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIcSaIcEE2atEj
	subl	$4, %esp
	movzbl	(%eax), %eax
	cmpb	-60(%ebp), %al
	sete	%al
	testb	%al, %al
	je	L7
	movl	$0, %eax
	jmp	L6
L7:
	movl	16(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -48(%ebp)
	movl	16(%ebp), %eax
	leal	0(,%eax,4), %esi
	movl	12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -52(%ebp)
	movl	16(%ebp), %ecx
	movl	$0, %ebx
	movl	12(%ebp), %eax
	movl	$0, %edx
	movl	%ebx, %edi
	imull	%eax, %edi
	movl	%edi, -72(%ebp)
	movl	%edx, %edi
	imull	%ecx, %edi
	addl	-72(%ebp), %edi
	mull	%ecx
	leal	(%edi,%edx), %ecx
	movl	%ecx, %edx
	movl	16(%ebp), %ecx
	movl	$0, %ebx
	movl	12(%ebp), %eax
	movl	$0, %edx
	movl	%ebx, %edi
	imull	%eax, %edi
	movl	%edi, -72(%ebp)
	movl	%edx, %edi
	imull	%ecx, %edi
	addl	-72(%ebp), %edi
	mull	%ecx
	leal	(%edi,%edx), %ecx
	movl	%ecx, %edx
	movl	16(%ebp), %eax
	imull	12(%ebp), %eax
	sall	$2, %eax
	leal	3(%eax), %edx
	movl	$16, %eax
	subl	$1, %eax
	addl	%edx, %eax
	movl	$16, %ebx
	movl	$0, %edx
	divl	%ebx
	imull	$16, %eax, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	leal	4(%esp), %eax
	addl	$3, %eax
	shrl	$2, %eax
	sall	$2, %eax
	movl	%eax, -56(%ebp)
	movl	$0, (%esp)
	movl	8(%ebp), %ecx
	call	__ZNSt6vectorIS_IcSaIcEESaIS1_EE2atEj
	subl	$4, %esp
	movl	$0, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIcSaIcEE2atEj
	subl	$4, %esp
	movzbl	(%eax), %eax
	cmpb	-60(%ebp), %al
	sete	%al
	testb	%al, %al
	je	L8
	movl	-56(%ebp), %eax
	movl	$0, (%eax)
	jmp	L9
L8:
	movl	-56(%ebp), %eax
	movl	$1, (%eax)
L9:
	movl	$1, -28(%ebp)
L13:
	movl	-28(%ebp), %eax
	cmpl	12(%ebp), %eax
	jnb	L10
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZNSt6vectorIS_IcSaIcEESaIS1_EE2atEj
	subl	$4, %esp
	movl	$0, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIcSaIcEE2atEj
	subl	$4, %esp
	movzbl	(%eax), %eax
	cmpb	-60(%ebp), %al
	sete	%al
	testb	%al, %al
	je	L11
	movl	%esi, %edx
	shrl	$2, %edx
	movl	-56(%ebp), %eax
	imull	-28(%ebp), %edx
	movl	$0, (%eax,%edx,4)
	jmp	L12
L11:
	movl	%esi, %ebx
	shrl	$2, %ebx
	movl	%esi, %ecx
	shrl	$2, %ecx
	movl	-28(%ebp), %eax
	leal	-1(%eax), %edx
	movl	-56(%ebp), %eax
	imull	%ecx, %edx
	movl	(%eax,%edx,4), %ecx
	movl	-56(%ebp), %eax
	imull	-28(%ebp), %ebx
	movl	%ebx, %edx
	movl	%ecx, (%eax,%edx,4)
L12:
	addl	$1, -28(%ebp)
	jmp	L13
L10:
	movl	$1, -32(%ebp)
L17:
	movl	-32(%ebp), %eax
	cmpl	16(%ebp), %eax
	jnb	L14
	movl	$0, (%esp)
	movl	8(%ebp), %ecx
	call	__ZNSt6vectorIS_IcSaIcEESaIS1_EE2atEj
	subl	$4, %esp
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZNSt6vectorIcSaIcEE2atEj
	subl	$4, %esp
	movzbl	(%eax), %eax
	cmpb	-60(%ebp), %al
	sete	%al
	testb	%al, %al
	je	L15
	movl	-56(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	$0, (%eax,%edx,4)
	jmp	L16
L15:
	movl	-32(%ebp), %eax
	leal	-1(%eax), %edx
	movl	-56(%ebp), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-56(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%ecx, (%eax,%edx,4)
L16:
	addl	$1, -32(%ebp)
	jmp	L17
L14:
	movl	$1, -36(%ebp)
L30:
	movl	-36(%ebp), %eax
	cmpl	12(%ebp), %eax
	jb	L18
	movl	-36(%ebp), %eax
	cmpl	16(%ebp), %eax
	jnb	L19
L18:
	movl	-36(%ebp), %eax
	cmpl	12(%ebp), %eax
	jnb	L20
	movl	-36(%ebp), %eax
	movl	%eax, -40(%ebp)
L24:
	movl	-40(%ebp), %eax
	cmpl	16(%ebp), %eax
	jnb	L20
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZNSt6vectorIS_IcSaIcEESaIS1_EE2atEj
	subl	$4, %esp
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZNSt6vectorIcSaIcEE2atEj
	subl	$4, %esp
	movzbl	(%eax), %eax
	cmpb	-60(%ebp), %al
	sete	%al
	testb	%al, %al
	je	L22
	movl	%esi, %edx
	shrl	$2, %edx
	movl	-56(%ebp), %eax
	movl	%edx, %ecx
	imull	-36(%ebp), %ecx
	movl	-40(%ebp), %edx
	addl	%ecx, %edx
	movl	$0, (%eax,%edx,4)
	jmp	L23
L22:
	movl	%esi, %edi
	shrl	$2, %edi
	movl	%esi, %ecx
	shrl	$2, %ecx
	movl	-36(%ebp), %eax
	leal	-1(%eax), %edx
	movl	-56(%ebp), %eax
	imull	%edx, %ecx
	movl	-40(%ebp), %edx
	addl	%ecx, %edx
	movl	(%eax,%edx,4), %ebx
	movl	%esi, %edx
	shrl	$2, %edx
	movl	-40(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -72(%ebp)
	movl	-56(%ebp), %ecx
	movl	%edx, %eax
	imull	-36(%ebp), %eax
	addl	-72(%ebp), %eax
	movl	(%ecx,%eax,4), %eax
	addl	%ebx, %eax
	movl	28(%ebp), %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %ebx
	movl	-56(%ebp), %eax
	imull	-36(%ebp), %edi
	movl	%edi, %ecx
	movl	-40(%ebp), %edx
	addl	%ecx, %edx
	movl	%ebx, (%eax,%edx,4)
L23:
	addl	$1, -40(%ebp)
	jmp	L24
L20:
	movl	-36(%ebp), %eax
	cmpl	16(%ebp), %eax
	jnb	L25
	movl	-36(%ebp), %eax
	movl	%eax, -44(%ebp)
L29:
	movl	-44(%ebp), %eax
	cmpl	12(%ebp), %eax
	jnb	L25
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZNSt6vectorIS_IcSaIcEESaIS1_EE2atEj
	subl	$4, %esp
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZNSt6vectorIcSaIcEE2atEj
	subl	$4, %esp
	movzbl	(%eax), %eax
	cmpb	-60(%ebp), %al
	sete	%al
	testb	%al, %al
	je	L27
	movl	%esi, %edx
	shrl	$2, %edx
	movl	-56(%ebp), %eax
	movl	%edx, %ecx
	imull	-44(%ebp), %ecx
	movl	-36(%ebp), %edx
	addl	%ecx, %edx
	movl	$0, (%eax,%edx,4)
	jmp	L28
L27:
	movl	%esi, %edi
	shrl	$2, %edi
	movl	%esi, %edx
	shrl	$2, %edx
	movl	-36(%ebp), %eax
	leal	-1(%eax), %ecx
	movl	-56(%ebp), %eax
	imull	-44(%ebp), %edx
	addl	%ecx, %edx
	movl	(%eax,%edx,4), %ebx
	movl	%esi, %edx
	shrl	$2, %edx
	movl	-44(%ebp), %eax
	subl	$1, %eax
	movl	-56(%ebp), %ecx
	imull	%eax, %edx
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	movl	(%ecx,%eax,4), %eax
	addl	%ebx, %eax
	movl	28(%ebp), %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %ebx
	movl	-56(%ebp), %eax
	imull	-44(%ebp), %edi
	movl	%edi, %ecx
	movl	-36(%ebp), %edx
	addl	%ecx, %edx
	movl	%ebx, (%eax,%edx,4)
L28:
	addl	$1, -44(%ebp)
	jmp	L29
L25:
	addl	$1, -36(%ebp)
	jmp	L30
L19:
	shrl	$2, %esi
	movl	%esi, %ebx
	movl	12(%ebp), %eax
	leal	-1(%eax), %edx
	movl	16(%ebp), %eax
	leal	-1(%eax), %ecx
	movl	-56(%ebp), %eax
	imull	%ebx, %edx
	addl	%ecx, %edx
	movl	(%eax,%edx,4), %eax
L6:
	movl	-68(%ebp), %esp
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7686:
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB7687:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA7687
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	subl	$80, %esp
	call	___main
	movb	$120, -17(%ebp)
	movb	$46, -18(%ebp)
	movl	$2147483647, -24(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	$__ZSt3cin, %ecx
LEHB0:
	call	__ZNSirsERi
	subl	$4, %esp
	movl	%eax, %edx
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZNSirsERi
LEHE0:
	subl	$4, %esp
	leal	-25(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSaISt6vectorIcSaIcEEEC1Ev
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	leal	-48(%ebp), %eax
	leal	-25(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	movl	%eax, %ecx
LEHB1:
	call	__ZNSt6vectorIS_IcSaIcEESaIS1_EEC1EjRKS2_
LEHE1:
	subl	$8, %esp
	leal	-25(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSaISt6vectorIcSaIcEEED1Ev
	movl	$0, -12(%ebp)
L36:
	movl	-32(%ebp), %eax
	cmpl	%eax, -12(%ebp)
	jnb	L33
	movl	$0, -16(%ebp)
L35:
	movl	-32(%ebp), %eax
	cmpl	%eax, -16(%ebp)
	jnb	L34
	leal	-49(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$__ZSt3cin, (%esp)
LEHB2:
	call	__ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_
	leal	-48(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIS_IcSaIcEESaIS1_EEixEj
	subl	$4, %esp
	movl	%eax, %edx
	leal	-49(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZNSt6vectorIcSaIcEE9push_backERKc
	subl	$4, %esp
	addl	$1, -16(%ebp)
	jmp	L35
L34:
	addl	$1, -12(%ebp)
	jmp	L36
L33:
	movl	-36(%ebp), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	$2147483647, 20(%esp)
	movl	$46, 16(%esp)
	movl	$120, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z13combinatoricsPSt6vectorIS_IcSaIcEESaIS1_EEjjcci
	movl	%eax, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSolsEj
LEHE2:
	subl	$4, %esp
	movl	$0, %ebx
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt6vectorIS_IcSaIcEESaIS1_EED1Ev
	movl	%ebx, %eax
	jmp	L42
L40:
	movl	%eax, %ebx
	leal	-25(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSaISt6vectorIcSaIcEEED1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
LEHB3:
	call	__Unwind_Resume
L41:
	movl	%eax, %ebx
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt6vectorIS_IcSaIcEESaIS1_EED1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
	call	__Unwind_Resume
LEHE3:
L42:
	leal	-8(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7687:
	.def	___gxx_personality_v0;	.scl	2;	.type	32;	.endef
	.section	.gcc_except_table,"w"
LLSDA7687:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE7687-LLSDACSB7687
LLSDACSB7687:
	.uleb128 LEHB0-LFB7687
	.uleb128 LEHE0-LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB1-LFB7687
	.uleb128 LEHE1-LEHB1
	.uleb128 L40-LFB7687
	.uleb128 0
	.uleb128 LEHB2-LFB7687
	.uleb128 LEHE2-LEHB2
	.uleb128 L41-LFB7687
	.uleb128 0
	.uleb128 LEHB3-LFB7687
	.uleb128 LEHE3-LEHB3
	.uleb128 0
	.uleb128 0
LLSDACSE7687:
	.text
	.section	.text$_ZNSt6vectorIS_IcSaIcEESaIS1_EE2atEj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIS_IcSaIcEESaIS1_EE2atEj
	.def	__ZNSt6vectorIS_IcSaIcEESaIS1_EE2atEj;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIS_IcSaIcEESaIS1_EE2atEj:
LFB7956:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNKSt6vectorIS_IcSaIcEESaIS1_EE14_M_range_checkEj
	subl	$4, %esp
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIS_IcSaIcEESaIS1_EEixEj
	subl	$4, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE7956:
	.section	.text$_ZNSt6vectorIcSaIcEE2atEj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIcSaIcEE2atEj
	.def	__ZNSt6vectorIcSaIcEE2atEj;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIcSaIcEE2atEj:
LFB7957:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNKSt6vectorIcSaIcEE14_M_range_checkEj
	subl	$4, %esp
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIcSaIcEEixEj
	subl	$4, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE7957:
	.section	.text$_ZNSaISt6vectorIcSaIcEEEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSaISt6vectorIcSaIcEEEC1Ev
	.def	__ZNSaISt6vectorIcSaIcEEEC1Ev;	.scl	2;	.type	32;	.endef
__ZNSaISt6vectorIcSaIcEEEC1Ev:
LFB7960:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7960:
	.section	.text$_ZNSaISt6vectorIcSaIcEEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSaISt6vectorIcSaIcEEED2Ev
	.def	__ZNSaISt6vectorIcSaIcEEED2Ev;	.scl	2;	.type	32;	.endef
__ZNSaISt6vectorIcSaIcEEED2Ev:
LFB7962:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7962:
	.section	.text$_ZNSaISt6vectorIcSaIcEEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSaISt6vectorIcSaIcEEED1Ev
	.def	__ZNSaISt6vectorIcSaIcEEED1Ev;	.scl	2;	.type	32;	.endef
__ZNSaISt6vectorIcSaIcEEED1Ev:
LFB7963:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7963:
	.section	.text$_ZNSt6vectorIS_IcSaIcEESaIS1_EEC1EjRKS2_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIS_IcSaIcEESaIS1_EEC1EjRKS2_
	.def	__ZNSt6vectorIS_IcSaIcEESaIS1_EEC1EjRKS2_;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIS_IcSaIcEESaIS1_EEC1EjRKS2_:
LFB7966:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA7966
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
LEHB4:
	call	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC2EjRKS3_
LEHE4:
	subl	$8, %esp
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
LEHB5:
	call	__ZNSt6vectorIS_IcSaIcEESaIS1_EE21_M_default_initializeEj
LEHE5:
	subl	$4, %esp
	jmp	L53
L52:
	movl	%eax, %ebx
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
LEHB6:
	call	__Unwind_Resume
LEHE6:
L53:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE7966:
	.section	.gcc_except_table,"w"
LLSDA7966:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE7966-LLSDACSB7966
LLSDACSB7966:
	.uleb128 LEHB4-LFB7966
	.uleb128 LEHE4-LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB5-LFB7966
	.uleb128 LEHE5-LEHB5
	.uleb128 L52-LFB7966
	.uleb128 0
	.uleb128 LEHB6-LFB7966
	.uleb128 LEHE6-LEHB6
	.uleb128 0
	.uleb128 0
LLSDACSE7966:
	.section	.text$_ZNSt6vectorIS_IcSaIcEESaIS1_EEC1EjRKS2_,"x"
	.linkonce discard
	.section	.text$_ZNSt6vectorIS_IcSaIcEESaIS1_EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIS_IcSaIcEESaIS1_EED1Ev
	.def	__ZNSt6vectorIS_IcSaIcEESaIS1_EED1Ev;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIS_IcSaIcEESaIS1_EED1Ev:
LFB7969:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA7969
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv
	movl	%eax, %ecx
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7969:
	.section	.gcc_except_table,"w"
LLSDA7969:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE7969-LLSDACSB7969
LLSDACSB7969:
LLSDACSE7969:
	.section	.text$_ZNSt6vectorIS_IcSaIcEESaIS1_EED1Ev,"x"
	.linkonce discard
	.section	.text$_ZNSt6vectorIS_IcSaIcEESaIS1_EEixEj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIS_IcSaIcEESaIS1_EEixEj
	.def	__ZNSt6vectorIS_IcSaIcEESaIS1_EEixEj;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIS_IcSaIcEESaIS1_EEixEj:
LFB7974:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE7974:
	.section	.text$_ZNSt6vectorIcSaIcEE9push_backERKc,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIcSaIcEE9push_backERKc
	.def	__ZNSt6vectorIcSaIcEE9push_backERKc;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIcSaIcEE9push_backERKc:
LFB7975:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	je	L58
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	L60
L58:
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIcSaIcEE19_M_emplace_back_auxIJRKcEEEvDpOT_
	subl	$4, %esp
L60:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE7975:
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\0"
	.section	.text$_ZNKSt6vectorIS_IcSaIcEESaIS1_EE14_M_range_checkEj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNKSt6vectorIS_IcSaIcEESaIS1_EE14_M_range_checkEj
	.def	__ZNKSt6vectorIS_IcSaIcEESaIS1_EE14_M_range_checkEj;	.scl	2;	.type	32;	.endef
__ZNKSt6vectorIS_IcSaIcEESaIS1_EE14_M_range_checkEj:
LFB8085:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIS_IcSaIcEESaIS1_EE4sizeEv
	cmpl	8(%ebp), %eax
	setbe	%al
	testb	%al, %al
	je	L63
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIS_IcSaIcEESaIS1_EE4sizeEv
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	__ZSt24__throw_out_of_range_fmtPKcz
L63:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE8085:
	.section	.text$_ZNKSt6vectorIcSaIcEE14_M_range_checkEj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNKSt6vectorIcSaIcEE14_M_range_checkEj
	.def	__ZNKSt6vectorIcSaIcEE14_M_range_checkEj;	.scl	2;	.type	32;	.endef
__ZNKSt6vectorIcSaIcEE14_M_range_checkEj:
LFB8086:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIcSaIcEE4sizeEv
	cmpl	8(%ebp), %eax
	setbe	%al
	testb	%al, %al
	je	L66
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIcSaIcEE4sizeEv
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	__ZSt24__throw_out_of_range_fmtPKcz
L66:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE8086:
	.section	.text$_ZNSt6vectorIcSaIcEEixEj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIcSaIcEEixEj
	.def	__ZNSt6vectorIcSaIcEEixEj;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIcSaIcEEixEj:
LFB8087:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE8087:
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2Ev
	.def	__ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2Ev;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2Ev:
LFB8089:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8089:
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED2Ev
	.def	__ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED2Ev;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED2Ev:
LFB8092:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8092:
	.section	.text$_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD1Ev
	.def	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD1Ev:
LFB8097:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSaISt6vectorIcSaIcEEED2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8097:
	.section	.text$_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC2EjRKS3_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC2EjRKS3_
	.def	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC2EjRKS3_;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC2EjRKS3_:
LFB8098:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA8098
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC1ERKS3_
	subl	$4, %esp
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
LEHB7:
	call	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_M_create_storageEj
LEHE7:
	subl	$4, %esp
	jmp	L75
L74:
	movl	%eax, %ebx
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
LEHB8:
	call	__Unwind_Resume
LEHE8:
L75:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE8098:
	.section	.gcc_except_table,"w"
LLSDA8098:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE8098-LLSDACSB8098
LLSDACSB8098:
	.uleb128 LEHB7-LFB8098
	.uleb128 LEHE7-LEHB7
	.uleb128 L74-LFB8098
	.uleb128 0
	.uleb128 LEHB8-LFB8098
	.uleb128 LEHE8-LEHB8
	.uleb128 0
	.uleb128 0
LLSDACSE8098:
	.section	.text$_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC2EjRKS3_,"x"
	.linkonce discard
	.section	.text$_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev
	.def	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev:
LFB8101:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA8101
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$2, %eax
	imull	$-1431655765, %eax, %eax
	movl	%eax, %ecx
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_j
	subl	$8, %esp
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8101:
	.section	.gcc_except_table,"w"
LLSDA8101:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE8101-LLSDACSB8101
LLSDACSB8101:
LLSDACSE8101:
	.section	.text$_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev,"x"
	.linkonce discard
	.section	.text$_ZNSt6vectorIS_IcSaIcEESaIS1_EE21_M_default_initializeEj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIS_IcSaIcEESaIS1_EE21_M_default_initializeEj
	.def	__ZNSt6vectorIS_IcSaIcEESaIS1_EE21_M_default_initializeEj;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIS_IcSaIcEESaIS1_EE21_M_default_initializeEj:
LFB8103:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt27__uninitialized_default_n_aIPSt6vectorIcSaIcEEjS2_ET_S4_T0_RSaIT1_E
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE8103:
	.section	.text$_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv
	.def	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv:
LFB8104:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8104:
	.section	.text$_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E,"x"
	.linkonce discard
	.globl	__ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E
	.def	__ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E;	.scl	2;	.type	32;	.endef
__ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E:
LFB8105:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt8_DestroyIPSt6vectorIcSaIcEEEvT_S4_
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8105:
	.section	.text$_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE,"x"
	.linkonce discard
	.globl	__ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE
	.def	__ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE;	.scl	2;	.type	32;	.endef
__ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE:
LFB8111:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8111:
	.section	.text$_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_,"x"
	.linkonce discard
	.globl	__ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_
	.def	__ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_;	.scl	2;	.type	32;	.endef
__ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_:
LFB8110:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_
	subl	$8, %esp
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8110:
	.section .rdata,"dr"
LC1:
	.ascii "vector::_M_emplace_back_aux\0"
	.section	.text$_ZNSt6vectorIcSaIcEE19_M_emplace_back_auxIJRKcEEEvDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIcSaIcEE19_M_emplace_back_auxIJRKcEEEvDpOT_
	.def	__ZNSt6vectorIcSaIcEE19_M_emplace_back_auxIJRKcEEEvDpOT_;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIcSaIcEE19_M_emplace_back_auxIJRKcEEEvDpOT_:
LFB8112:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA8112
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	$LC1, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, %ecx
LEHB9:
	call	__ZNKSt6vectorIcSaIcEE12_M_check_lenEjPKc
	subl	$8, %esp
	movl	%eax, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIcSaIcEE11_M_allocateEj
LEHE9:
	subl	$4, %esp
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE
	movl	%eax, %ebx
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIcSaIcEE4sizeEv
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%ebx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_
	movl	$0, -12(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	movl	%eax, %ecx
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	-20(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
LEHB10:
	call	__ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_
LEHE10:
	movl	%eax, -12(%ebp)
	addl	$1, -12(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	movl	%eax, %ecx
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
LEHB11:
	call	__ZSt8_DestroyIPccEvT_S1_RSaIT0_E
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcj
LEHE11:
	subl	$8, %esp
	movl	-28(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	-28(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	L91
L89:
	movl	%eax, (%esp)
	call	___cxa_begin_catch
	cmpl	$0, -12(%ebp)
	jne	L86
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIcSaIcEE4sizeEv
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
LEHB12:
	call	__ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_
	jmp	L87
L86:
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt8_DestroyIPccEvT_S1_RSaIT0_E
L87:
	movl	-28(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcj
	subl	$8, %esp
	call	___cxa_rethrow
LEHE12:
L90:
	movl	%eax, %ebx
	call	___cxa_end_catch
	movl	%ebx, %eax
	movl	%eax, (%esp)
LEHB13:
	call	__Unwind_Resume
LEHE13:
L91:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE8112:
	.section	.gcc_except_table,"w"
	.align 4
LLSDA8112:
	.byte	0xff
	.byte	0
	.uleb128 LLSDATT8112-LLSDATTD8112
LLSDATTD8112:
	.byte	0x1
	.uleb128 LLSDACSE8112-LLSDACSB8112
LLSDACSB8112:
	.uleb128 LEHB9-LFB8112
	.uleb128 LEHE9-LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB10-LFB8112
	.uleb128 LEHE10-LEHB10
	.uleb128 L89-LFB8112
	.uleb128 0x1
	.uleb128 LEHB11-LFB8112
	.uleb128 LEHE11-LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB12-LFB8112
	.uleb128 LEHE12-LEHB12
	.uleb128 L90-LFB8112
	.uleb128 0
	.uleb128 LEHB13-LFB8112
	.uleb128 LEHE13-LEHB13
	.uleb128 0
	.uleb128 0
LLSDACSE8112:
	.byte	0x1
	.byte	0
	.align 4
	.long	0
LLSDATT8112:
	.section	.text$_ZNSt6vectorIcSaIcEE19_M_emplace_back_auxIJRKcEEEvDpOT_,"x"
	.linkonce discard
	.section	.text$_ZNKSt6vectorIS_IcSaIcEESaIS1_EE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNKSt6vectorIS_IcSaIcEESaIS1_EE4sizeEv
	.def	__ZNKSt6vectorIS_IcSaIcEESaIS1_EE4sizeEv;	.scl	2;	.type	32;	.endef
__ZNKSt6vectorIS_IcSaIcEESaIS1_EE4sizeEv:
LFB8155:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$2, %eax
	imull	$-1431655765, %eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8155:
	.section	.text$_ZNKSt6vectorIcSaIcEE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNKSt6vectorIcSaIcEE4sizeEv
	.def	__ZNKSt6vectorIcSaIcEE4sizeEv;	.scl	2;	.type	32;	.endef
__ZNKSt6vectorIcSaIcEE4sizeEv:
LFB8156:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8156:
	.section	.text$_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC1ERKS3_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC1ERKS3_
	.def	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC1ERKS3_;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC1ERKS3_:
LFB8159:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSaISt6vectorIcSaIcEEEC2ERKS2_
	subl	$4, %esp
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-12(%ebp), %eax
	movl	$0, 8(%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE8159:
	.section	.text$_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_M_create_storageEj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_M_create_storageEj
	.def	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_M_create_storageEj;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_M_create_storageEj:
LFB8160:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE11_M_allocateEj
	subl	$4, %esp
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-12(%ebp), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE8160:
	.section	.text$_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_j,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_j
	.def	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_j;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_j:
LFB8161:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	cmpl	$0, 8(%ebp)
	je	L100
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE10deallocateERS3_PS2_j
L100:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE8161:
	.section	.text$_ZSt27__uninitialized_default_n_aIPSt6vectorIcSaIcEEjS2_ET_S4_T0_RSaIT1_E,"x"
	.linkonce discard
	.globl	__ZSt27__uninitialized_default_n_aIPSt6vectorIcSaIcEEjS2_ET_S4_T0_RSaIT1_E
	.def	__ZSt27__uninitialized_default_n_aIPSt6vectorIcSaIcEEjS2_ET_S4_T0_RSaIT1_E;	.scl	2;	.type	32;	.endef
__ZSt27__uninitialized_default_n_aIPSt6vectorIcSaIcEEjS2_ET_S4_T0_RSaIT1_E:
LFB8162:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt25__uninitialized_default_nIPSt6vectorIcSaIcEEjET_S4_T0_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8162:
	.section	.text$_ZSt8_DestroyIPSt6vectorIcSaIcEEEvT_S4_,"x"
	.linkonce discard
	.globl	__ZSt8_DestroyIPSt6vectorIcSaIcEEEvT_S4_
	.def	__ZSt8_DestroyIPSt6vectorIcSaIcEEEvT_S4_;	.scl	2;	.type	32;	.endef
__ZSt8_DestroyIPSt6vectorIcSaIcEEEvT_S4_:
LFB8163:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIcSaIcEEEEvT_S6_
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8163:
	.section	.text$_ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_
	.def	__ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_:
LFB8168:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	movl	%ecx, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE
	movzbl	(%eax), %ebx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	__ZnwjPv
	testl	%eax, %eax
	je	L107
	movb	%bl, (%eax)
L107:
	nop
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE8168:
	.section	.text$_ZSt3maxIjERKT_S2_S2_,"x"
	.linkonce discard
	.globl	__ZSt3maxIjERKT_S2_S2_
	.def	__ZSt3maxIjERKT_S2_S2_;	.scl	2;	.type	32;	.endef
__ZSt3maxIjERKT_S2_S2_:
LFB8170:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jnb	L109
	movl	12(%ebp), %eax
	jmp	L110
L109:
	movl	8(%ebp), %eax
L110:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8170:
	.section	.text$_ZNKSt6vectorIcSaIcEE12_M_check_lenEjPKc,"x"
	.linkonce discard
	.align 2
	.globl	__ZNKSt6vectorIcSaIcEE12_M_check_lenEjPKc
	.def	__ZNKSt6vectorIcSaIcEE12_M_check_lenEjPKc;	.scl	2;	.type	32;	.endef
__ZNKSt6vectorIcSaIcEE12_M_check_lenEjPKc:
LFB8169:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIcSaIcEE8max_sizeEv
	movl	%eax, %ebx
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIcSaIcEE4sizeEv
	movl	%ebx, %edx
	subl	%eax, %edx
	movl	8(%ebp), %eax
	cmpl	%eax, %edx
	setb	%al
	testb	%al, %al
	je	L112
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt20__throw_length_errorPKc
L112:
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIcSaIcEE4sizeEv
	movl	%eax, %ebx
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIcSaIcEE4sizeEv
	movl	%eax, -16(%ebp)
	leal	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt3maxIjERKT_S2_S2_
	movl	(%eax), %eax
	addl	%ebx, %eax
	movl	%eax, -12(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIcSaIcEE4sizeEv
	cmpl	-12(%ebp), %eax
	ja	L113
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIcSaIcEE8max_sizeEv
	cmpl	-12(%ebp), %eax
	jnb	L114
L113:
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIcSaIcEE8max_sizeEv
	jmp	L115
L114:
	movl	-12(%ebp), %eax
L115:
	addl	$52, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE8169:
	.section	.text$_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIcSaIcEE11_M_allocateEj
	.def	__ZNSt12_Vector_baseIcSaIcEE11_M_allocateEj;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIcSaIcEE11_M_allocateEj:
LFB8171:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	cmpl	$0, 8(%ebp)
	je	L118
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZNSt16allocator_traitsISaIcEE8allocateERS0_j
	jmp	L120
L118:
	movl	$0, %eax
L120:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE8171:
	.section	.text$_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	.def	__ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv:
LFB8172:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8172:
	.section	.text$_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_,"x"
	.linkonce discard
	.globl	__ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_
	.def	__ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_;	.scl	2;	.type	32;	.endef
__ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_:
LFB8173:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt32__make_move_if_noexcept_iteratorIcSt13move_iteratorIPcEET0_PT_
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt32__make_move_if_noexcept_iteratorIcSt13move_iteratorIPcEET0_PT_
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%edx, (%esp)
	call	__ZSt22__uninitialized_copy_aISt13move_iteratorIPcES1_cET0_T_S4_S3_RSaIT1_E
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8173:
	.section	.text$_ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_,"x"
	.linkonce discard
	.globl	__ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_
	.def	__ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_;	.scl	2;	.type	32;	.endef
__ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_:
LFB8174:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_
	subl	$4, %esp
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8174:
	.section	.text$_ZSt8_DestroyIPccEvT_S1_RSaIT0_E,"x"
	.linkonce discard
	.globl	__ZSt8_DestroyIPccEvT_S1_RSaIT0_E
	.def	__ZSt8_DestroyIPccEvT_S1_RSaIT0_E;	.scl	2;	.type	32;	.endef
__ZSt8_DestroyIPccEvT_S1_RSaIT0_E:
LFB8175:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt8_DestroyIPcEvT_S1_
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8175:
	.section	.text$_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcj
	.def	__ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcj;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcj:
LFB8176:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	cmpl	$0, 8(%ebp)
	je	L129
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcj
L129:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE8176:
	.section	.text$_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcj,"x"
	.linkonce discard
	.globl	__ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcj
	.def	__ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcj;	.scl	2;	.type	32;	.endef
__ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcj:
LFB8178:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcj
	subl	$8, %esp
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8178:
	.section	.text$_ZNSaISt6vectorIcSaIcEEEC2ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSaISt6vectorIcSaIcEEEC2ERKS2_
	.def	__ZNSaISt6vectorIcSaIcEEEC2ERKS2_;	.scl	2;	.type	32;	.endef
__ZNSaISt6vectorIcSaIcEEEC2ERKS2_:
LFB8219:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2ERKS4_
	subl	$4, %esp
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE8219:
	.section	.text$_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE11_M_allocateEj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE11_M_allocateEj
	.def	__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE11_M_allocateEj;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE11_M_allocateEj:
LFB8221:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	cmpl	$0, 8(%ebp)
	je	L133
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8allocateERS3_j
	jmp	L135
L133:
	movl	$0, %eax
L135:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE8221:
	.section	.text$_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE10deallocateERS3_PS2_j,"x"
	.linkonce discard
	.globl	__ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE10deallocateERS3_PS2_j
	.def	__ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE10deallocateERS3_PS2_j;	.scl	2;	.type	32;	.endef
__ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE10deallocateERS3_PS2_j:
LFB8222:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE10deallocateEPS3_j
	subl	$8, %esp
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8222:
	.section	.text$_ZSt25__uninitialized_default_nIPSt6vectorIcSaIcEEjET_S4_T0_,"x"
	.linkonce discard
	.globl	__ZSt25__uninitialized_default_nIPSt6vectorIcSaIcEEjET_S4_T0_
	.def	__ZSt25__uninitialized_default_nIPSt6vectorIcSaIcEEjET_S4_T0_;	.scl	2;	.type	32;	.endef
__ZSt25__uninitialized_default_nIPSt6vectorIcSaIcEEjET_S4_T0_:
LFB8223:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movb	$1, -9(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt6vectorIcSaIcEEjEET_S6_T0_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8223:
	.section	.text$_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIcSaIcEEEEvT_S6_,"x"
	.linkonce discard
	.globl	__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIcSaIcEEEEvT_S6_
	.def	__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIcSaIcEEEEvT_S6_;	.scl	2;	.type	32;	.endef
__ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIcSaIcEEEEvT_S6_:
LFB8224:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
L141:
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	L142
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_
	movl	%eax, (%esp)
	call	__ZSt8_DestroyISt6vectorIcSaIcEEEvPT_
	addl	$12, 8(%ebp)
	jmp	L141
L142:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8224:
	.section	.text$_ZNKSt6vectorIcSaIcEE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNKSt6vectorIcSaIcEE8max_sizeEv
	.def	__ZNKSt6vectorIcSaIcEE8max_sizeEv;	.scl	2;	.type	32;	.endef
__ZNKSt6vectorIcSaIcEE8max_sizeEv:
LFB8227:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	movl	%eax, (%esp)
	call	__ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8227:
	.section	.text$_ZNSt16allocator_traitsISaIcEE8allocateERS0_j,"x"
	.linkonce discard
	.globl	__ZNSt16allocator_traitsISaIcEE8allocateERS0_j
	.def	__ZNSt16allocator_traitsISaIcEE8allocateERS0_j;	.scl	2;	.type	32;	.endef
__ZNSt16allocator_traitsISaIcEE8allocateERS0_j:
LFB8228:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN9__gnu_cxx13new_allocatorIcE8allocateEjPKv
	subl	$8, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8228:
	.section	.text$_ZSt32__make_move_if_noexcept_iteratorIcSt13move_iteratorIPcEET0_PT_,"x"
	.linkonce discard
	.globl	__ZSt32__make_move_if_noexcept_iteratorIcSt13move_iteratorIPcEET0_PT_
	.def	__ZSt32__make_move_if_noexcept_iteratorIcSt13move_iteratorIPcEET0_PT_;	.scl	2;	.type	32;	.endef
__ZSt32__make_move_if_noexcept_iteratorIcSt13move_iteratorIPcEET0_PT_:
LFB8229:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	leal	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt13move_iteratorIPcEC1ES0_
	subl	$4, %esp
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8229:
	.section	.text$_ZSt22__uninitialized_copy_aISt13move_iteratorIPcES1_cET0_T_S4_S3_RSaIT1_E,"x"
	.linkonce discard
	.globl	__ZSt22__uninitialized_copy_aISt13move_iteratorIPcES1_cET0_T_S4_S3_RSaIT1_E
	.def	__ZSt22__uninitialized_copy_aISt13move_iteratorIPcES1_cET0_T_S4_S3_RSaIT1_E;	.scl	2;	.type	32;	.endef
__ZSt22__uninitialized_copy_aISt13move_iteratorIPcES1_cET0_T_S4_S3_RSaIT1_E:
LFB8230:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt18uninitialized_copyISt13move_iteratorIPcES1_ET0_T_S4_S3_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8230:
	.section	.text$_ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_
	.def	__ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_:
LFB8231:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE8231:
	.section	.text$_ZSt8_DestroyIPcEvT_S1_,"x"
	.linkonce discard
	.globl	__ZSt8_DestroyIPcEvT_S1_
	.def	__ZSt8_DestroyIPcEvT_S1_;	.scl	2;	.type	32;	.endef
__ZSt8_DestroyIPcEvT_S1_:
LFB8232:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8232:
	.section	.text$_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcj,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcj
	.def	__ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcj;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcj:
LFB8234:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZdlPv
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE8234:
	.section	.text$_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_,"x"
	.linkonce discard
	.globl	__ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_
	.def	__ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_;	.scl	2;	.type	32;	.endef
__ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_:
LFB8260:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	8(%ebp), %ecx
	call	__ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8260:
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2ERKS4_,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2ERKS4_
	.def	__ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2ERKS4_;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2ERKS4_:
LFB8266:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE8266:
	.section	.text$_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8allocateERS3_j,"x"
	.linkonce discard
	.globl	__ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8allocateERS3_j
	.def	__ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8allocateERS3_j;	.scl	2;	.type	32;	.endef
__ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8allocateERS3_j:
LFB8268:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8allocateEjPKv
	subl	$8, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8268:
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE10deallocateEPS3_j,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE10deallocateEPS3_j
	.def	__ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE10deallocateEPS3_j;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE10deallocateEPS3_j:
LFB8269:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZdlPv
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE8269:
	.section	.text$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt6vectorIcSaIcEEjEET_S6_T0_,"x"
	.linkonce discard
	.globl	__ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt6vectorIcSaIcEEjEET_S6_T0_
	.def	__ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt6vectorIcSaIcEEjEET_S6_T0_;	.scl	2;	.type	32;	.endef
__ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt6vectorIcSaIcEEjEET_S6_T0_:
LFB8270:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
L162:
	cmpl	$0, 12(%ebp)
	je	L161
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_
	movl	%eax, (%esp)
	call	__ZSt10_ConstructISt6vectorIcSaIcEEJEEvPT_DpOT0_
	subl	$1, 12(%ebp)
	addl	$12, -12(%ebp)
	jmp	L162
L161:
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8270:
	.section	.text$_ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_,"x"
	.linkonce discard
	.globl	__ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_
	.def	__ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_;	.scl	2;	.type	32;	.endef
__ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_:
LFB8271:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8271:
	.section	.text$_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_,"x"
	.linkonce discard
	.globl	__ZSt8_DestroyISt6vectorIcSaIcEEEvPT_
	.def	__ZSt8_DestroyISt6vectorIcSaIcEEEvPT_;	.scl	2;	.type	32;	.endef
__ZSt8_DestroyISt6vectorIcSaIcEEEvPT_:
LFB8272:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	8(%ebp), %ecx
	call	__ZNSt6vectorIcSaIcEED1Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8272:
	.section	.text$_ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	.def	__ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
__ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv:
LFB8273:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8273:
	.section	.text$_ZN9__gnu_cxx13new_allocatorIcE8allocateEjPKv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorIcE8allocateEjPKv
	.def	__ZN9__gnu_cxx13new_allocatorIcE8allocateEjPKv;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorIcE8allocateEjPKv:
LFB8274:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv
	cmpl	8(%ebp), %eax
	setb	%al
	testb	%al, %al
	je	L170
	call	__ZSt17__throw_bad_allocv
L170:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__Znwj
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE8274:
	.section	.text$_ZNSt13move_iteratorIPcEC1ES0_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt13move_iteratorIPcEC1ES0_
	.def	__ZNSt13move_iteratorIPcEC1ES0_;	.scl	2;	.type	32;	.endef
__ZNSt13move_iteratorIPcEC1ES0_:
LFB8277:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE8277:
	.section	.text$_ZSt18uninitialized_copyISt13move_iteratorIPcES1_ET0_T_S4_S3_,"x"
	.linkonce discard
	.globl	__ZSt18uninitialized_copyISt13move_iteratorIPcES1_ET0_T_S4_S3_
	.def	__ZSt18uninitialized_copyISt13move_iteratorIPcES1_ET0_T_S4_S3_;	.scl	2;	.type	32;	.endef
__ZSt18uninitialized_copyISt13move_iteratorIPcES1_ET0_T_S4_S3_:
LFB8278:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movb	$1, -9(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPcES3_EET0_T_S6_S5_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8278:
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_,"x"
	.linkonce discard
	.globl	__ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_
	.def	__ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_;	.scl	2;	.type	32;	.endef
__ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_:
LFB8279:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8279:
	.section	.text$_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv
	.def	__ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv;	.scl	2;	.type	32;	.endef
__ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv:
LFB8303:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	$-1, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8303:
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8allocateEjPKv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8allocateEjPKv
	.def	__ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8allocateEjPKv;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8allocateEjPKv:
LFB8304:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8max_sizeEv
	cmpl	8(%ebp), %eax
	setb	%al
	testb	%al, %al
	je	L179
	call	__ZSt17__throw_bad_allocv
L179:
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	__Znwj
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE8304:
	.section	.text$_ZSt10_ConstructISt6vectorIcSaIcEEJEEvPT_DpOT0_,"x"
	.linkonce discard
	.globl	__ZSt10_ConstructISt6vectorIcSaIcEEJEEvPT_DpOT0_
	.def	__ZSt10_ConstructISt6vectorIcSaIcEEJEEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
__ZSt10_ConstructISt6vectorIcSaIcEEJEEvPT_DpOT0_:
LFB8305:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$12, (%esp)
	call	__ZnwjPv
	testl	%eax, %eax
	je	L184
	movl	%eax, %ecx
	call	__ZNSt6vectorIcSaIcEEC1Ev
L184:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8305:
	.section	.text$_ZNSt6vectorIcSaIcEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIcSaIcEED1Ev
	.def	__ZNSt6vectorIcSaIcEED1Ev;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIcSaIcEED1Ev:
LFB8308:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA8308
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	movl	%eax, %ecx
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt8_DestroyIPccEvT_S1_RSaIT0_E
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIcSaIcEED2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8308:
	.section	.gcc_except_table,"w"
LLSDA8308:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE8308-LLSDACSB8308
LLSDACSB8308:
LLSDACSE8308:
	.section	.text$_ZNSt6vectorIcSaIcEED1Ev,"x"
	.linkonce discard
	.section	.text$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPcES3_EET0_T_S6_S5_,"x"
	.linkonce discard
	.globl	__ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPcES3_EET0_T_S6_S5_
	.def	__ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPcES3_EET0_T_S6_S5_;	.scl	2;	.type	32;	.endef
__ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPcES3_EET0_T_S6_S5_:
LFB8309:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt4copyISt13move_iteratorIPcES1_ET0_T_S4_S3_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8309:
	.section	.text$_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8max_sizeEv
	.def	__ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8max_sizeEv;	.scl	2;	.type	32;	.endef
__ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8max_sizeEv:
LFB8318:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	$357913941, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8318:
	.section	.text$_ZNSt6vectorIcSaIcEEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIcSaIcEEC1Ev
	.def	__ZNSt6vectorIcSaIcEEC1Ev;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIcSaIcEEC1Ev:
LFB8321:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA8321
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIcSaIcEEC2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8321:
	.section	.gcc_except_table,"w"
LLSDA8321:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE8321-LLSDACSB8321
LLSDACSB8321:
LLSDACSE8321:
	.section	.text$_ZNSt6vectorIcSaIcEEC1Ev,"x"
	.linkonce discard
	.section	.text$_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIcSaIcEE12_Vector_implD1Ev
	.def	__ZNSt12_Vector_baseIcSaIcEE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIcSaIcEE12_Vector_implD1Ev:
LFB8325:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSaIcED2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8325:
	.section	.text$_ZNSt12_Vector_baseIcSaIcEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIcSaIcEED2Ev
	.def	__ZNSt12_Vector_baseIcSaIcEED2Ev;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIcSaIcEED2Ev:
LFB8326:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA8326
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcj
	subl	$8, %esp
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIcSaIcEE12_Vector_implD1Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8326:
	.section	.gcc_except_table,"w"
LLSDA8326:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE8326-LLSDACSB8326
LLSDACSB8326:
LLSDACSE8326:
	.section	.text$_ZNSt12_Vector_baseIcSaIcEED2Ev,"x"
	.linkonce discard
	.section	.text$_ZSt4copyISt13move_iteratorIPcES1_ET0_T_S4_S3_,"x"
	.linkonce discard
	.globl	__ZSt4copyISt13move_iteratorIPcES1_ET0_T_S4_S3_
	.def	__ZSt4copyISt13move_iteratorIPcES1_ET0_T_S4_S3_;	.scl	2;	.type	32;	.endef
__ZSt4copyISt13move_iteratorIPcES1_ET0_T_S4_S3_:
LFB8328:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__miter_baseIPcEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__miter_baseIPcEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%edx, (%esp)
	call	__ZSt14__copy_move_a2ILb1EPcS0_ET1_T0_S2_S1_
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8328:
	.section	.text$_ZNSt12_Vector_baseIcSaIcEEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIcSaIcEEC2Ev
	.def	__ZNSt12_Vector_baseIcSaIcEEC2Ev;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIcSaIcEEC2Ev:
LFB8332:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIcSaIcEE12_Vector_implC1Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8332:
	.section	.text$_ZSt12__miter_baseIPcEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E,"x"
	.linkonce discard
	.globl	__ZSt12__miter_baseIPcEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	.def	__ZSt12__miter_baseIPcEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E;	.scl	2;	.type	32;	.endef
__ZSt12__miter_baseIPcEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E:
LFB8334:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	leal	8(%ebp), %ecx
	call	__ZNKSt13move_iteratorIPcE4baseEv
	movl	%eax, (%esp)
	call	__ZSt12__miter_baseIPcET_S1_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8334:
	.section	.text$_ZSt14__copy_move_a2ILb1EPcS0_ET1_T0_S2_S1_,"x"
	.linkonce discard
	.globl	__ZSt14__copy_move_a2ILb1EPcS0_ET1_T0_S2_S1_
	.def	__ZSt14__copy_move_a2ILb1EPcS0_ET1_T0_S2_S1_;	.scl	2;	.type	32;	.endef
__ZSt14__copy_move_a2ILb1EPcS0_ET1_T0_S2_S1_:
LFB8335:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__niter_baseIPcET_S1_
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__niter_baseIPcET_S1_
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__niter_baseIPcET_S1_
	movl	%esi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt13__copy_move_aILb1EPcS0_ET1_T0_S2_S1_
	addl	$16, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8335:
	.section	.text$_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIcSaIcEE12_Vector_implC1Ev
	.def	__ZNSt12_Vector_baseIcSaIcEE12_Vector_implC1Ev;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIcSaIcEE12_Vector_implC1Ev:
LFB8338:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSaIcEC2Ev
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-12(%ebp), %eax
	movl	$0, 8(%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8338:
	.section	.text$_ZNKSt13move_iteratorIPcE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNKSt13move_iteratorIPcE4baseEv
	.def	__ZNKSt13move_iteratorIPcE4baseEv;	.scl	2;	.type	32;	.endef
__ZNKSt13move_iteratorIPcE4baseEv:
LFB8339:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8339:
	.section	.text$_ZSt12__miter_baseIPcET_S1_,"x"
	.linkonce discard
	.globl	__ZSt12__miter_baseIPcET_S1_
	.def	__ZSt12__miter_baseIPcET_S1_;	.scl	2;	.type	32;	.endef
__ZSt12__miter_baseIPcET_S1_:
LFB8340:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8340:
	.section	.text$_ZSt12__niter_baseIPcET_S1_,"x"
	.linkonce discard
	.globl	__ZSt12__niter_baseIPcET_S1_
	.def	__ZSt12__niter_baseIPcET_S1_;	.scl	2;	.type	32;	.endef
__ZSt12__niter_baseIPcET_S1_:
LFB8341:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8341:
	.section	.text$_ZSt13__copy_move_aILb1EPcS0_ET1_T0_S2_S1_,"x"
	.linkonce discard
	.globl	__ZSt13__copy_move_aILb1EPcS0_ET1_T0_S2_S1_
	.def	__ZSt13__copy_move_aILb1EPcS0_ET1_T0_S2_S1_;	.scl	2;	.type	32;	.endef
__ZSt13__copy_move_aILb1EPcS0_ET1_T0_S2_S1_:
LFB8342:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movb	$1, -9(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8342:
	.section	.text$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_,"x"
	.linkonce discard
	.globl	__ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_
	.def	__ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_;	.scl	2;	.type	32;	.endef
__ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_:
LFB8343:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L210
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_memmove
L210:
	movl	-12(%ebp), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8343:
	.text
	.def	___tcf_0;	.scl	3;	.type	32;	.endef
___tcf_0:
LFB8353:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	$__ZStL8__ioinit, %ecx
	call	__ZNSt8ios_base4InitD1Ev
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8353:
	.def	__Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
__Z41__static_initialization_and_destruction_0ii:
LFB8352:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$1, 8(%ebp)
	jne	L215
	cmpl	$65535, 12(%ebp)
	jne	L215
	movl	$__ZStL8__ioinit, %ecx
	call	__ZNSt8ios_base4InitC1Ev
	movl	$___tcf_0, (%esp)
	call	_atexit
L215:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8352:
	.def	__GLOBAL__sub_I__Z13combinatoricsPSt6vectorIS_IcSaIcEESaIS1_EEjjcci;	.scl	3;	.type	32;	.endef
__GLOBAL__sub_I__Z13combinatoricsPSt6vectorIS_IcSaIcEESaIS1_EEjjcci:
LFB8354:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$65535, 4(%esp)
	movl	$1, (%esp)
	call	__Z41__static_initialization_and_destruction_0ii
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8354:
	.section	.ctors,"w"
	.align 4
	.long	__GLOBAL__sub_I__Z13combinatoricsPSt6vectorIS_IcSaIcEESaIS1_EEjjcci
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	__ZNSirsERi;	.scl	2;	.type	32;	.endef
	.def	__ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_;	.scl	2;	.type	32;	.endef
	.def	__ZNSolsEj;	.scl	2;	.type	32;	.endef
	.def	__Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	__ZSt24__throw_out_of_range_fmtPKcz;	.scl	2;	.type	32;	.endef
	.def	___cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	___cxa_rethrow;	.scl	2;	.type	32;	.endef
	.def	___cxa_end_catch;	.scl	2;	.type	32;	.endef
	.def	__ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	__ZdlPv;	.scl	2;	.type	32;	.endef
	.def	__ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	__Znwj;	.scl	2;	.type	32;	.endef
	.def	__ZNSaIcED2Ev;	.scl	2;	.type	32;	.endef
	.def	__ZNSaIcEC2Ev;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	_atexit;	.scl	2;	.type	32;	.endef
