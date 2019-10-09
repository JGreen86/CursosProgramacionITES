// Cola simple
#include <iostream>
using namespace std;

struct nodo {
  int dato;
  struct nodo *siguiente;
};
typedef struct {
  struct nodo *frente;
  struct nodo *final;
}Cola;

void insertar(Cola *cola, int v) {
  nodo *nuevo = new(struct nodo);
  nuevo->dato = v;
  nuevo->siguiente = NULL;
  if(cola->frente == NULL) {
    cola->frente = nuevo;
    cola->final = nuevo;
  } else {
    cola->final->siguiente = nuevo;
  }
  cola->final = nuevo;
}
int eliminar(Cola *cola) {
  nodo *aux = cola->frente;
  int v = aux->dato;
  cola->frente = aux->siguiente;
  return v;
}
Cola crearCola() {
  Cola cola;
  cola.frente = NULL;
  cola.final = NULL;
  return cola;
}
int main() {
  Cola cola = crearCola();
  insertar(&cola, 1);
  insertar(&cola, 2);
  insertar(&cola, 3);

  cout<<eliminar(&cola)<<endl;
  cout<<eliminar(&cola)<<endl;
  cout<<eliminar(&cola)<<endl;
  return 0;
}
