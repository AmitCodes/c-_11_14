	.file	"HelloWorld.cpp"
	.text
	.align 2
	.type	_ZSt17__verify_groupingPKcmRKSs, @function
_ZSt17__verify_groupingPKcmRKSs:
.LFB1364:
	pushq	%rbp
.LCFI0:
	movq	%rsp, %rbp
.LCFI1:
	subq	$80, %rsp
.LCFI2:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	call	_ZNKSs4sizeEv
	decq	%rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	decq	%rax
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	call	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movb	$1, -57(%rbp)
	movq	$0, -72(%rbp)
.L2:
	movq	-72(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jae	.L5
	cmpb	$0, -57(%rbp)
	je	.L5
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	call	_ZNKSsixEm
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	cmpb	(%rdx), %al
	sete	%al
	movb	%al, -57(%rbp)
	leaq	-56(%rbp), %rax
	decq	(%rax)
	leaq	-72(%rbp), %rax
	incq	(%rax)
	jmp	.L2
.L5:
	cmpq	$0, -56(%rbp)
	je	.L6
	cmpb	$0, -57(%rbp)
	je	.L6
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	call	_ZNKSsixEm
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	cmpb	(%rdx), %al
	sete	%al
	movb	%al, -57(%rbp)
	leaq	-56(%rbp), %rax
	decq	(%rax)
	jmp	.L5
.L6:
	movq	-24(%rbp), %rdi
	movl	$0, %esi
	call	_ZNKSsixEm
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	cmpb	(%rdx), %al
	jg	.L8
	movzbl	-57(%rbp), %eax
	andl	$1, %eax
	movb	%al, -73(%rbp)
	jmp	.L9
.L8:
	movb	$0, -73(%rbp)
.L9:
	movzbl	-73(%rbp), %eax
	movb	%al, -57(%rbp)
	movzbl	-57(%rbp), %eax
	leave
	ret
.LFE1364:
	.size	_ZSt17__verify_groupingPKcmRKSs, .-_ZSt17__verify_groupingPKcmRKSs
	.local	_ZSt8__ioinit
	.comm	_ZSt8__ioinit,1,1
	.section	.rodata
.LC0:
	.string	"Hello world"
	.text
	.align 2
.globl main
	.type	main, @function
main:
.LFB1445:
	pushq	%rbp
.LCFI3:
	movq	%rsp, %rbp
.LCFI4:
	movl	$.LC0, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, %eax
	leave
	ret
.LFE1445:
	.size	main, .-main
	.section	.gnu.linkonce.t._ZSt3minImERKT_S2_S2_,"ax",@progbits
	.align 2
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB1446:
	pushq	%rbp
.LCFI5:
	movq	%rsp, %rbp
.LCFI6:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	(%rax), %rax
	cmpq	(%rdx), %rax
	jae	.L12
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L11
.L12:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
.L11:
	movq	-24(%rbp), %rax
	leave
	ret
.LFE1446:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.text
	.align 2
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1452:
	pushq	%rbp
.LCFI7:
	movq	%rsp, %rbp
.LCFI8:
	subq	$16, %rsp
.LCFI9:
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$65535, -8(%rbp)
	jne	.L14
	cmpl	$1, -4(%rbp)
	jne	.L14
	movl	$_ZSt8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
.L14:
	cmpl	$65535, -8(%rbp)
	jne	.L13
	cmpl	$0, -4(%rbp)
	jne	.L13
	movl	$_ZSt8__ioinit, %edi
	call	_ZNSt8ios_base4InitD1Ev
.L13:
	leave
	ret
.LFE1452:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align 2
	.type	_GLOBAL__I_main, @function
_GLOBAL__I_main:
.LFB1453:
	pushq	%rbp
.LCFI10:
	movq	%rsp, %rbp
.LCFI11:
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	leave
	ret
.LFE1453:
	.size	_GLOBAL__I_main, .-_GLOBAL__I_main
	.section	.ctors,"aw",@progbits
	.align 8
	.quad	_GLOBAL__I_main
	.text
	.align 2
	.type	_GLOBAL__D_main, @function
_GLOBAL__D_main:
.LFB1454:
	pushq	%rbp
.LCFI12:
	movq	%rsp, %rbp
.LCFI13:
	movl	$65535, %esi
	movl	$0, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	leave
	ret
.LFE1454:
	.size	_GLOBAL__D_main, .-_GLOBAL__D_main
	.section	.dtors,"aw",@progbits
	.align 8
	.quad	_GLOBAL__D_main
	.weak	pthread_mutex_unlock
	.weak	pthread_mutex_trylock
	.weak	pthread_mutex_lock
	.weak	pthread_create
	.weak	pthread_setspecific
	.weak	pthread_getspecific
	.weak	pthread_key_delete
	.weak	pthread_key_create
	.weak	pthread_once
	.section	.eh_frame,"a",@progbits
.Lframe1:
	.long	.LECIE1-.LSCIE1
.LSCIE1:
	.long	0x0
	.byte	0x1
	.string	"zP"
	.uleb128 0x1
	.sleb128 -8
	.byte	0x10
	.uleb128 0x9
	.byte	0x0
	.quad	__gxx_personality_v0
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x1
	.align 8
.LECIE1:
.LSFDE1:
	.long	.LEFDE1-.LASFDE1
.LASFDE1:
	.long	.LASFDE1-.Lframe1
	.quad	.LFB1364
	.quad	.LFE1364-.LFB1364
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI0-.LFB1364
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x6
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB1445
	.quad	.LFE1445-.LFB1445
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI3-.LFB1445
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xd
	.uleb128 0x6
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB1446
	.quad	.LFE1446-.LFB1446
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI5-.LFB1446
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xd
	.uleb128 0x6
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB1452
	.quad	.LFE1452-.LFB1452
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI7-.LFB1452
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xd
	.uleb128 0x6
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB1453
	.quad	.LFE1453-.LFB1453
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI10-.LFB1453
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xd
	.uleb128 0x6
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB1454
	.quad	.LFE1454-.LFB1454
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI12-.LFB1454
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xd
	.uleb128 0x6
	.align 8
.LEFDE11:
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.2"
