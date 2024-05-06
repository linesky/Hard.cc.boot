	.file	"hello.c"
	.machinemode zarch
	.machine "z196"
.text
	.section	.rodata
	.align	2
.LC0:
	.string	"hello world"
.text
	.align	8
.globl hello
	.type	hello, @function
hello:
.LFB6:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	larl	%r1,.LC0
	lgr	%r2,%r1
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE6:
	.size	hello, .-hello
	.section	.rodata
	.align	2
.LC1:
	.string	"\033[43;37m%s....\n"
.text
	.align	8
.globl main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	larl	%r1,.LC1
	stg	%r1,160(%r11)
	brasl	%r14,hello
	lgr	%r1,%r2
	lgr	%r3,%r1
	lg	%r2,160(%r11)
	brasl	%r14,printf@PLT
	lhi	%r1,0
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lmg	%r11,%r15,256(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
	br	%r14
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
