	.text
	.global bin_search

bin_search:
	push {r4, r5, r6, r7, r8}

	mov r3, #4     	// FOUR
	mov r4, #-1    	// left = -1
	mov r5, r0     	// right = size

while:
	sub r6, r5, r4 	// r6 = right - left
	cmp r6, #1
	ble skip

	asr r6, #1	// r6 = r6 / 2 | (r6 = (right - left) / 2)
	add r6, r4, r6	// middle = left + (right - left) / 2

	mul r7, r6, r3 	// i = middle * FOUR
	ldr r8, [r1, r7]

if:
	cmp r2, r8

	ble else
then:
	mov r4, r6
	b endif
else:
	mov r5, r6
endif:
	b 	while

skip:
	mov r0, r5

	pop {r4, r5, r6, r7, r8}
	bx lr
