completos = function(directorio, id){
  #Directorio y DF
  setwd("C:/Users/Aaron/Documents/GitHub/ProgramacionActuarial3/specdata") #Quitar y poner Directorio
  v = data.frame("id" = numeric(0), "nobs" = numeric(0))
  a = id[1]
  for(i in id){ 
    i = abs(i)
    b = (i - a)+1
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
  nobsdata = sum(complete.cases(datos$sulfate))
  v[b,] = c(i,nobsdata)
  }
  print(v)
}
