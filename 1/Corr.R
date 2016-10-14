corr = function(directorio = "C:/Users/Aaron/Documents/GitHub/ProgramacionActuarial3/specdata", horizonte=0){
  #Directorio y DF
  setwd(directorio)
  v = data.frame("cor" = numeric(0))
  res = vector("numeric")
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
    
    datos = read.csv(paste(i,".csv",sep=""), header = T)
      comp = complete.cases(datos)
      casos = datos[comp, ]
      contar = nrow(casos)
        
    if(contar > horizonte){
      correlacion = cor(casos[2],casos[3])
      res = c(res, correlacion)
    }
  }
  print(res)
  }
