import numpy as np
from sklearn import datasets
import matplotlib.pyplot as plt
from sklearn.cluster import KMeans

iris = datasets.load_iris()
iris_X = iris.data
#iris_Y = iris.target

km = KMeans(
    n_clusters=3, init='random',
    n_init=10, max_iter=300
)
y_km = km.fit_predict(iris_X)
print(y_km)
# plot the 3 clusters
plt.scatter(
    iris_X[y_km == 0, 0], iris_X[y_km == 0, 1],
    s=50, c='lightgreen',
    marker='s', edgecolor='black',
    label='Clase 0'
)

plt.scatter(
    iris_X[y_km == 1, 0], iris_X[y_km == 1, 1],
    s=50, c='orange',
    marker='o', edgecolor='black',
    label='Clase 1'
)

plt.scatter(
    iris_X[y_km == 2, 0], iris_X[y_km == 2, 1],
    s=50, c='lightblue',
    marker='v', edgecolor='black',
    label='Clase 2'
)

# plot the centroids
plt.scatter(
    km.cluster_centers_[:, 0], km.cluster_centers_[:, 1],
    s=250, marker='*',
    c='red', edgecolor='black',
    label='centroids'
)
plt.legend(scatterpoints=1)
plt.grid()
plt.show()