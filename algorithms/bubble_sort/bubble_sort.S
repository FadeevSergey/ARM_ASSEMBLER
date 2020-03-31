/*
	r2 - register for second index (i)
	r3 - register for first index  (i - 1)
	r4 - register for temp number
	r5, r6 - registers for elements of array
	r7 - register for const FOUR
	r8 - register for shift in array

*/
	.text
	.global bubble_sort

bubble_sort:
	push {r4, r5, r6, r7, r8}
	mov r2, #1 	 // r2 = 1 'i'
	mov r7, #4 	 // FOUR
while:
	sub r3, r2, #1   // r3 = r2 - 1 'i - 1'
	mul r8, r3, r7   // r8 = (i - 1) * FOUR
	ldr r5, [r1, r8] // r5 = array[i - 1]
	mul r8, r2, r7   // r8 = i * FOUR
	ldr r6, [r1, r8] // r6 = array[i]
	cmp r5, r6

	ble skip_swap

	mul r8, r2, r7   // r8 = i * FOUR
	ldr r4, [r1, r8] // temp = array[i]
	str r5, [r1, r8] // array[i] = r5
	mul r8, r3, r7   // r8 = (i - 1) * FOUR
	str r4, [r1, r8] // array[i - 1] = temp
skip_swap:
	add r2, #1
	cmp r0, r2
	bgt while

	sub r0, #1

	cmp r0, #0
	bgt bubble_sort

	pop {r4, r5, r6, r7, r8}
	bx lr
