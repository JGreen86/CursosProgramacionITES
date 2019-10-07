from sklearn import datasets
from sklearn.model_selection import KFold
iris = datasets.load_iris()
iris_X = iris.data
iris_Y = iris.target
print(iris_X)
# validación cruzada
print("Validación cruzada\n")
from sklearn.model_selection import cross_val_score
from sklearn.neighbors import KNeighborsClassifier
knn = KNeighborsClassifier(n_neighbors=7, metric='euclidean')
scores = cross_val_score(knn, iris_X, iris_Y, cv=10)
print("Resultados:\n",scores)
print("Exactitud: %0.2f (+/- %0.2f)" % (scores.mean(), scores.std() * 2))
# validación cruzada con matriz de confusión
print("\nvalidación cruzada con matriz de confusión\n")
from sklearn.model_selection import cross_val_predict
from sklearn.metrics import confusion_matrix, accuracy_score
cv_outputs = cross_val_predict(knn, iris_X, iris_Y, cv=10)
cmat = confusion_matrix(iris_Y, cv_outputs)
print("Matriz de confusión\n",cmat)
print("Exactitud %0.2f%%" % accuracy_score(iris_Y, cv_outputs))

print("\nKFold\n")
kf = KFold(n_splits=10, shuffle=True)
kf.get_n_splits(iris_X)

print(kf)
import numpy as np
vuelta = 1
mt = [[0,0,0],[0,0,0],[0,0,0]]
results = np.matrix(mt)
for train_index, test_index in kf.split(iris_X):
    print("Vuelta %d\n" % vuelta)
    print("Entrenamiento:", train_index, "\nPrueba:", test_index)
    X_train, X_test = iris_X[train_index], iris_X[test_index]
    y_train, y_test = iris_Y[train_index], iris_Y[test_index]
    knn.fit(X_train, y_train)
    output = knn.predict(X_test)
    cv_mat = confusion_matrix(y_test, output)
    exactitud = accuracy_score(y_test, output)
    print("Matriz de confusión\n", cv_mat)
    print("Exactitud = %0.2f%%" % exactitud)
    results = results + np.matrix(cv_mat)
    vuelta += 1
print("Matriz de confusión final\n",results)
