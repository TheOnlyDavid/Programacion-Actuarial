setwd("C:/Users/Aaron/Documents/GitHub/ProgramacionActuarial3")

#Parte1) Juntar Datos
Juntarx = rbind(read.table("./Caso3/train/X_train.txt"), 
                read.table("./Caso3/test/X_test.txt"))
Juntary = rbind(read.table("./Caso3/train/y_train.txt"),
                read.table("./Caso3/test/y_test.txt"))[,1]
JuntarSub = rbind(read.table("./Caso3/train/subject_train.txt"),
                read.table("./Caso3/test/subject_test.txt"))
Titulo = read.table("./Caso3/features.txt")

#Parte2) Solo media y desviacion std
        colnames(Juntarx) <- Titulo[,2]
Mediastd = grepl('-(mean|std)\\(', Titulo[,2])
Juntarx = Juntarx[Mediastd]

#Parte3) Usar nombre de actividad
Act = as.character(read.table("./Caso3/activity_labels.txt")[,2])
Juntary = Act[Juntary]

#Parte4) Etiquetas apropiadas

cambio = colnames(Juntarx)
    cambio = gsub("\\()", "", cambio)
    cambio = gsub('([[:upper:]])', ' \\1', cambio)
    cambio = gsub("Body Body", "Body", cambio)
    cambio = gsub("\\-", " -", cambio)
    cambio = gsub("-mean", "- Media", cambio)
    cambio = gsub("-std", "- DesvEst", cambio)
    cambio = gsub("t", "T", cambio)
    cambio = gsub("f", "F", cambio)
colnames(Juntarx) = cambio

Sujeto = JuntarSub
colnames(Sujeto) = "Sujeto"
Acción = Juntary
Final = cbind(Sujeto, Acción, Juntarx)

#Parte5)
library(dplyr) #debe estar instalado antes
prom_final <- Final %>% group_by(Sujeto,Acción) %>% summarise_each(funs(mean))
write.csv(prom_final,"Promedio de acciones.csv")
write.csv(MediasFinal, "Medias acciones.csv")

write.csv(Final, "Datos Ordenados.csv")
