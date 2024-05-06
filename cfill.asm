
	.machinemode zarch
	.machine "z196"
.text
	.align	8
.globl cfill
	.type	cfill, @function
cfill:
.LFB0:
	.cfi_startproc
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-192(%r15)
	.cfi_def_cfa_offset 352
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	lgr	%r1,%r3
	lgr	%r2,%r4
	stc	%r1,167(%r11)
	lr	%r1,%r2
	st	%r1,160(%r11)
	mvhi	188(%r11),0
	lg	%r2,168(%r11)
	brasl	%r14,strlen@PLT
	lgr	%r1,%r2
	srlg	%r1,%r1,1
	st	%r1,184(%r11)
	l	%r1,160(%r11)
	srlk	%r2,%r1,31
	ar	%r1,%r2
	sra	%r1,1
	st	%r1,180(%r11)
	mvhi	188(%r11),0
	j	.L2
.L3:
	l	%r1,184(%r11)
	s	%r1,180(%r11)
	a	%r1,188(%r11)
	lgfr	%r1,%r1
	ag	%r1,168(%r11)
	mvc	0(1,%r1),167(%r11)
	asi	188(%r11),1
.L2:
	l	%r1,188(%r11)
	c	%r1,160(%r11)
	jl	.L3
	nopr	%r0
	nopr	%r0
	lmg	%r11,%r15,280(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
	br	%r14
	.cfi_endproc
.LFE0:
	.size	cfill, .-cfill
	.section	.rodata
	.align	2
.LC1:
	.string	"\033[43;37m%s \n"
	.align	2
.LC0:
	.string	"hello world\n"
	.zero	67
.text
	.align	8
.globl main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-240(%r15)
	.cfi_def_cfa_offset 400
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	larl	%r1,.LC0
	mvc	160(13,%r11),0(%r1)
	xc	173(67,%r11),173(%r11)
	aghik	%r1,%r11,160
	lghi	%r4,3
	lghi	%r3,46
	lgr	%r2,%r1
	brasl	%r14,cfill
	aghik	%r1,%r11,160
	lgr	%r3,%r1
	larl	%r2,.LC1
	brasl	%r14,printf@PLT
	lhi	%r1,0
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lmg	%r11,%r15,328(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
	br	%r14
	.cfi_endproc
.LFE1:

