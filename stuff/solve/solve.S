	.text
	.global solve

solve:
	push {r4-r9}
	mov r4, #0
	mov r6, #-1
while:
	cmp r4, #255
	bgt return
	mul r5, r0, r4
	mul r5, r5, r4
	mul r5, r5, r4
	mul r1, r1, r4
	mul r1, r1, r4
	add r5, r5, r1
	mul r2, r2, r4
	add r5, r5, r2
	add r5, r5, r3

	cmp r5, #0
	beq return
	add r4, #1
	b while
return:
	mov r0, r4
	pop {r4-r9}
	bx lr
