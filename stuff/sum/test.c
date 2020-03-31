#include <stdio.h>
#include <stdlib.h>

int summ(int x0, int N, int* x);

int main() {
    int N;
    scanf("%d", &N);

    int *x = malloc(N * sizeof(int));
    int x0 = 0;

    for(int i = 0; i < N; i++) {
	x[i] = i + 1;
    }

    int result = summ(x0, N, x);

    printf("%d\n", result);

    free(x);
}
