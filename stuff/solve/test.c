#include <stdio.h>
int solve(int a, int b, int c, int d);
int main() {
	int n;
	printf("Enter the number of tests ");
	scanf("%d", &n);
	int a, b, c, d;
	int result;
	for(int i = 0; i < n; i++) {
		scanf("%d%d%d%d", &a, &b, &c, &d);
		result = solve(a, b, c, d);
		if(result != -1) {
			printf("%d*x^3 + %d*x^2 + %d*x + %d have integer solve on [0, 255], x = %d\n", a, b, c, d, result);
		} else {
			printf("%d*x^3 + %d*x^2 + %d*x + %d have not integer solver on [0, 255]\n");
		}
	}
}
