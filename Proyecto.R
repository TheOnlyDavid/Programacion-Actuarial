install.packages("termstrc")

library("termstrc")

setwd("C:/Users/Aaron/Documents")

data("zyields")
x <- zyields

maturities <- c(1/12, 3/12, 6/12, 9/12, 1:12)
yields <- as.matrix(x[, 2:ncol(x)])
dates <- as.Date(x[, 1], format = "%d.%m.%Y")
datazeroyields <- zeroyields(maturities, yields, dates)
datazeroyields

ns_res = estim_nss(datazeroyields, "ns")
sv_res = estim_nss(datazeroyields, "sv")

plot(param(ns_res))
plot(ns_res)

Final = summary(ns_res)[1]
Final

