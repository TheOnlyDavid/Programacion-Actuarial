res1=0
res2=0
x=1
repeat{
  
  z = 5
  caminata = vector("numeric")
  while(z>=3 && z<= 10){
    print(z)
    caminata = c(caminata,z)
    moneda = rbinom(1,1,0.5)
    if(moneda == 1) { #Caminata Aleatoria
      z = z+.5
    } else {
      z = z-.5
    }
  }
  
  if(z<3){
    res1 = res1+1
  } else {
    res2 = res2+1
  }
  
  x=x+1
  if(x==100){break}
}

res1
res2