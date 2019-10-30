import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split

data = pd.read_csv("temp.csv")
data.head()
X = data['temp'].values
Y = data['hum'].values
X = np.reshape(X,(-1,1))
X_train, X_test, y_train, y_test = train_test_split(X, Y,test_size=0.30)
from sklearn.neighbors import KNeighborsRegressor
neigh = KNeighborsRegressor(n_neighbors=2)
neigh.fit(X_train, y_train)

Y2 = neigh.predict(X_test)
print(Y2)
print("Coeficiente de determinación: ",neigh.score(X_test,y_test))
import matplotlib.pyplot as plt
plt.plot(X_test, y_test, 'bo', label='Original')
plt.plot(X_test, Y2, 'ro', label='Predicción')
plt.legend(loc='upper right')
plt.ylabel('Humedad')
plt.xlabel('Temperatura')
plt.show()