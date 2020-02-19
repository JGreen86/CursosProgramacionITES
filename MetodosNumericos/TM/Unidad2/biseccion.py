
import matplotlib.pyplot as plt

def fx(x):
    return x**10 - 1
def fx2(x):
    return (-0.5*x**2) + (2.5*x) + 4.5
def generarGrafica(xi, xs, d):
    Lx = []
    Ly = []
    Ly2 = []
    x = xi
    while(x <= xs):
        y = fx2(x)
        Lx.append(x)
        Ly.append(y)
        Ly2.append(0)
        x = x + d
    plt.plot(Lx,Ly,Lx,Ly2)
    plt.show()

generarGrafica(5,10,0.01)

def biseccion(xi, xs, es):
    xr = 0
    fxi = fx2(xi)
    while True:
        xrAnt = xr
        xr = (xi + xs) / 2.0
        #fxi = fx(xi)
        #fxs = fx(xs)
        fxr = fx2(xr)
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

raiz = biseccion(5,10,0.001)
print(raiz)
print(fx2(raiz))



