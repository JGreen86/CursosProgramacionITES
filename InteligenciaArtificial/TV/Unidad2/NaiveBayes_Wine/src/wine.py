from sklearn import preprocessing
from sklearn.metrics import accuracy_score
from sklearn.model_selection import train_test_split
from sklearn.naive_bayes import GaussianNB
from sklearn.neighbors import KNeighborsClassifier
from sklearn.datasets import load_wine

wine = load_wine()
X_train, X_test, y_train, y_test = train_test_split(wine.data, wine.target,test_size=0.30)

#KNN
knn = KNeighborsClassifier(n_neighbors=5)
knn.fit(X_train, y_train)
output = knn.predict(X_test)
print("Exactitud KNN (k=5, no estandarizado) = %0.2f%% " % (accuracy_score(y_test, output) * 100))

#KNN estandarizado
scaler = preprocessing.StandardScaler().fit(X_train)
X_train_std = scaler.transform(X_train)
X_test_std = scaler.transform(X_test)
knn.fit(X_train_std, y_train)
output_std = knn.predict(X_test_std)
print("Exactitud KNN (k=5, estandarizado) = %0.2f%% " % (accuracy_score(y_test, output_std) * 100))
#Naive bayes
gnb = GaussianNB()
gnb.fit(X_train, y_train)
output_Gnb = gnb.predict(X_test)
print("Exactitud Naive bayes (no estandarizado) = %0.2f%% " % (accuracy_score(y_test, output_Gnb) * 100))
#Naive bayes estandarizado
gnb.fit(X_train_std, y_train)
output_Gnb_std = gnb.predict(X_test_std)
print("Exactitud Naive bayes (estandarizado) = %0.2f%% " % (accuracy_score(y_test, output_Gnb_std) * 100))