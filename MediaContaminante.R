id = vector("character", length = 3L)
mediacontaminante = function(directorio, contaminante, id=1:332){
  #Poniendo nombres
  id = abs(id)
  if(id<10){
    id = paste("00",id,sep="")
  }
  else{
    if(id<100){
      id = paste("0",id,sep="")
    }
    else{
      id = paste(id,sep="")
    }
  }
  if(id>332){
    id = "001"
  }
  #Directorio y llamar tabla
  setwd("C:/Users/Aaron/Documents/GitHub/ProgramacionActuarial3/specdata") #Quitar y poner Directorio
  datos = read.csv(paste(id,".csv",sep=""), header = T)
  if(contaminante == "sulfate"){
    a = mean(datos$sulfate, trim = 0 ,na.rm = T)
    print(a)
  }
  if(contaminante == "nitrate"){
    b = mean(datos$nitrate, trim = 0 ,na.rm = T)
    print(b)
  }
}
