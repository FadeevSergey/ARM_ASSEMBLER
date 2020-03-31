	.text
	.global clear

clear:
	push {r4, r5}
	mov r2, #0 //i = 0
	mov r3, #0 //ZERO = 0
	mov r4, #4 //FOUR
clear_element:
	mul r5, r2, r4 //r5 = i * FOUR
	str r3, [r1, r5] //array[i] = ZERO
	add r2, #1 //i++
	cmp r0, r2
	bgt clear_element

	pop {r4, r5}
	bx lr
