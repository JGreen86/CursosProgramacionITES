import matplotlib.pyplot as plt

def factorial(n):
	if(n <= 1):
		return 1
	return n * factorial(n - 1)

def exponencial(x):
	i = 0
	es = 0.05
	r = 0

	while True:
		rAnt = r
		r = r + (pow(x,i) / factorial(i))
		i = i + 1
		ea = ((r - rAnt) / r) * 100
		if(ea < es):
			break
	return r

x = 0.5
r = exponencial(x)
print("Resultado = " + str(r))
