#include <stdio.h>
#include <stdlib.h>

int bubble_sort(int, int*);

int main() {
	int size;
	scanf("%d", &size);
	int* array = malloc(size * sizeof(int));
	for(int i = 0; i < size; i++) {
		array[i] = rand() % 1000;
		printf("%d ", array[i]);
	}
	printf("\n");

	bubble_sort(size, array);

	for(int i = 0; i < size; i++) {
		printf("%d ", array[i]);
	}
	printf("\n");
	free(array);
}
