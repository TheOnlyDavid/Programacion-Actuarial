#Dato de la web

if(!file.exists("data")) dir.create("data")

url = "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(url, destfile = "./data/camaras.csv")
list.files("./data")

fechaDescarga = date()
fechaDescarga

#Cargar los datos desde pc
dataCam = read.table("./data/camaras.csv",header = T , sep=",")
dataCam


#Ejemplo 2
if(!file.exists("data")) dir.create("data")
url = https://data.baltimorecity.gov/api/views/dz54-2aru/rows.xml?accessType=DOWNLOAD
download.file(url, destfile = "./data/camaras.xml")
list.files("./data")

fechaDescarga = date()
fechaDescarga

dataCam = read.table("./data/camaras.xml",header = T , sep=",")
dataCam

#Clase

    url = "http://www.w3schools.com/xml/simple.xml"
    data = xmlTreeParse(url, useInternalNodes = T)
    nodoRaiz = xmlRoot(data)
    xmlName(nodoRaiz)
    names(nodoRaiz)
    
    nodoRaiz[[1]][[1]]
    xmlSApply(nodoRaiz, xmlValue)
    xpathSApply(nodoRaiz, "//name", xmlValue)
    xpathSApply(nodoRaiz, "//price", xmlValue)
    
    library(jsonlite)
    jsonData = fromJSON("https://api.github.com/users/TheOnlyDavid/repos")
    names(jsonData)
    
    myjson = toJSON(iris, pretty = T)
    cat(myjson)
    iris2 = fromJSON(myjson)
    iris2
    
#Clase
    libray()
    DT = data.table(x = rnorm(9), y=rep(c("a", "b", "c"), each = 3), z = rnorm(9))
    DT[DT$y == "a"]
    DT[DT$y == "b"]
    
    DT[c(2,3)]
    DT[list(mean(x), sum(z))]
    DT[,table(y)]
    DT[, w:= z^2]
    DT
    
    DT2 = DT
    DT[, y:=2]
    DT
    DT2
    
    set.seed(123)
    DT = data.table(x=sample(letters[1:3], 1E5, T))
    DT
    
    tables()
    #clase
    library(data.table)
    DT = data.table(x=rep(letters[1:3], each=100), y = rnorm(100))
    setkey(DT, x)
    DT['a']
    
    DF = data.frame(x=rnorm(9), y=rep(c("a", "b", "c"), each=3), z=rnorm(9))
    head(DF, 3)
    
    DT1 = data.table(x=c('a', 'a', 'b', 'dt1'), y=1:4)
    DT2 = data.table(x=c('a', 'b', 'dt2'), z=5:7)
    setkey(DT1, x); setkey(DT2, x)
    merge(DT1, DT2)
    
    set.seed(1)
    df_gde = data.frame(x=rnorm(1E6), y=rnorm(1E6))
    file = tempfile()
    write.table(df_gde, file=file, row.names=F, col.names=T, sep="\t", quote=F)
    system.time(fread(file))
    system.time(read.table(file, header=T, sep="\t"))
    
    install.packages("RMySQL")
    ucscDb = dbConnect(MySQL(), user="genome", host="genome-mysql.cse.ucsc.edu")
    result = dbGetQuery(ucscDb, "show databases;"); dbDisconnect(ucscDb); result
    
    hg19 = dbConnect(MySQL(), user="genome", db="hg19", host="genome-mysql.cse.ucsc.edu")
    tablas = dbListTables(hg19)
    length(tablas)
    
    dbListFields(hg19, "affyU133plus2")
    dbGetQuery(hg19, "select count(*) from affyU133plus2")
    affyData = dbReadTable(hg19, "affyU133plus2")
    head(affyData)
    query = dbSendQuery(hg19, "select * from affyU133plus2 where misMatches between 1 and 3")
    affyMis = fetch(query); quantile(affyMis$misMatches)
    affyMisSmall = fetch(query, n=10); dbClearResult(query)
    
    dbDisconnect(hg19)
    
    #Clase - Paquete R HDF5
    source("http://bioconductor.org/biocLite.R")
    biocLite("rhdf5")
    library(rhdf5)
    created = h5createFile("example.h5")
    created = h5createGroup("example.h5", "foo")
    created = h5createGroup("example.h5", "baa")
    created = h5createGroup("example.h5", "foo/foobaa")
    h5ls("example.h5")
    
    A = matrix(1:10, nr=5, nc=2)
    h5write(A, "example.h5", "foo/A")
    B = array(seq(0.1,2.0,by=0.1), dim=c(5,2,2))
    attr(B, "scale") = "liter"
    h5write(B, "example.h5", "foo/foobaa/B")
    h5ls("example.h5")
    
    readA = h5read("example.h5", "foo/A")
    readB = h5read("example.h5", "foo/foobaa/B")
    readdf = h5read("example.h5", "df")
    readA
    
    h5write(c(12,13,14), "example.h5", "foo/A", index=list(1:3,1))
    h5read("example.h5")
    
    set.seed(13435)
    x = data.frame("var1"=sample(1:5), "var2"=sample(6:10), var3=sample(11:15))
    x = x[sample(1:5),]
    x$var2[c(1,3)]=NA
    x[,1]
    x[,"var1"]
    x$var2[c(1,2)]
    x[1:2, "var2"]
    x
    
    subset(x, x$var1<=3 & x$var3>11)
    x[x$var1<=3 & x$var3>11,]
    x[x$var1<=3 | x$var3>11,]
    which(x$var2 > 8)
    x[which(x$var2>8),]
    
    sort(x$var1)
    sort(x$var1, decreasing = T)
    
    sort(x$var1)
    order(x$var1)
    x[order(x$var2, na.last=F, decreasing = T), ]
    
    library(plyr)
    arrange(x, var1)
    arrange(x, desc(var1))
    
    x$var4 = rnorm(5)
    x
    cbind(x, rnorm(5))
    
    #Clase
    if(!dir.exists("data")){dir.create("data")}
    url = "https://data.baltimorecity.gov/api/views/k5ry-ef3g/rows.csv?accessType=DOWNLOAD"
    download.file(url, "./data/restaurantes.csv")
    data = read.csv("./data/restaurantes.csv")
    
    head(data, n=3)
    summary(data)
    str(data)
    
    quantile(data$councilDistrict, na.rm=T)
    
    table(data$zipCode, useNA = "ifany")
    table(data$councilDistrict, data$zipCode)
    
    sum(is.na(data$councilDistrict))
    any(is.na(data$councilDistrict))
    all(!is.na(data$councilDistrict))
    all(data$zipCode > 0)
    colSums(is.na(data))
    all( colSums(is.na(data)) == 0 )
    
    table(data$zipCode %in% c("21212"))
    table(data$zipCode %in% c("21212", "21213"))
    data[data$zipCode %in% c("21212", "21213"), ]
    
    data(UCBAdmissions)
    DF = as.data.frame(UCBAdmissions)
    summary(DF)
    xt = xtabs(Freq ~ Gender + Admit, data=DF)
    xt
    
    warpbreaks$replicate = rep(1:9, len=54)
    xt = xtabs(breaks ~., data=warpbreaks)
    xt
    ftable(xt)
    
    fakeData = rnorm(1e5)
    object.size(fakeData)
    print(object.size(fakeData), units="Mb")
    
    s1 = seq(1,10, by=2); s1
    s2 = seq(1,10, by=3); s2
    x = c(1,3,8,25,100); seq(along=x)
    
    data$cerca = data$neighborhood %in% c("Roland Park", "Homeland")
    table(data$cerca)
    head(data)
    
    data$zipError = ifelse(data$zipCode <0, TRUE, FALSE)
    data[data$zipError, ]
    table(data$zipError, data$zipCode < 0)
    
    data$zipGrupo = cut(data$zipCode, breaks = quantile(data$zipCode))
    table(data$zipGrupo)
    table(data$zipGrupo, data$zipCode)
    
    install.packages("Hmisc")
    library(Hmisc)
    data$zipGrupo = cut2(data$zipCode, g=4)
    table(data$zipGrupo)
    
    data$zcf = factor(data$zipCode)
    data$zcf[1:10]
    class(data$zcf)
    data$zipCode[1:10]
    class(data$zipCode)
    
    set.seed(1)
    yesno = sample(c("si", "no"), size=10, replace=T)
    yesnofac = factor(yesno, levels = c("si", "no"))
    yesnofac
    relevel(yesnofac, ref="no")
    as.numeric(yesnofac)
    as.numeric(relevel(yesnofac, ref="no"))
    
    library(Hmisc); library(plyr)
    data2 = mutate(data, zipGrupo = cut2(zipCode, g=4))
    table(data2$zipGrupo)
    
    
    
    
    
    
    
    
    