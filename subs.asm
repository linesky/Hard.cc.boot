	.file	"sub.c"
	.machinemode zarch
	.machine "z196"
.text
	.align	8
.globl subs
	.type	subs, @function
subs:
.LFB6:
	.cfi_startproc
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	lgr	%r2,%r3
	st	%r1,164(%r11)
	lr	%r1,%r2
	st	%r1,160(%r11)
	l	%r1,164(%r11)
	s	%r1,160(%r11)
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
	.cfi_endproc
.LFE6:
	.size	subs, .-subs
	.section	.rodata
	.align	2
.LC0:
	.string	"\033[43;37m%d....\n"
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
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	mvhi	172(%r11),10
	mvhi	168(%r11),5
	larl	%r1,.LC0
	stg	%r1,160(%r11)
	lgf	%r2,168(%r11)
	lgf	%r1,172(%r11)
	lgr	%r3,%r2
	lgr	%r2,%r1
	brasl	%r14,subs
	lgr	%r1,%r2
	lgfr	%r1,%r1
	lgr	%r3,%r1
	lg	%r2,160(%r11)
	brasl	%r14,printf@PLT
	lhi	%r1,0
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lmg	%r11,%r15,264(%r11)
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
