from sklearn.neural_network import MLPClassifier
X = [[0., 0.], [0., 1.], [1., 0.], [1., 1.]]
y = [0, 1, 1, 0]

rna = MLPClassifier(
    activation='tanh', max_iter=10000, hidden_layer_sizes=(3))

rna.fit(X, y)
print("Clasificación",rna.predict(X))
print("Pesos",rna.coefs_)
print("Bias",rna.intercepts_)