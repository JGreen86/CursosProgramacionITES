#include <iostream>
using namespace std;

void quicksort(int arreglo[], int inf, int sup) {
  int izq=inf, der=sup, piv, aux;
  piv = arreglo[(izq+der)/2];

  do {
    while(arreglo[izq] < piv && izq < sup) izq++;
    while(piv < arreglo[der] && der > inf) der--;

    if(izq <= der) {
      aux = arreglo[izq];
      arreglo[izq] = arreglo[der];
      arreglo[der] = aux;
      izq++;
      der--;
    }
} while(izq <= der);
if(inf < der) quicksort(arreglo, inf, der);
if(sup > izq) quicksort(arreglo, izq, sup);
}
void imprimir(int A[], int n) {
  int i;
  for(i=0; i<n; i++) {
    cout<<A[i]<<endl;
  }
}

int main() {
  int x[] = {5,2,8,3,12,4,1,0};
  int n = sizeof(x)/sizeof(x[0]);

  quicksort(x, 0, n-1);
  imprimir(x, n);

  return 0;
}
