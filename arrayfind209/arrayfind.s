	.file	"arrayfind.cpp"
	.section .rdata,"dr"
__ZStL19piecewise_construct:
	.space 1
	.section	.text$_ZN9__gnu_cxx5__ops16__iter_less_iterEv,"x"
	.linkonce discard
	.globl	__ZN9__gnu_cxx5__ops16__iter_less_iterEv
	.def	__ZN9__gnu_cxx5__ops16__iter_less_iterEv;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx5__ops16__iter_less_iterEv:
LFB219:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE219:
	.section	.text$_ZN9__gnu_cxx5__ops15__iter_comp_valENS0_15_Iter_less_iterE,"x"
	.linkonce discard
	.globl	__ZN9__gnu_cxx5__ops15__iter_comp_valENS0_15_Iter_less_iterE
	.def	__ZN9__gnu_cxx5__ops15__iter_comp_valENS0_15_Iter_less_iterE;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx5__ops15__iter_comp_valENS0_15_Iter_less_iterE:
LFB222:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE222:
	.section	.text$_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE,"x"
	.linkonce discard
	.globl	__ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE
	.def	__ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE:
LFB225:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE225:
	.section	.text$_ZSt4__lgi,"x"
	.linkonce discard
	.globl	__ZSt4__lgi
	.def	__ZSt4__lgi;	.scl	2;	.type	32;	.endef
__ZSt4__lgi:
LFB306:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	bsrl	%eax, %eax
	xorl	$31, %eax
	movl	$31, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE306:
.lcomm __ZStL8__ioinit,1,1
	.text
	.globl	_arrayfind
	.def	_arrayfind;	.scl	2;	.type	32;	.endef
_arrayfind:
LFB1878:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	16(%ebp), %eax
	cmpl	12(%ebp), %eax
	jnb	L10
	movl	$-1, %eax
	jmp	L11
L10:
	movl	16(%ebp), %eax
	subl	12(%ebp), %eax
	shrl	%eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	cmpl	20(%ebp), %eax
	jne	L12
	movl	-12(%ebp), %eax
	jmp	L11
L12:
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	cmpl	20(%ebp), %eax
	jle	L13
	movl	-12(%ebp), %eax
	leal	-1(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_arrayfind
	jmp	L11
L13:
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_arrayfind
L11:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1878:
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB1879:
	.cfi_startproc
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
	subl	$64, %esp
	call	___main
	movl	%esp, %eax
	movl	%eax, %ebx
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	movl	$__ZSt3cin, %ecx
	call	__ZNSirsERi
	subl	$4, %esp
	movl	-36(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	addl	$1, %eax
	sall	$2, %eax
	leal	3(%eax), %edx
	movl	$16, %eax
	subl	$1, %eax
	addl	%edx, %eax
	movl	$16, %ecx
	movl	$0, %edx
	divl	%ecx
	imull	$16, %eax, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	leal	16(%esp), %eax
	addl	$3, %eax
	shrl	$2, %eax
	sall	$2, %eax
	movl	%eax, -28(%ebp)
	movl	$0, -12(%ebp)
L16:
	movl	-36(%ebp), %eax
	cmpl	%eax, -12(%ebp)
	jge	L15
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, (%esp)
	movl	$__ZSt3cin, %ecx
	call	__ZNSirsERi
	subl	$4, %esp
	addl	$1, -12(%ebp)
	jmp	L16
L15:
	movl	-28(%ebp), %eax
	movl	-36(%ebp), %edx
	sall	$2, %edx
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt4sortIPiEvT_S1_
	movl	$0, -16(%ebp)
L18:
	movl	-36(%ebp), %eax
	cmpl	%eax, -16(%ebp)
	jge	L17
	movl	-28(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSolsEi
	subl	$4, %esp
	movl	$32, 4(%esp)
	movl	%eax, (%esp)
	call	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	addl	$1, -16(%ebp)
	jmp	L18
L17:
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	movl	$__ZSt3cin, %ecx
	call	__ZNSirsERi
	subl	$4, %esp
	movl	$0, -20(%ebp)
L20:
	movl	-40(%ebp), %eax
	cmpl	%eax, -20(%ebp)
	jge	L19
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	movl	$__ZSt3cin, %ecx
	call	__ZNSirsERi
	subl	$4, %esp
	movl	-44(%ebp), %edx
	movl	-36(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_arrayfind
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSolsEi
	subl	$4, %esp
	movl	$10, 4(%esp)
	movl	%eax, (%esp)
	call	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	addl	$1, -20(%ebp)
	jmp	L20
L19:
	movl	%ebx, %esp
	movl	$0, %eax
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
LFE1879:
	.section	.text$_ZSt4sortIPiEvT_S1_,"x"
	.linkonce discard
	.globl	__ZSt4sortIPiEvT_S1_
	.def	__ZSt4sortIPiEvT_S1_;	.scl	2;	.type	32;	.endef
__ZSt4sortIPiEvT_S1_:
LFB2087:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	call	__ZN9__gnu_cxx5__ops16__iter_less_iterEv
	movb	%bl, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt6__sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	nop
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2087:
	.section	.text$_ZSt6__sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,"x"
	.linkonce discard
	.globl	__ZSt6__sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.def	__ZSt6__sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_;	.scl	2;	.type	32;	.endef
__ZSt6__sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_:
LFB2177:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	L25
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$2, %eax
	movl	%eax, (%esp)
	call	__ZSt4__lgi
	addl	%eax, %eax
	movzbl	-9(%ebp), %ecx
	movb	%cl, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt16__introsort_loopIPiiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	movb	%bl, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
L25:
	nop
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2177:
	.section	.text$_ZSt16__introsort_loopIPiiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,"x"
	.linkonce discard
	.globl	__ZSt16__introsort_loopIPiiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	.def	__ZSt16__introsort_loopIPiiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_;	.scl	2;	.type	32;	.endef
__ZSt16__introsort_loopIPiiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_:
LFB2211:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
L29:
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$67, %eax
	jle	L26
	cmpl	$0, 16(%ebp)
	jne	L28
	movzbl	-26(%ebp), %eax
	movb	%al, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_
	jmp	L26
L28:
	subl	$1, 16(%ebp)
	movzbl	-25(%ebp), %eax
	movb	%al, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_
	movl	%eax, -12(%ebp)
	movb	%bl, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt16__introsort_loopIPiiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	movl	-12(%ebp), %eax
	movl	%eax, 12(%ebp)
	jmp	L29
L26:
	addl	$52, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2211:
	.section	.text$_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,"x"
	.linkonce discard
	.globl	__ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.def	__ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_;	.scl	2;	.type	32;	.endef
__ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_:
LFB2212:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$67, %eax
	jle	L31
	movl	8(%ebp), %eax
	addl	$64, %eax
	movzbl	-9(%ebp), %ecx
	movb	%cl, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	movl	8(%ebp), %eax
	leal	64(%eax), %edx
	movb	%bl, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	jmp	L33
L31:
	movb	%cl, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
L33:
	nop
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2212:
	.section	.text$_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_,"x"
	.linkonce discard
	.globl	__ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_
	.def	__ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_;	.scl	2;	.type	32;	.endef
__ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_:
LFB2246:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	movb	%al, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_
	movb	%bl, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	nop
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2246:
	.section	.text$_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_,"x"
	.linkonce discard
	.globl	__ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_
	.def	__ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_;	.scl	2;	.type	32;	.endef
__ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_:
LFB2247:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %eax
	subl	$4, %eax
	movl	8(%ebp), %edx
	addl	$4, %edx
	movb	%cl, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_
	movl	8(%ebp), %eax
	leal	4(%eax), %edx
	movb	%bl, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_
	addl	$52, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2247:
	.section	.text$_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	.def	__ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_;	.scl	2;	.type	32;	.endef
__ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_:
LFB2249:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	setl	%al
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE2249:
	.section	.text$_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,"x"
	.linkonce discard
	.globl	__ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.def	__ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_;	.scl	2;	.type	32;	.endef
__ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_:
LFB2250:
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
LFE2250:
	.section	.text$_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,"x"
	.linkonce discard
	.globl	__ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.def	__ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_;	.scl	2;	.type	32;	.endef
__ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_:
LFB2248:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	L47
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -12(%ebp)
L46:
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	L41
	leal	16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	subl	$8, %esp
	testb	%al, %al
	je	L44
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt13move_backwardIPiS0_ET0_T_S2_S1_
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	jmp	L45
L44:
	movzbl	-25(%ebp), %eax
	movb	%al, (%esp)
	call	__ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE
	movb	%bl, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_
L45:
	addl	$4, -12(%ebp)
	jmp	L46
L47:
	nop
L41:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2248:
	.section	.text$_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,"x"
	.linkonce discard
	.globl	__ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.def	__ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_;	.scl	2;	.type	32;	.endef
__ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_:
LFB2251:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
L50:
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	L51
	movzbl	-25(%ebp), %eax
	movb	%al, (%esp)
	call	__ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE
	movb	%bl, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_
	addl	$4, -12(%ebp)
	jmp	L50
L51:
	nop
	addl	$52, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2251:
	.section	.text$_ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_,"x"
	.linkonce discard
	.globl	__ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_
	.def	__ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_;	.scl	2;	.type	32;	.endef
__ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_:
LFB2280:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	movb	%al, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
L55:
	movl	-12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jnb	L56
	leal	20(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	subl	$8, %esp
	testb	%al, %al
	je	L54
	movb	%bl, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_
L54:
	addl	$4, -12(%ebp)
	jmp	L55
L56:
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2280:
	.section	.text$_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,"x"
	.linkonce discard
	.globl	__ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.def	__ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_;	.scl	2;	.type	32;	.endef
__ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_:
LFB2281:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
L59:
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$7, %eax
	jle	L60
	subl	$4, 12(%ebp)
	movb	%bl, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_
	jmp	L59
L60:
	nop
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2281:
	.section	.text$_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_,"x"
	.linkonce discard
	.globl	__ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_
	.def	__ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_;	.scl	2;	.type	32;	.endef
__ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_:
LFB2282:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	leal	24(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	subl	$8, %esp
	testb	%al, %al
	je	L62
	leal	24(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	16(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	subl	$8, %esp
	testb	%al, %al
	je	L63
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt9iter_swapIPiS0_EvT_T0_
	jmp	L69
L63:
	leal	24(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	subl	$8, %esp
	testb	%al, %al
	je	L65
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt9iter_swapIPiS0_EvT_T0_
	jmp	L69
L65:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt9iter_swapIPiS0_EvT_T0_
	jmp	L69
L62:
	leal	24(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	subl	$8, %esp
	testb	%al, %al
	je	L67
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt9iter_swapIPiS0_EvT_T0_
	jmp	L69
L67:
	leal	24(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	16(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	subl	$8, %esp
	testb	%al, %al
	je	L68
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt9iter_swapIPiS0_EvT_T0_
	jmp	L69
L68:
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt9iter_swapIPiS0_EvT_T0_
L69:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2282:
	.section	.text$_ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_,"x"
	.linkonce discard
	.globl	__ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_
	.def	__ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_;	.scl	2;	.type	32;	.endef
__ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_:
LFB2283:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
L72:
	leal	20(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	subl	$8, %esp
	testb	%al, %al
	je	L71
	addl	$4, 8(%ebp)
	jmp	L72
L71:
	subl	$4, 12(%ebp)
L74:
	leal	20(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	16(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	subl	$8, %esp
	testb	%al, %al
	je	L73
	subl	$4, 12(%ebp)
	jmp	L74
L73:
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jb	L75
	movl	8(%ebp), %eax
	jmp	L77
L75:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt9iter_swapIPiS0_EvT_T0_
	addl	$4, 8(%ebp)
	jmp	L72
L77:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2283:
	.section	.text$_ZSt13move_backwardIPiS0_ET0_T_S2_S1_,"x"
	.linkonce discard
	.globl	__ZSt13move_backwardIPiS0_ET0_T_S2_S1_
	.def	__ZSt13move_backwardIPiS0_ET0_T_S2_S1_;	.scl	2;	.type	32;	.endef
__ZSt13move_backwardIPiS0_ET0_T_S2_S1_:
LFB2284:
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
	call	__ZSt12__miter_baseIPiET_S1_
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__miter_baseIPiET_S1_
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%edx, (%esp)
	call	__ZSt23__copy_move_backward_a2ILb1EPiS0_ET1_T0_S2_S1_
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2284:
	.section	.text$_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_,"x"
	.linkonce discard
	.globl	__ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_
	.def	__ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_;	.scl	2;	.type	32;	.endef
__ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_:
LFB2285:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	subl	$4, -12(%ebp)
L82:
	leal	12(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-16(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK9__gnu_cxx5__ops14_Val_less_iterclIiPiEEbRT_T0_
	subl	$8, %esp
	testb	%al, %al
	je	L81
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%ebp)
	subl	$4, -12(%ebp)
	jmp	L82
L81:
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2285:
	.section	.text$_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,"x"
	.linkonce discard
	.globl	__ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.def	__ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_;	.scl	2;	.type	32;	.endef
__ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_:
LFB2310:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$7, %eax
	jle	L88
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$2, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	subl	$2, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -12(%ebp)
L87:
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, (%esp)
	call	__ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movl	(%eax), %eax
	movb	%bl, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt13__adjust_heapIPiiiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_
	cmpl	$0, -12(%ebp)
	je	L89
	subl	$1, -12(%ebp)
	jmp	L87
L88:
	nop
	jmp	L83
L89:
	nop
L83:
	addl	$52, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2310:
	.section	.text$_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_,"x"
	.linkonce discard
	.globl	__ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_
	.def	__ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_;	.scl	2;	.type	32;	.endef
__ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_:
LFB2311:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movl	(%eax), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	subl	%edx, %ecx
	movl	%ecx, %edx
	sarl	$2, %edx
	movb	%bl, 16(%esp)
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt13__adjust_heapIPiiiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_
	nop
	addl	$52, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2311:
	.section	.text$_ZSt9iter_swapIPiS0_EvT_T0_,"x"
	.linkonce discard
	.globl	__ZSt9iter_swapIPiS0_EvT_T0_
	.def	__ZSt9iter_swapIPiS0_EvT_T0_;	.scl	2;	.type	32;	.endef
__ZSt9iter_swapIPiS0_EvT_T0_:
LFB2312:
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
	call	__ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt21is_move_constructibleIT_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SA_
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2312:
	.section	.text$_ZSt12__miter_baseIPiET_S1_,"x"
	.linkonce discard
	.globl	__ZSt12__miter_baseIPiET_S1_
	.def	__ZSt12__miter_baseIPiET_S1_;	.scl	2;	.type	32;	.endef
__ZSt12__miter_baseIPiET_S1_:
LFB2313:
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
LFE2313:
	.section	.text$_ZSt23__copy_move_backward_a2ILb1EPiS0_ET1_T0_S2_S1_,"x"
	.linkonce discard
	.globl	__ZSt23__copy_move_backward_a2ILb1EPiS0_ET1_T0_S2_S1_
	.def	__ZSt23__copy_move_backward_a2ILb1EPiS0_ET1_T0_S2_S1_;	.scl	2;	.type	32;	.endef
__ZSt23__copy_move_backward_a2ILb1EPiS0_ET1_T0_S2_S1_:
LFB2314:
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
	call	__ZSt12__niter_baseIPiET_S1_
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__niter_baseIPiET_S1_
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__niter_baseIPiET_S1_
	movl	%esi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt22__copy_move_backward_aILb1EPiS0_ET1_T0_S2_S1_
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
LFE2314:
	.section	.text$_ZNK9__gnu_cxx5__ops14_Val_less_iterclIiPiEEbRT_T0_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK9__gnu_cxx5__ops14_Val_less_iterclIiPiEEbRT_T0_
	.def	__ZNK9__gnu_cxx5__ops14_Val_less_iterclIiPiEEbRT_T0_;	.scl	2;	.type	32;	.endef
__ZNK9__gnu_cxx5__ops14_Val_less_iterclIiPiEEbRT_T0_:
LFB2315:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	setl	%al
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE2315:
	.section	.text$_ZSt13__adjust_heapIPiiiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_,"x"
	.linkonce discard
	.globl	__ZSt13__adjust_heapIPiiiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_
	.def	__ZSt13__adjust_heapIPiiiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_;	.scl	2;	.type	32;	.endef
__ZSt13__adjust_heapIPiiiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_:
LFB2324:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$68, %esp
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
L101:
	movl	16(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cmpl	-12(%ebp), %eax
	jle	L99
	movl	-12(%ebp), %eax
	addl	$1, %eax
	addl	%eax, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	addl	$1073741823, %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	leal	24(%ebp), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	subl	$8, %esp
	testb	%al, %al
	je	L100
	subl	$1, -12(%ebp)
L100:
	movl	12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	leal	(%edx,%eax), %ebx
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, (%esp)
	call	__ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movl	(%eax), %eax
	movl	%eax, (%ebx)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%ebp)
	jmp	L101
L99:
	movl	16(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	L102
	movl	16(%ebp), %eax
	subl	$2, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cmpl	-12(%ebp), %eax
	jne	L102
	movl	-12(%ebp), %eax
	addl	$1, %eax
	addl	%eax, %eax
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	leal	(%edx,%eax), %ebx
	movl	-12(%ebp), %eax
	addl	$1073741823, %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, (%esp)
	call	__ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movl	(%eax), %eax
	movl	%eax, (%ebx)
	movl	-12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, 12(%ebp)
L102:
	movzbl	-26(%ebp), %eax
	movb	%al, (%esp)
	call	__ZN9__gnu_cxx5__ops15__iter_comp_valENS0_15_Iter_less_iterE
	leal	20(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movl	(%eax), %eax
	movzbl	-25(%ebp), %ecx
	movb	%cl, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt11__push_heapIPiiiN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_T2_
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2324:
	.section	.text$_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt21is_move_constructibleIT_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SA_,"x"
	.linkonce discard
	.globl	__ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt21is_move_constructibleIT_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SA_
	.def	__ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt21is_move_constructibleIT_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SA_;	.scl	2;	.type	32;	.endef
__ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt21is_move_constructibleIT_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SA_:
LFB2325:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2325:
	.section	.text$_ZSt12__niter_baseIPiET_S1_,"x"
	.linkonce discard
	.globl	__ZSt12__niter_baseIPiET_S1_
	.def	__ZSt12__niter_baseIPiET_S1_;	.scl	2;	.type	32;	.endef
__ZSt12__niter_baseIPiET_S1_:
LFB2326:
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
LFE2326:
	.section	.text$_ZSt22__copy_move_backward_aILb1EPiS0_ET1_T0_S2_S1_,"x"
	.linkonce discard
	.globl	__ZSt22__copy_move_backward_aILb1EPiS0_ET1_T0_S2_S1_
	.def	__ZSt22__copy_move_backward_aILb1EPiS0_ET1_T0_S2_S1_;	.scl	2;	.type	32;	.endef
__ZSt22__copy_move_backward_aILb1EPiS0_ET1_T0_S2_S1_:
LFB2327:
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
	call	__ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2327:
	.section	.text$_ZSt11__push_heapIPiiiN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_T2_,"x"
	.linkonce discard
	.globl	__ZSt11__push_heapIPiiiN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_T2_
	.def	__ZSt11__push_heapIPiiiN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_T2_;	.scl	2;	.type	32;	.endef
__ZSt11__push_heapIPiiiN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_T2_:
LFB2330:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -12(%ebp)
L112:
	movl	12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jle	L109
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	leal	(%edx,%eax), %ecx
	leal	24(%ebp), %eax
	leal	20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	movl	%eax, %ecx
	call	__ZNK9__gnu_cxx5__ops14_Iter_less_valclIPiiEEbT_RT0_
	subl	$8, %esp
	testb	%al, %al
	je	L109
	movl	$1, %eax
	jmp	L110
L109:
	movl	$0, %eax
L110:
	testb	%al, %al
	je	L111
	movl	12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	leal	(%edx,%eax), %ebx
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, (%esp)
	call	__ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movl	(%eax), %eax
	movl	%eax, (%ebx)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%ebp)
	movl	12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -12(%ebp)
	jmp	L112
L111:
	movl	12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	leal	(%edx,%eax), %ebx
	leal	20(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movl	(%eax), %eax
	movl	%eax, (%ebx)
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2330:
	.section	.text$_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_,"x"
	.linkonce discard
	.globl	__ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_
	.def	__ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_;	.scl	2;	.type	32;	.endef
__ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_:
LFB2331:
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
	sarl	$2, %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L114
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	-12(%ebp), %edx
	sall	$2, %edx
	movl	%edx, %ecx
	negl	%ecx
	movl	16(%ebp), %edx
	addl	%ecx, %edx
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memmove
L114:
	movl	-12(%ebp), %eax
	sall	$2, %eax
	negl	%eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2331:
	.section	.text$_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPiiEEbT_RT0_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK9__gnu_cxx5__ops14_Iter_less_valclIPiiEEbT_RT0_
	.def	__ZNK9__gnu_cxx5__ops14_Iter_less_valclIPiiEEbT_RT0_;	.scl	2;	.type	32;	.endef
__ZNK9__gnu_cxx5__ops14_Iter_less_valclIPiiEEbT_RT0_:
LFB2332:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	setl	%al
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE2332:
	.text
	.def	___tcf_0;	.scl	3;	.type	32;	.endef
___tcf_0:
LFB2334:
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
LFE2334:
	.def	__Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
__Z41__static_initialization_and_destruction_0ii:
LFB2333:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$1, 8(%ebp)
	jne	L121
	cmpl	$65535, 12(%ebp)
	jne	L121
	movl	$__ZStL8__ioinit, %ecx
	call	__ZNSt8ios_base4InitC1Ev
	movl	$___tcf_0, (%esp)
	call	_atexit
L121:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2333:
	.def	__GLOBAL__sub_I_arrayfind;	.scl	3;	.type	32;	.endef
__GLOBAL__sub_I_arrayfind:
LFB2335:
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
LFE2335:
	.section	.ctors,"w"
	.align 4
	.long	__GLOBAL__sub_I_arrayfind
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	__ZNSirsERi;	.scl	2;	.type	32;	.endef
	.def	__ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	_atexit;	.scl	2;	.type	32;	.endef
