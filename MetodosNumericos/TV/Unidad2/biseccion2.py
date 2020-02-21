import sys
import matplotlib.pyplot as plt

def generarGrafica(fx, xi, xs, d):
    Lx = []
    Ly = []
    Ly2 = []
    x = xi
    while(x <= xs):
        y = eval(fx) # fx2(x)
        Lx.append(x)
        Ly.append(y)
        Ly2.append(0)
        x = x + d
    plt.plot(Lx,Ly,Lx,Ly2)
    plt.show()


def biseccion(fx, xi, xs, es):
    xr = 0
    x = xi
    fxi = eval(fx)  # fx2(xi)
    while True:
        xrAnt = xr
        xr = (xi + xs) / 2.0
        #fxi = fx(xi)
        #fxs = fx(xs)
        x = xr
        fxr = eval(fx) # fx2(xr)
        c = fxi * fxr
        if(c < 0):
            xs = xr
        elif(c > 0):
            xi = xr
            fxi = fxr
        else:
            return xr
        ea = ((xr - xrAnt) / xr) * 100.0
        if(abs(ea) < es):
            break
    return xr

if(len(sys.argv) < 5):
    print("Error!!! parametros insuficientes.")
    print("Ejecutar: python biseccion2.py fx xi xs es")
    sys.exit()

fx = sys.argv[1]
xi = float(sys.argv[2])
xs = float(sys.argv[3])
es = float(sys.argv[4])
#fx = "-0.5*x**2 + 2.5*x + 4.5"
generarGrafica(fx,xi,xs,0.01)
raiz = biseccion(fx, xi, xs,es)
print("raiz = " + str(raiz))
x = raiz
print("f("+str(raiz)+") = "+str(eval(fx)))
