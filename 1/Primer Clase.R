#Crear vectores con la funcion vector
x <- vector(mode="numeric", length = 5L)
x

#Crear vectores con la funcion c
x <- c(0.5,0.6)
x
class(x)

x <- c(TRUE,FALSE,T,F)
x
class(x)

x <- 10:0
x
class(x)

x <- c(1+2i,5,3+9i,-5i)
x
class(x)

x <- c("a","b","c","d")
x
class(x)

#Mezcla de objetos
y <- c(1.7,"a")   #Caracter
y
class(y)
y <- c(T,2)       #Numerico
y
class(y)
y <- c("a", T)    #Caracter
y
class(y)

y <- c(T, 10L, 8.5,1+1i, "a")
y
class(y)
#Orden de coaccioon explicita
#1 Character
#2 Complex
#3 Numeric
#4 Integer
#5 Logical

z <- 0:6
class(z)
as.numeric(z)
as.logical(z)

z<- c(1+2i,3+4i,8,0+3i,0,0+0i)
as.logical(z)

#Listas (como un vector de vectoreas)
x <- list(1,"a",T,1+4i,1:100)
x
class(x)

#Matrices
m <- matrix(nrow = 2,ncol = 3)
m
dim(m)
attributes(m)

