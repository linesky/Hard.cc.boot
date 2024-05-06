
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
	.section	.rodata
	.align	2
.LC0:
	.string	"hello world\n"
	.align	2
.LC1:
	.string	"\033[43;37m%s  %d\n"
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
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	larl	%r1,.LC0
	stg	%r1,160(%r11)
	lg	%r2,160(%r11)
	brasl	%r14,strslen
	lgr	%r1,%r2
	lgfr	%r1,%r1
	lgr	%r4,%r1
	lg	%r3,160(%r11)
	larl	%r2,.LC1
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
.LFE1:

