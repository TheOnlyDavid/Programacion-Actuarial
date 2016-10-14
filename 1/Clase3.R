x = airquality[,5]
f = gl(x,30)
split(x,f)

s = split(airquality, airquality$Month)
s
lapply(s, function(x) colMeans(x[,1:3]))
sapply(s, function(x) colMeans(x[,1:4], na.rm = T))

f1 = gl(2,5)
f2 = gl(5,2)
interaction(f1,f2)


rm(x)
mean(x)
traceback()
lm(y ~x)
debug(lm)

options(error = recover)
read.csv("perritosgay")

str(str)
str(lm)
str(ls)
x = rnorm(100)
str(x)
summary(x)

f = gl(40, 10)
str(f)
summary(f)

str(airquality)

m = matrix(rnorm(100), 10, 10)
str(m)

s = split(airquality, airquality$Month)
str(s)

#Num Alea
x = rnorm(10)
x
y = rnorm(10, 50, 5)
y
summary(x)
summary(y)
set.seed(1)
rnorm(5)

normal1 = rnorm(10000)
normal2 = rnorm(10000, 10, 5)
hist(normal1)
summary(normal1)

poisson1 = rpois(10000,1)
poisson2 = rpois(10000,10)
hist(poisson2)

ppois(2,2)
ppois(6,2)
hist(rpois(10000,2), labels = T)

for(i in 0:11){
    print(dpois(i,2))
}

hist(runif(10000,10,20))

set.seed(20)
B0 = 0.5
B1 = 2
x = rnorm(100, 0 , 1)
e = rnorm(100, 0, 2)
y = B0 + B1*x + e
plot(x,y)

z = B0 + B1*x
plot(x,z)

set.seed(10)
x = rbinom(100, 1, 0.5)
e = rnorm(100, 0 ,2)
y = 0.5 +2*x +e
summary(y)
plot(x, y, main="modelo lineal", col="dark red")

set.seed(1)
x = rnorm(100,0,1)
log.mu = 0.5 +0.3*x
y = rpois(100, exp(log.mu))
summary(y)
plot(x, y, main = "Modelo poisson", col = "forestgreen")

set.seed(1)
sample(1:10, 4)
sample(letters, 5)
sample(1:10, replace = T)

system.time(readLines("http://www.fcfm.buap.mx"))
hilbert = function(n){
    i = 1:n
    1/outer(i-1,i,"+")
}
x = hilbert(1000)
system.time(svd(x))