//int summ(int x0, int N, int* x)

    .text
    .global summ
summ:
    // return (N > 0) ? summ(x0 + x[0], N - 1, &x[1]) : x0

    ldr r3, [r2] //load in r3 x[0]
    add r2, r2, #4 // x = &x[1]
    sub r1, r1, #1 // N--
    add r0, r0, r3 // x0 += x[0]

    cmp r1, #0
    bgt summ
    bx lr
