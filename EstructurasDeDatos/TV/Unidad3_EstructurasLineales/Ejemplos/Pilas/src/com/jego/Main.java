package com.jego;

public class Main {

    public static void main(String[] args) {

        PilaArreglo pila = new PilaArreglo();
        pila.push(1);
        pila.push(2);
        pila.push(3);

        System.out.println(pila.pop());
        System.out.println(pila.pop());
        System.out.println(pila.pop());

        PilaEnlazada pila2 = new PilaEnlazada();
        pila2.push(1);
        pila2.push(2);
        pila2.push(3);
        System.out.println(pila2.pop());
        System.out.println(pila2.pop());
        System.out.println(pila2.pop());
    }
}