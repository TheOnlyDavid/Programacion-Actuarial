mediacontaminante = function(directorio="C:/Users/Aaron/Documents/GitHub/ProgramacionActuarial3/specdata", contaminante, id=1:332){
  setwd(directorio)
  res = vector("numeric")
  #Poniendo nombres
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
  if(contaminante == "sulfate"){
    a = mean(datos$sulfate, trim = 0 ,na.rm = T)
    res = c(res,a)
  }
  if(contaminante == "nitrate"){
    b = mean(datos$nitrate, trim = 0 ,na.rm = T)
    res = c(res,b)
  }
  
  }
  DF = data.frame(id, "media" = res)
  print(DF)
}
