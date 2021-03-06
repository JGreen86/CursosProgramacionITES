import matplotlib.pyplot as plt

xr  = []
yr = []
ye = []

def factorial(n):
	if(n <= 1):
		return 1
	return n * factorial(n-1)

def exponencial(x):
	i=0
	r=0
	es=0.05
	while True:
		rAnt = r
		r = r + (pow(x,i) / factorial(i))
		i = i + 1
		ea = ((r - rAnt) / r) * 100.0
		xr.append(i)
		yr.append(r)
		ye.append(ea)
		if(ea < es):
			break
	return r

x = 0.5
r = exponencial(x)
print("Resultado = " + str(r))

plt.plot(xr,yr, 'bo', xr,ye,'ro')
plt.xlabel("Iteraciones")
plt.ylabel("Aproximaciones")
plt.show()



