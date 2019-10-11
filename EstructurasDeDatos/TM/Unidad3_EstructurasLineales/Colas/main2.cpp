// Cola circular enlazada
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
  nuevo->siguiente = nuevo;
  if(cola->frente == NULL && cola->final == NULL) {
    cola->frente = nuevo;
  } else {
    cola->final->siguiente = nuevo;
    nuevo->siguiente = cola->frente;
  }
  cola->final = nuevo;
}
int eliminar(Cola *cola) {
  int v = cola->frente->dato;
  if(cola->frente == cola->final) {
    cola->frente = NULL;
    cola->final = NULL;
  } else {
    struct nodo *aux = cola->frente;
    cola->final->siguiente = aux->siguiente;
    cola->frente = aux->siguiente;
    delete aux;
  }
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
