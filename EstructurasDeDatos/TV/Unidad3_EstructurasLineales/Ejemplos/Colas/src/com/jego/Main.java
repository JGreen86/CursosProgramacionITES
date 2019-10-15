package com.jego;

public class Main {

    public static void main(String[] args) {
	    ColaCircularArreglo colaCircular = new ColaCircularArreglo(3);
	    colaCircular.add(1);
	    colaCircular.add(2);
		colaCircular.add(3);

	    System.out.println(colaCircular.remove());
        System.out.println(colaCircular.remove());

		colaCircular.add(4);
        System.out.println(colaCircular.remove());
    }
}
