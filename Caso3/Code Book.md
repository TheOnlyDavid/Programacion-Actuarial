---
title: "CodeBook"
output: html_document
---
# Programaci�n Actuarial 3
## Caso 3
###Code Book

####Introducci�n
Aqu� vamos a describir las variables, base de datos y transformaciones que se
hicieron.

####Variables
Las variables elegidas en la base de datos provienen del aceler�metro y
giroscopio de los celulares en 3 ejes, las se�ales se usaron para generar
variables para los vectores X,Y y Z

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

Y las se�ales derivadas de estas variables fueron:

+ mean(): Media
+ std(): Desviaci�n estandar
+ mad(): Desviaci�n media absoluta 
+ max(): Valor m�s grande de los datos
+ min(): Valor m�s pequ�o de los datos
+ sma(): Signal magnitude area
+ energy(): Medici�n de energ�a 
+ iqr(): Rango intercuartil
+ entropy(): Se�al de entropia
+ arCoeff(): Coeficiente de autorregresion con orden igual a 4
+ correlation(): Coeficiente de correlaci�n entrre dos se�ales
+ maxInds(): �ndice de coeficiente de frecuencia con la magnitud m�s grande
+ meanFreq(): Coeficientes de frecuencia para obtener la frecuencia media
+ skewness(): Oblicuidad de la se�al de la frecuencia 
+ kurtosis(): Curtosis de la se�al de la frecuencia 
+ bandsEnergy(): Energia de un intervalo de frecuencia bajo la funci�n FFT
+ angle(): Angulo entre dos vectores

La lista de varibales completa se encuentra en: "features.txt"

####Base de Datos
El experimento se realiz� con un grupo de 30 persona entre los 19 y 48 a�os.
Cada persona hizo 6 actividades usando un Samsung Galaxy o la cadera. Usando el
aceler�metro y giroscopio del celular se obtuvieron datos de distintas variables
y luego se separaron en dos.

Para la base de datos y m�s informaci�n:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


####Transformaciones
1. Unir los datos de test con los de training, para crear un solo conjunto de
datos
2. Extrae �nicamente las medidas de media y desviaci�n est�ndar de cada medici�n
3.Usa nombres de actividad para describir los nombres de las actividades en la
base de datos
4. Coloca etiquetas apropiadas en la base de datos con nombres de variables que
las describan.
5. Con los datos del paso 4, crea una segunda base de datos independiente con
el promedio de cada variable para cada actividad y cada sujeto.









