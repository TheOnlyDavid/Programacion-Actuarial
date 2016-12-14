---
title: "CodeBook"
output: html_document
---
# Programaci�n Actuarial 3
## Caso 3
### H�rnandez Resendiz Guillermo
### Montero Zapata Judy Esperanza
### Moreno T�llez Melissa
### Ram�rez Olmeda David Aar�n

####Introducci�n
Los datos analizados en este caso son recabados de los aceler�metros de
celulares Samsung Galaxy, pero vienen en diferentes archivos de texto, la misi�n
es acomodarlos de tal forma que sean entendibles para cualquiera.

####Parte 1
Tenemos que juntar los datos de train y test de x, luegos los mismos, pero de y,
tambi�n juntamos los sujetos de prueba y leemos "feature.txt" para usarlos
despues.

```r
Juntarx = rbind(read.table("./Caso3/train/X_train.txt"), 
                read.table("./Caso3/test/X_test.txt"))
Juntary = rbind(read.table("./Caso3/train/y_train.txt"),
                read.table("./Caso3/test/y_test.txt"))[,1]
JuntarSub = rbind(read.table("./Caso3/train/subject_train.txt"),
                read.table("./Caso3/test/subject_test.txt"))
Titulo = read.table("./Caso3/features.txt")
```

####Parte 2
Tenemos que usar �nicamente los datos de media y desviaci�n estandar de los
datos. Primero tenemos que ponerle los nombres a las columnas de los datos,
de otra forma ser�a dificil hacerlo despu�s.

```r
        colnames(Juntarx) <- Titulo[,2]
Mediastd = grepl('-(mean|std)\\(', Titulo[,2])
Juntarx = Juntarx[Mediastd]
```

####Parte 3
Hay que poner los nombres de las actividades (Walking, walking upstairs, etc.)
a "Juntary".

```r
Act = as.character(read.table("./Caso3/activity_labels.txt")[,2])
Juntary = Act[Juntary]
```

####Parte 4
En este paso ya est� hecho, pero se pueden escribir los nombres de las columnas
de una forma m�s amena, luego juntamos los datos para formar la tabla de datos
final.

```r
cambio = colnames(Juntarx)
    cambio = gsub("\\()", "", cambio)
    cambio = gsub('([[:upper:]])', ' \\1', cambio)
    cambio = gsub("Body Body", "Body", cambio)
    cambio = gsub("\\-", " -", cambio)
    cambio = gsub("-mean", "- Media", cambio)
    cambio = gsub("-std", "- DesvEst", cambio)
    cambio = gsub("t", "T", cambio)
    cambio = gsub("f", "F", cambio)
colnames(Juntarx) = cambio

Sujeto = JuntarSub
colnames(Sujeto) = "Sujeto"
Acci�n = Juntary
Final = cbind(Sujeto, Acci�n, Juntarx)
```

####Parte 5
Hay que sacar el promedio de cada variable (columna), para cada actividad y
sujeto, se puede hacer f�cil en un l�nea.

```r
library(dplyr) #debe estar instalado antes
prom_final <- Final %>% group_by(Sujeto,Acci�n) %>% summarise_each(funs(mean))
write.csv(prom_final,"Promedio de acciones.csv")
write.csv(MediasFinal, "Medias acciones.csv")
```

####Parte 6 (Opcional)
Creamos la base de datos por separado en un archivo ".csv"

```r
write.csv(Final, "Datos Ordenados.csv")
```
