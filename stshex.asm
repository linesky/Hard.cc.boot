
	.machinemode zarch
	.machine "z196"
.text
	.section	.rodata
	.align	2
.LC0:
	.string	"0123456789ABCDEF0123456789ABCDEF"
.text
	.align	8
.globl strshex
	.type	strshex, @function
strshex:
.LFB0:
	.cfi_startproc
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-224(%r15)
	.cfi_def_cfa_offset 384
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,168(%r11)
	stg	%r3,160(%r11)
	lg	%r1,160(%r11)
	stg	%r1,216(%r11)
	mvghi	208(%r11),8
	mvghi	200(%r11),0
	mvghi	192(%r11),16
	mvghi	184(%r11),15
	larl	%r1,.LC0
	stg	%r1,176(%r11)
	lg	%r1,208(%r11)
	ag	%r1,168(%r11)
	mvi	0(%r1),0
	mvghi	208(%r11),7
	j	.L2
.L3:
	lg	%r1,216(%r11)
	ng	%r1,184(%r11)
	stg	%r1,200(%r11)
	lg	%r1,200(%r11)
	lgfr	%r1,%r1
	ag	%r1,176(%r11)
	lgr	%r2,%r1
	lg	%r1,208(%r11)
	ag	%r1,168(%r11)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	lg	%r1,216(%r11)
	lgr	%r3,%r1
	dsg	%r2,192(%r11)
	lgr	%r1,%r3
	stg	%r1,216(%r11)
	agsi	208(%r11),-1
.L2:
	lg	%r1,208(%r11)
	ltgr	%r1,%r1
	jhe	.L3
	nopr	%r0
	nopr	%r0
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
	.cfi_endproc
.LFE0:
	.size	strshex, .-strshex
	.section	.rodata
	.align	2
.LC1:
	.string	"\033[43;37m%s  \n"
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
	lay	%r15,-216(%r15)
	.cfi_def_cfa_offset 376
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	mvhi	212(%r11),0
	aghik	%r1,%r11,162
	lgfi	%r3,305419896
	lgr	%r2,%r1
	brasl	%r14,strshex
	aghik	%r1,%r11,162
	lgr	%r3,%r1
	larl	%r2,.LC1
	brasl	%r14,printf@PLT
	lhi	%r1,0
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lmg	%r11,%r15,304(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
	br	%r14
	.cfi_endproc
.LFE1:

