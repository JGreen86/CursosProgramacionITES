package com.jego;

public class Arbol implements ABB {

    private Nodo raiz;

    public Arbol() {

    }

    @Override
    public void insertar(int dato) {
        Nodo nuevo = new Nodo();
        nuevo.setDato(dato);
        nuevo.setIzq(null);
        nuevo.setDer(null);

        if (raiz == null) { // Arbol vacio
            raiz = nuevo;
            return;
        }
        Nodo padre = null;
        Nodo actual = raiz;

        while(actual != null && actual.getDato() != dato) {
            padre = actual;
            if (dato < actual.getDato()) {
                actual = actual.getIzq();
            } else if (dato > actual.getDato()) {
                actual = actual.getDer();
            }
        }
        if(actual != null) return;

        if(dato < padre.getDato()) {
            padre.setIzq(nuevo);
        } else if (dato > padre.getDato()) {
            padre.setDer(nuevo);
        }
    }

    @Override
    public void eliminar(int dato) {

    }

    @Override
    public void consultar(int dato) {

    }

    @Override
    public void actualizar(int dato, int valor) {

    }

    @Override
    public void preorden() {

    }
    @Override
    public void inorder(){
        inorder2(raiz);
    }
    private void inorder2(Nodo raiz) {
        if(raiz != null) {
            inorder2(raiz.getIzq());
            System.out.println(raiz.getDato());
            inorder2(raiz.getDer());
        }
    }
    @Override
    public void postorden() {

    }

    private class Nodo {

        private int dato;
        private Nodo izq;
        private Nodo der;

        public int getDato() {
            return dato;
        }

        public void setDato(int dato) {
            this.dato = dato;
        }

        public Nodo getIzq() {
            return izq;
        }

        public void setIzq(Nodo izq) {
            this.izq = izq;
        }

        public Nodo getDer() {
            return der;
        }

        public void setDer(Nodo der) {
            this.der = der;
        }
    }
}
