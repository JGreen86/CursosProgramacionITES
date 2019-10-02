package com.jego;

public class Main {

    static void ejemplo(int[] x, int y) {
        y = y + 2;
        for (int i=0; i<x.length; i++) {
            x[i]=5;
        }
    }
    public static void main(String[] args) {
        int[] A = new int[5]; int B = 3;
        for (int i=0; i<A.length; i++) {
            A[i]=i;
        }
        ejemplo(A, B);
        for (int i=0; i<A.length; i++) {
            System.out.println(A[i]);
        }
        System.out.println("B " + B);



        /*PilaArreglo pila = new PilaArreglo();
        pila.push(1);
        pila.push(2);
        pila.push(3);

        System.out.println(pila.peek());
        System.out.println(pila.peek());
        System.out.println(pila.peek());*/

    }
}