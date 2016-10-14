rankingcompleto = function(resultado = "ataque", num = "mejor") {
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
    #Trabajo
    out1 = read.csv("outcome-of-care-measures.csv")
    out1 = out1[grep("[[:digit:]]", out1[,resultado]), ]
        out2 = data.frame(out1[,2],out1[,7], out1[, resultado])
        colnames(out2) = c("Hospital", "Estado", "Resultado")
        out2 = out2[order(out1[,7], out1[,2]), ]
    final = NULL
    a = split(out2, out2[,2])
        for(y in 1:54){
            num2 = num
            num1 = length(which(y == as.numeric(out2[,2])))
            b = as.data.frame(a[y])
            a = b[order(as.numeric(as.vector(b[,3])), b[,1]), ]
                if(num == "mejor"){
                    num2 = 1
            }
                if (num == "peor"){
                    num2 = num1
                }
            a = data.frame(a[num2,1], a[1,2])
            final = rbind(final, a)
            a = split(out2, out2[,2])
            num = num
        }
    colnames(final) = c("Hospital", "Estado")
    final
}
