	.file	"main.cpp"
	.text
	.section .rdata,"dr"
std::piecewise_construct:
	.space 1
.lcomm std::__ioinit,1,1
std::allocator_arg:
	.space 1
std::ignore:
	.space 1
	.def	__main;	.scl	2;	.type	32;	.endef
.LC0:
	.ascii "AMD CPU\0"
.LC1:
	.ascii "Intel CPU\0"
.LC2:
	.ascii "Intel Atom CPU\0"
.LC3:
	.ascii "Intel Silvermont CPU\0"
.LC4:
	.ascii "Intel Core 2 CPU\0"
.LC5:
	.ascii "Intel Core i7 CPU\0"
.LC6:
	.ascii "Intel Core i7 Nehalem CPU\0"
.LC7:
	.ascii "Intel Core i7 Westmere CPU\0"
	.align 8
.LC8:
	.ascii "Intel Core i7 Sandy Bridge CPU\0"
.LC9:
	.ascii "Intel Core i7 Ivy Bridge CPU\0"
.LC10:
	.ascii "Intel Core i7 Haswell CPU\0"
.LC11:
	.ascii "Intel Core i7 Broadwell CPU\0"
.LC12:
	.ascii "Intel Core i7 Skylake CPU\0"
	.align 8
.LC13:
	.ascii "Intel Core i7 Skylake AVX512 CPU\0"
.LC14:
	.ascii "Intel Core i7 Cannon Lake CPU\0"
	.align 8
.LC15:
	.ascii "Intel Core i7 Ice Lake Client CPU\0"
	.align 8
.LC16:
	.ascii "Intel Core i7 Ice Lake Server CPU\0"
.LC17:
	.ascii "Intel Core i7 Cascadelake CPU\0"
.LC18:
	.ascii "Intel Core i7 Tigerlake CPU\0"
.LC19:
	.ascii "Intel Core i7 Cooperlake CPU\0"
.LC20:
	.ascii "Intel Atom Bonnell CPU\0"
.LC21:
	.ascii "Intel Atom Silvermont CPU\0"
.LC22:
	.ascii "Intel Atom Goldmont CPU\0"
.LC23:
	.ascii "Intel Atom Goldmont Plus CPU\0"
.LC24:
	.ascii "Intel Atom Tremont CPU\0"
.LC25:
	.ascii "Intel Knights Landing CPU\0"
.LC26:
	.ascii "Intel Knights Mill CPU\0"
.LC27:
	.ascii "AMD Family 10h CPU\0"
.LC28:
	.ascii "AMD Family 10h Barcelona CPU\0"
.LC29:
	.ascii "AMD Family 10h Shanghai CPU\0"
.LC30:
	.ascii "AMD Family 10h Istanbul CPU\0"
.LC31:
	.ascii "AMD Family 14h CPU\0"
.LC32:
	.ascii "AMD Family 15h CPU\0"
	.align 8
.LC33:
	.ascii "AMD Family 15h Bulldozer version 1\0"
	.align 8
.LC34:
	.ascii "AMD Family 15h Bulldozer version 2\0"
	.align 8
.LC35:
	.ascii "AMD Family 15h Bulldozer version 3\0"
	.align 8
.LC36:
	.ascii "AMD Family 15h Bulldozer version 4\0"
.LC37:
	.ascii "AMD Family 16h CPU\0"
.LC38:
	.ascii "AMD Family 17h CPU\0"
.LC39:
	.ascii "AMD Family 17h Zen version 1\0"
.LC40:
	.ascii "AMD Family 17h Zen version 2\0"
.LC41:
	.ascii "CMOV instruction\0"
.LC42:
	.ascii "MMX instructions\0"
.LC43:
	.ascii "POPCNT instruction\0"
.LC44:
	.ascii "SSE instructions\0"
.LC45:
	.ascii "SSE2 instructions\0"
.LC46:
	.ascii "SSE3 instructions\0"
.LC47:
	.ascii "SSSE3 instructions\0"
.LC48:
	.ascii "SSE4.1 instructions\0"
.LC49:
	.ascii "SSE4.2 instructions\0"
.LC50:
	.ascii "AVX instructions\0"
.LC51:
	.ascii "AVX2 instructions\0"
.LC52:
	.ascii "SSE4A instructions\0"
.LC53:
	.ascii "FMA4 instructions\0"
.LC54:
	.ascii "XOP instructions\0"
.LC55:
	.ascii "FMA instructions\0"
.LC56:
	.ascii "AVX512F instructions\0"
.LC57:
	.ascii "BMI instructions\0"
.LC58:
	.ascii "BMI2 instructions\0"
.LC59:
	.ascii "AES instructions\0"
.LC60:
	.ascii "PCLMUL instructions\0"
.LC61:
	.ascii "AVX512VL instructions\0"
.LC62:
	.ascii "AVX512BW instructions\0"
.LC63:
	.ascii "AVX512DQ instructions\0"
.LC64:
	.ascii "AVX512CD instructions\0"
.LC65:
	.ascii "AVX512ER instructions\0"
.LC66:
	.ascii "AVX512PF instructions\0"
.LC67:
	.ascii "AVX512VBMI instructions\0"
.LC68:
	.ascii "AVX512IFMA instructions\0"
.LC69:
	.ascii "AVX5124VNNIW instructions\0"
.LC70:
	.ascii "AVX5124FMAPS instructions\0"
.LC71:
	.ascii "AVX512VPOPCNTDQ instructions\0"
.LC72:
	.ascii "AVX512VBMI2 instructions\0"
.LC73:
	.ascii "GFNI instructions\0"
.LC74:
	.ascii "VPCLMULQDQ instructions\0"
.LC75:
	.ascii "AVX512VNNI instructions\0"
.LC76:
	.ascii "AVX512BITALG instructions\0"
.LC77:
	.ascii "Exception: \0"
.LC78:
	.ascii "Error: exception\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2170:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movl	%ecx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	call	__main
	call	__cpu_indicator_init
	movq	.refptr.__cpu_model(%rip), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L2
	leaq	.LC0(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
.LEHB0:
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L2:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L3
	leaq	.LC1(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L3:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	4(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L4
	leaq	.LC2(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L4:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	4(%rax), %eax
	cmpl	$6, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L5
	leaq	.LC3(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L5:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	4(%rax), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L6
	leaq	.LC4(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L6:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	4(%rax), %eax
	cmpl	$3, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L7
	leaq	.LC5(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L7:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L8
	leaq	.LC6(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L8:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L9
	leaq	.LC7(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L9:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L10
	leaq	.LC8(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L10:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	8(%rax), %eax
	cmpl	$12, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L11
	leaq	.LC9(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L11:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	8(%rax), %eax
	cmpl	$13, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L12
	leaq	.LC10(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L12:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	8(%rax), %eax
	cmpl	$14, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L13
	leaq	.LC11(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L13:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	8(%rax), %eax
	cmpl	$15, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L14
	leaq	.LC12(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L14:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	8(%rax), %eax
	cmpl	$16, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L15
	leaq	.LC13(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L15:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	8(%rax), %eax
	cmpl	$17, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L16
	leaq	.LC14(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L16:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	8(%rax), %eax
	cmpl	$18, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L17
	leaq	.LC15(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L17:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	8(%rax), %eax
	cmpl	$19, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L18
	leaq	.LC16(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L18:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	8(%rax), %eax
	cmpl	$21, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L19
	leaq	.LC17(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L19:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	8(%rax), %eax
	cmpl	$22, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L20
	leaq	.LC18(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L20:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	8(%rax), %eax
	cmpl	$23, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L21
	leaq	.LC19(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L21:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	4(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L22
	leaq	.LC20(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L22:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	4(%rax), %eax
	cmpl	$6, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L23
	leaq	.LC21(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L23:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	4(%rax), %eax
	cmpl	$12, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L24
	leaq	.LC22(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L24:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	4(%rax), %eax
	cmpl	$13, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L25
	leaq	.LC23(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L25:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	4(%rax), %eax
	cmpl	$14, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L26
	leaq	.LC24(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L26:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	4(%rax), %eax
	cmpl	$7, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L27
	leaq	.LC25(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L27:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	4(%rax), %eax
	cmpl	$11, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L28
	leaq	.LC26(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L28:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	4(%rax), %eax
	cmpl	$4, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L29
	leaq	.LC27(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L29:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L30
	leaq	.LC28(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L30:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L31
	leaq	.LC29(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L31:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	8(%rax), %eax
	cmpl	$6, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L32
	leaq	.LC30(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L32:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	4(%rax), %eax
	cmpl	$8, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L33
	leaq	.LC31(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L33:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	4(%rax), %eax
	cmpl	$5, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L34
	leaq	.LC32(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L34:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	8(%rax), %eax
	cmpl	$7, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L35
	leaq	.LC33(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L35:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	8(%rax), %eax
	cmpl	$8, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L36
	leaq	.LC34(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L36:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	8(%rax), %eax
	cmpl	$9, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L37
	leaq	.LC35(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L37:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	8(%rax), %eax
	cmpl	$10, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L38
	leaq	.LC36(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L38:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	4(%rax), %eax
	cmpl	$9, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L39
	leaq	.LC37(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L39:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	4(%rax), %eax
	cmpl	$10, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L40
	leaq	.LC38(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L40:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	8(%rax), %eax
	cmpl	$11, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L41
	leaq	.LC39(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L41:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	8(%rax), %eax
	cmpl	$20, %eax
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L42
	leaq	.LC40(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L42:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L43
	leaq	.LC41(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L43:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L44
	leaq	.LC42(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L44:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L45
	leaq	.LC43(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L45:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L46
	leaq	.LC44(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L46:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L47
	leaq	.LC45(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L47:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L48
	leaq	.LC46(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L48:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L49
	leaq	.LC47(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L49:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L50
	leaq	.LC48(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L50:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L51
	leaq	.LC49(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L51:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L52
	leaq	.LC50(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L52:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L53
	leaq	.LC51(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L53:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L54
	leaq	.LC52(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L54:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L55
	leaq	.LC53(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L55:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L56
	leaq	.LC54(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L56:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L57
	leaq	.LC55(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L57:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$32768, %eax
	testl	%eax, %eax
	je	.L58
	leaq	.LC56(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L58:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L59
	leaq	.LC57(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L59:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	je	.L60
	leaq	.LC58(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L60:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$262144, %eax
	testl	%eax, %eax
	je	.L61
	leaq	.LC59(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L61:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$524288, %eax
	testl	%eax, %eax
	je	.L62
	leaq	.LC60(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L62:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L63
	leaq	.LC61(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L63:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$2097152, %eax
	testl	%eax, %eax
	je	.L64
	leaq	.LC62(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L64:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$4194304, %eax
	testl	%eax, %eax
	je	.L65
	leaq	.LC63(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L65:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$8388608, %eax
	testl	%eax, %eax
	je	.L66
	leaq	.LC64(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L66:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$16777216, %eax
	testl	%eax, %eax
	je	.L67
	leaq	.LC65(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L67:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L68
	leaq	.LC66(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L68:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$67108864, %eax
	testl	%eax, %eax
	je	.L69
	leaq	.LC67(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L69:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$134217728, %eax
	testl	%eax, %eax
	je	.L70
	leaq	.LC68(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L70:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$268435456, %eax
	testl	%eax, %eax
	je	.L71
	leaq	.LC69(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L71:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$536870912, %eax
	testl	%eax, %eax
	je	.L72
	leaq	.LC70(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L72:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	andl	$1073741824, %eax
	testl	%eax, %eax
	je	.L73
	leaq	.LC71(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L73:
	movq	.refptr.__cpu_model(%rip), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jns	.L74
	leaq	.LC72(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L74:
	movq	.refptr.__cpu_features2(%rip), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L75
	leaq	.LC73(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L75:
	movq	.refptr.__cpu_features2(%rip), %rax
	movl	(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L76
	leaq	.LC74(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L76:
	movq	.refptr.__cpu_features2(%rip), %rax
	movl	(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L77
	leaq	.LC75(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L77:
	movq	.refptr.__cpu_features2(%rip), %rax
	movl	(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L78
	leaq	.LC76(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.LEHE0:
.L78:
	movl	$0, %ebx
.L79:
	movl	%ebx, %eax
	jmp	.L87
.L84:
	cmpq	$1, %rdx
	jne	.L81
	movq	%rax, %rcx
	call	__cxa_begin_catch
	movq	%rax, -88(%rbp)
	leaq	.LC77(%rip), %rdx
	movq	.refptr._ZSt4cerr(%rip), %rcx
.LEHB1:
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	*%rdx
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.LEHE1:
	movl	$1, %ebx
	call	__cxa_end_catch
	jmp	.L79
.L81:
	movq	%rax, %rcx
	call	__cxa_begin_catch
	leaq	.LC78(%rip), %rdx
	movq	.refptr._ZSt4cerr(%rip), %rcx
.LEHB2:
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.LEHE2:
	movl	$1, %ebx
.LEHB3:
	call	__cxa_end_catch
	jmp	.L79
.L85:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
.LEHE3:
.L86:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB4:
	call	_Unwind_Resume
.LEHE4:
.L87:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA2170:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2170-.LLSDATTD2170
.LLSDATTD2170:
	.byte	0x1
	.uleb128 .LLSDACSE2170-.LLSDACSB2170
.LLSDACSB2170:
	.uleb128 .LEHB0-.LFB2170
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L84-.LFB2170
	.uleb128 0x3
	.uleb128 .LEHB1-.LFB2170
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L85-.LFB2170
	.uleb128 0
	.uleb128 .LEHB2-.LFB2170
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L86-.LFB2170
	.uleb128 0
	.uleb128 .LEHB3-.LFB2170
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB2170
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE2170:
	.byte	0x2
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align 4
	.long	0

	.long	.LDFCM0-.
.LLSDATT2170:
	.text
	.seh_endproc
	.globl	typeinfo for std::exception
	.section	.rdata$_ZTISt9exception,"dr"
	.linkonce same_size
	.align 8
typeinfo for std::exception:
	.quad	vtable for __cxxabiv1::__class_type_info+16
	.quad	typeinfo name for std::exception
	.globl	typeinfo name for std::exception
	.section	.rdata$_ZTSSt9exception,"dr"
	.linkonce same_size
	.align 8
typeinfo name for std::exception:
	.ascii "St9exception\0"
	.text
	.def	__static_initialization_and_destruction_0(int, int);	.scl	3;	.type	32;	.endef
	.seh_proc	__static_initialization_and_destruction_0(int, int)
__static_initialization_and_destruction_0(int, int):
.LFB2599:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	cmpl	$1, 16(%rbp)
	jne	.L90
	cmpl	$65535, 24(%rbp)
	jne	.L90
	leaq	std::__ioinit(%rip), %rcx
	call	std::ios_base::Init::Init()
	movq	.refptr.__dso_handle(%rip), %r8
	leaq	std::__ioinit(%rip), %rdx
	movq	.refptr._ZNSt8ios_base4InitD1Ev(%rip), %rcx
	call	__cxa_atexit
.L90:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I_main;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_main
_GLOBAL__sub_I_main:
.LFB2600:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	$65535, %edx
	movl	$1, %ecx
	call	__static_initialization_and_destruction_0(int, int)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.data
	.align 8
.LDFCM0:
	.quad	typeinfo for std::exception
	.ident	"GCC: (GNU) 10.2.0"
	.def	__cpu_indicator_init;	.scl	2;	.type	32;	.endef
	.def	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*);	.scl	2;	.type	32;	.endef
	.def	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&));	.scl	2;	.type	32;	.endef
	.def	__cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	__cxa_end_catch;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	std::ios_base::Init::Init();	.scl	2;	.type	32;	.endef
	.def	__cxa_atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZNSt8ios_base4InitD1Ev, "dr"
	.globl	.refptr._ZNSt8ios_base4InitD1Ev
	.linkonce	discard
.refptr._ZNSt8ios_base4InitD1Ev:
	.quad	std::ios_base::Init::~Init()
	.section	.rdata$.refptr.__dso_handle, "dr"
	.globl	.refptr.__dso_handle
	.linkonce	discard
.refptr.__dso_handle:
	.quad	__dso_handle
	.section	.rdata$.refptr._ZSt4cerr, "dr"
	.globl	.refptr._ZSt4cerr
	.linkonce	discard
.refptr._ZSt4cerr:
	.quad	std::cerr
	.section	.rdata$.refptr.__cpu_features2, "dr"
	.globl	.refptr.__cpu_features2
	.linkonce	discard
.refptr.__cpu_features2:
	.quad	__cpu_features2
	.section	.rdata$.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, "dr"
	.globl	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.linkonce	discard
.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_:
	.quad	std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	std::cout
	.section	.rdata$.refptr.__cpu_model, "dr"
	.globl	.refptr.__cpu_model
	.linkonce	discard
.refptr.__cpu_model:
	.quad	__cpu_model
