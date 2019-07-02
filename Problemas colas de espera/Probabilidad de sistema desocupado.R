resultado <- vector()
lambda = 0.20
mu = 0.125
s = 3

for(n in 1:s){
  resultado <- c(resultado, ((lambda/mu)^n / factorial(n)))
}

aux = (((lambda/mu)^s)/ factorial(s)) 
aux2 = 1/(1-((lambda/s)*mu))
suma = sum(resultado)

probabilidad = 1/(suma+(aux*aux2))

print(probabilidad)