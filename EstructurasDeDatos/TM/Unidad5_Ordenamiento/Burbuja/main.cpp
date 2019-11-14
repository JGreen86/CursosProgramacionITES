#include <iostream>
using namespace std;


void burbuja(int x[], int n) {
  int i,j,aux, k=n;
  int intercambio = 1;
  while(intercambio) {
    intercambio=0;
    k=k-1;
    for(j=0; j<k; j++) {
      if(x[j] > x[j+1]) {
        aux = x[j];
        x[j] = x[j+1];
        x[j+1] = aux;
        intercambio=1;
      }
    }
  }
}

void imprimir(int x[], int n) {
  int i;
  for(i=0; i<n; i++) {
    cout<<x[i]<<endl;
  }
}

int main() {
  int x[] = {4,5,1,23,3,2,0,12};
  int n = sizeof(x)/sizeof(x[0]);
  burbuja(x, n);
  imprimir(x, n);
}
