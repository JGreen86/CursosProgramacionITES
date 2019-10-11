// Cola circular implementada como arreglo
#include <iostream>
using namespace std;

typedef struct {
  int *datos;
  int longitud;
  int n;
  int frente;
}Cola;

void insertar(Cola *cola, int v) {
  if(cola->n < cola->longitud) {
    int pos = (cola->frente + cola->n) % cola->longitud;
    cola->datos[pos] = v;
    cola->n = cola->n + 1;
  } else {
    cout<<"Imposible insertar el dato "<<v<<". Cola llena."<<endl;
  }
}
int eliminar(Cola *cola) {
  int v = cola->datos[cola->frente];
  cola->n = cola->n - 1;
  cola->frente = (cola->frente + 1) % cola->longitud;
  return v;
}
Cola crearCola(int tam) {
  Cola cola;
  cola.datos = new int(tam);
  cola.longitud = tam;
  cola.n = 0;
  cola.frente = 0;
  return cola;
}
int main() {
  Cola cola = crearCola(3);

  insertar(&cola, 1);
  insertar(&cola, 2);
  insertar(&cola, 3);
  insertar(&cola, 5);
  cout<<eliminar(&cola)<<endl;
  cout<<eliminar(&cola)<<endl;
  insertar(&cola, 4);
  cout<<eliminar(&cola)<<endl;
  cout<<eliminar(&cola)<<endl;
  return 0;
}
