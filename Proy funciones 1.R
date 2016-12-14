install.packages("termstrc")

library("termstrc")

setwd("C:/Users/Aaron/Documents")

data("zyields")
x <- zyields

maturities = c(1/12, 3/12, 6/12, 9/12, 1:12)
yields = as.matrix(x[, 2:ncol(x)])
dates = as.Date(x[, 1], format = "%d.%m.%Y")
datazyields = zeroyields(maturities, yields, dates)
datazyields

ns_res = estim_nss(datazyields, "ns")

plot(param(ns_res))

plot(ns_res)

Final = summary(ns_res)[1]
Final







