.global main
main:
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	mov r0,#10
	mov r1,#10
	blx	adds
	blx	prints
	mov r0,#30
	mov r1,#10
	blx	subs
	blx	prints
	mov r0,#10
	mov r1,#2
	blx	mul
	blx	prints
	mov r0,#10
	mov r1,#2
	blx	adivs
	blx	prints
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
var_hellos: .word var_hello
var_hello:    .asciz "hello world %d\0"

