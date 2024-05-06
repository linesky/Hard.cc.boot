
	.machinemode zarch
	.machine "z196"
.text
	.align	8
.globl strslen
	.type	strslen, @function
strslen:
.LFB0:
	.cfi_startproc
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r15
	.cfi_register 15, 16
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,160(%r11)
	mvhi	172(%r11),0
	j	.L2
.L3:
	asi	172(%r11),1
.L2:
	lgf	%r1,172(%r11)
	ag	%r1,160(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L3
	l	%r1,172(%r11)
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lgdr	%r15,%f0
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
	.cfi_endproc
.LFE0:
	.size	strslen, .-strslen
	.align	8
.globl strcats
	.type	strcats, @function
strcats:
.LFB1:
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
	stg	%r3,160(%r11)
	mvhi	188(%r11),0
	lg	%r2,168(%r11)
	brasl	%r14,strslen
	lgr	%r1,%r2
	lgfr	%r1,%r1
	ag	%r1,168(%r11)
	stg	%r1,176(%r11)
	j	.L7
.L8:
	lgf	%r1,188(%r11)
	ag	%r1,160(%r11)
	lgr	%r2,%r1
	lgf	%r1,188(%r11)
	ag	%r1,176(%r11)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	asi	188(%r11),1
.L7:
	lgf	%r1,188(%r11)
	ag	%r1,160(%r11)
	ic	%r1,0(%r1)
	llcr	%r1,%r1
	ltr	%r1,%r1
	jne	.L8
	lgf	%r1,188(%r11)
	ag	%r1,160(%r11)
	lgr	%r2,%r1
	lgf	%r1,188(%r11)
	ag	%r1,176(%r11)
	ic	%r2,0(%r2)
	stc	%r2,0(%r1)
	l	%r1,188(%r11)
	lgfr	%r1,%r1
	lgr	%r2,%r1
	lmg	%r11,%r15,280(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
	br	%r14
	.cfi_endproc
.LFE1:
	.size	strcats, .-strcats
	.section	.rodata
	.align	2
.LC0:
	.string	"hello "
	.align	2
.LC1:
	.string	"world \n "
	.align	2
.LC2:
	.string	"\033[43;37m%s  \n"
.text
	.align	8
.globl main
	.type	main, @function
main:
.LFB2:
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
	mvi	166(%r11),0
	aghik	%r1,%r11,166
	larl	%r3,.LC0
	lgr	%r2,%r1
	brasl	%r14,strcats
	aghik	%r1,%r11,166
	larl	%r3,.LC1
	lgr	%r2,%r1
	brasl	%r14,strcats
	aghik	%r1,%r11,166
	lgr	%r3,%r1
	larl	%r2,.LC2
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
.LFE2:

