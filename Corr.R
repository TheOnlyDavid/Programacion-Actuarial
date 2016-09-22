corr = function(directorio, horizonte){
  #Directorio y DF
  setwd("C:/Users/Aaron/Documents/GitHub/ProgramacionActuarial3/specdata") #Quitar y poner Directorio
  v = data.frame("cor" = numeric(0))
  n=1
  jn=1
  for(i in 1:322){ 
    if(i<10){
      i = paste("00",i,sep="")
    }
    else{
      if(i<100){
        i = paste("0",i,sep="")
      }
      else{
        i = paste(i,sep="")
      }
    }
    if(i>332){
      i = "001"
    }
    datos1 = read.csv(paste(i,".csv",sep=""), header = T)
    nobsdataS = datos1$sulfate[!is.na(datos1$sulfate)]
    datos2 = read.csv(paste(i,".csv",sep=""), header = T)
    nobsdataN = datos1$nitrate[!is.na(datos1$nitrate)]
    correlacion = cor(datos1$sulfate, datos1$nitrate, use = "na.or.complete")
      if(!is.na(correlacion > horizonte)){
      v[n,] = correlacion
      n = n+1
      }
  }
  print(v)
}
