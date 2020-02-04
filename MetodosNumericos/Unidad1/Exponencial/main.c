#include <stdio.h>
#include <math.h>

int factorial(int n) {
	if(n <= 1) return 1;
	return n * factorial(n-1);
}
double exponencial(double x) {
	int i=0;
	double ea, r = 0, es = 0.05, rAnt;
	printf("Termino\tResultado\tEa");
	do {
		rAnt = r;
		r = r + (pow(x,i) / (double)factorial(i));
		i = i + 1;
		ea = ((r - rAnt) / r) * 100.0;
		printf("\n%d\t%f\t%f",i,r,ea);
	}while(ea >= es);
	return r;
}

int main() {
	double x = 0.5, r;
	r = exponencial(x);
	printf("\nResultado = %f\n",r);
	return 0;
}
