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
