	.text
	.global d


d:
	//mul r0, r0, r0
	mov r1, #-1
	asr r0, r0, r1
	//add r1, r1, #-1000
	//mov r1, #100
	//mov r0, #100
 	bx lr
