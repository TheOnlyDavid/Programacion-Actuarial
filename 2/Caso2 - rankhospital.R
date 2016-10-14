rankhospital = function(estado="TX", resultado = "ataque", num = "mejor") {
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
        sub3 = data.frame(as.vector(sub2[,2]), sub2[,resultado])
        colnames(sub3) = c("Hospital", "Res")
            sortdat = sub3[order(as.numeric(as.vector(sub3[,2])), sub3[,1]) , ]

            if(num == "mejor"){
                num = 1
            }
            if(num == "peor"){
                num = length(sub3[,1])
            }
            as.vector(sortdat[num,1])
            
} 
