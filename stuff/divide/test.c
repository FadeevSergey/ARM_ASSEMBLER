#include <stdio.h>

int d(int);

int main() {

	for(int i = -10; i < 20; i++) {
		printf("%d >> 1 = %d\n", i, d(i));
	}

}
