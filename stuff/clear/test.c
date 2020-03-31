#include <stdio.h>
#include <stdlib.h>

void clear(int size, int* array);

int main() {
	int size;
	scanf("%d", &size);
	int* array = malloc(size * sizeof(int));

	for(int i = 0; i < size; i++) {
		array[i] = i + 1;
		printf("%d ", array[i]);
	}
	printf("\n");

	clear(size, array);

	for(int i = 0; i < size; i++) {
		printf("%d ", array[i]);
	}
	printf("\n");
}
