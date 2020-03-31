#include <stdio.h>
#include <stdlib.h>

//bin_search - return index of key in array, if key found
//else return position where need to insert

int bin_search(int size, int* array, int key);
int divv(int first, int second);
int main() {
	const int size = 100;
	int* array = malloc(size * sizeof(int));
	for(int i = 0; i < 100; i++) {
		array[i] = i;
	}
	int key;
	for(int i = 0; i < 50; i++) {
                key = -(rand() % 150);
                printf("key - %d, position in array - %d\n", key, bin_search(size, array, key));
        }

	key = -1;
	printf("key - %d, position in array - %d\n", key, bin_search(size, array, key));
	for(int i = 0; i < 100; i++) {
		key = i;
		printf("key - %d, position in array - %d\n", key, bin_search(size, array, key));
	}
	key = 100;
	printf("key - %d, position in array - %d\n", key, bin_search(size, array, key));

	for(int i = 0; i < 50; i++) {
		key = rand() % 150;
		printf("key - %d, position in array - %d\n", key, bin_search(size, array, key));
	}
}
