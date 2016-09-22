completos = function(directorio = "C:/Users/Aaron/Documents/GitHub/ProgramacionActuarial3/specdata", id){
  #Directorio y DF
  setwd(directorio) #Quitar y poner Directorio
  res = vector("numeric")
  for(i in id){ 
    i = abs(i)
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
  datos = read.csv(paste(i,".csv",sep=""), header = T)
    nobsD = cbind(datos[, 2:3])
    comp = complete.cases(nobsD)
    casos = nobsD[comp, ]
    contar = nrow(casos)
      res = c(res, contar)
  }
  DF<- data.frame(id, "nobs" = res)
  print(DF)
}
