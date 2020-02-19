import matplotlib.pyplot as plt

def fx(x):
    return x**10 - 1

def generarGrafica(xi, xs, d):
    Lx = []
    Ly = []
    Ly2 = []
    x = xi
    while(x <= xs):
        y = fx(x)
        Lx.append(x)
        Ly.append(y)
        Ly2.append(0)
        x = x + d
    plt.plot(Lx,Ly,Lx,Ly2)
    plt.show()

generarGrafica(0,1.3,0.01)

def biseccion(xi, xs, es):
    xr = 0
    while True:
        xrAnt = xr
        xr = (xi + xs) / 2.0
        fxi = fx(xi)
        fxs = fx(xs)
        fxr = fx(xr)
        c = fxi * fxr
        if(c < 0):
            xs = xr
        elif(c > 0):
            xi = xr
        else:
            return xr
        ea = ((xr - xrAnt) / xr) * 100.0
        if(abs(ea) < es):
            break
    return xr

raiz = biseccion(0,1.3,0.001)
print("raiz = " + str(raiz))
print("f("+str(raiz)+") = "+str(fx(raiz)))


