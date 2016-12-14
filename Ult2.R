install.packages("YieldCurve")
library("YieldCurve")

reserva = read.csv("C:/Users/Aaron/Downloads/FRB_H15.csv")
require(xts)
require(YieldCurve)
data(reserva)
first(reserva,'3 month')

mat.Fed<-c(3/12, 0.5, 1,2,3,5,7,10)
par(mfrow=c(2,3))
for( i in c(1,2,3,370,371,372) ){
    plot(mat.Fed, FedYieldCurve[i,], type="o", xlab="Maturities structure in years", ylab="Interest rates values")
    title(main=paste("Federal Reserve yield curve observed at",
                     time(FedYieldCurve[i], sep=" ") ))
    grid()
}

persp(1982:2012,maturity,FedYieldCurve[seq(2,nrow(FedYieldCurve),by=12),],
      theta=30,xlab="Year",ylab="Maturity (in years)",
      zlab="Interest rates (in %)",ticktype = "detailed",shade=.2,expand=.3)


hola =  as.data.frame(reserva[7:12, ])

hola1 = as.xts(hola)


colnames(hola) <- "ZeroRate"
plot(x = hola[, "ZeroRate"], xlab = "Time", ylab = "Zero Rate",
     main = "Market Zero Rates 2014-05-14", ylim = c(0.0, 0.06),
     major.ticks= "years", minor.ticks = FALSE, col = "red")

