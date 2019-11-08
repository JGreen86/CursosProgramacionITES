package com.jego;

public class Main {

    public static void main(String[] args) {
        Arbol arbol = new Arbol();
        arbol.insertar(30);
        arbol.insertar(20);
        arbol.insertar(10);
        arbol.insertar(15);
        arbol.insertar(45);
        arbol.insertar(35);
        arbol.insertar(50);

        arbol.inorder();



    }
}
