package com.jego;

public class Main {

    private static void quicksort(int[] arreglo, int inf, int sup) {
        int izq=inf, der=sup, piv, aux;
        piv = arreglo[(inf+sup)/2];

        do{
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
        if(izq < sup) quicksort(arreglo, izq, sup);
    }


    public static void main(String[] args) {
        int[] arreglo = {1,4,3,5,2};
        quicksort(arreglo, 0, arreglo.length-1);
        for (int i=0; i<arreglo.length;i++) {
            System.out.println(arreglo[i]);
        }

    }
}