package com.jego;


public class Main {

    static int factorial(int n) {
        if(n <= 1) return 1;
        return n * factorial(n - 1);
    }
    static double exponencial(double x) {
        int i = 0;
        double r = 0, es = 0.05, ea, rAnt;
        System.out.println("Termino\tResultado\tEa");
        do {
            rAnt = r;
            r = r + (Math.pow(x, i) / (double)factorial(i));
            i++;
            ea = ((r - rAnt) / r) * 100.0;
            System.out.print("\n"+i+"\t---"+r+"\t---"+ea);
        }while(Math.abs(ea) >= es);
        return r;
    }
    public static void main(String[] args) {
        double x = 0.5;
        double r = exponencial(x);
        System.out.println("\nResultado = " + r);
    }
}
