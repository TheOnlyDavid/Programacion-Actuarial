mejor = function(estado, resultado) {
    #Datos
        if(!(resultado %in% as.vector(c("neumonia","falla","ataque")))){
            stop("Invalid outcome")
        }    
        if(resultado == "ataque"){
            resultado = 11 
        } 
        if(resultado == "falla"){
            resultado = 17
        } 
        if(resultado == "neumonia"){
            resultado = 23
        }

    out1 = read.csv("outcome-of-care-measures.csv")
    state =  as.character(out1$State)
        if(!(estado %in% state)){
            stop("Invalid state")
        }
    #Trabajo    
    sub1 = subset(out1, state == estado)
    sub2 = sub1[grep("[[:digit:]]", sub1[,resultado]), ]
        num =  sub2[,resultado]
        num1 = sort(as.numeric(as.vector(num)))
        num2 = as.numeric(num1[1])
            if(num2 == round(num2,0)){
        numf = paste(num2, ".0", sep = "")
    }else{
        numf = num1[1]
    } 
        
    sub3 = subset(sub2, as.vector(sub2[,resultado]) == numf)
    sub4 = sub3[order(sub3[,2]),]
        
        x = sub4[1,2]
        as.character(x)
} 
