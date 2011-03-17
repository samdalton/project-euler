#include <stdio.h>
#include <math.h>


int isPrime(int n) {
	int i = 2;
	
	if (n < 2) return 0;
	
	while (i <= (sqrt(n))) {
		//no need to check if it's divisible by 2 or 3
		if ((n % 2) == 0) return 0;
		if ((n % 3) == 0) return 0;
		if ((n % 5) == 0) return 0;
		if ((n % 7) == 0) return 0;
		if ((n % 11) == 0) return 0;

		if ((n % i) == 0) return 0;
				
		i = i + 2;	//only check odd numbers
	}
	
	return 1;
}



int main() {	
	
	double sum = 5;
	
	int i = 5;
	
	while (i < 2000000) {
		if (isPrime(i)) sum += i;
		i = i + 2;	//we don't need to check even numbers
		printf("%d\n", i);
	}

	printf("Sum of primes less than 2,000,000 : %ld\n", sum);

	return 0;
}
