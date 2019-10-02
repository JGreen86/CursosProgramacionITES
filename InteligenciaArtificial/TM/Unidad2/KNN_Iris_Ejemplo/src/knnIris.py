import numpy as np
from sklearn import datasets
iris = datasets.load_iris()
iris_X = iris.data
iris_Y = iris.target
print("iris data",iris_X)
print("targets",iris_Y)

np.random.seed(0)
indices = np.random.permutation(len(iris_X))
iris_X_train = iris_X[indices[:-45]]
iris_Y_train = iris_Y[indices[:-45]]
iris_X_test = iris_X[indices[-45:]]
iris_Y_test = iris_Y[indices[-45:]]

# KNN
from sklearn.neighbors import KNeighborsClassifier
knn = KNeighborsClassifier(n_neighbors=1)
knn.fit(iris_X_train, iris_Y_train)

output = knn.predict(iris_X_test)
print("output\n",output)
print("resultados esperados\n",iris_Y_test)
print("diferencia(output - iris_Y_test)\n",output - iris_Y_test)

from sklearn.metrics import accuracy_score, confusion_matrix

accuracy = accuracy_score(iris_Y_test, output)
print("Exactitud : %0.1f%% " % (accuracy * 100))

print("Matriz de confusion\n",confusion_matrix(iris_Y_test, output))