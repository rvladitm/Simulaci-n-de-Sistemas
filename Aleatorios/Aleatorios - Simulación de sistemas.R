D = abs(round(rnorm(1000, mean = 1000, sd = 500))) 


y1=1015
y2=1017
y3=1020
y4=1025

utilidad1=seq(1,1000,by=1)
utilidad2=seq(1,1000,by=1)
utilidad3=seq(1,1000,by=1)
utilidad4=seq(1,1000,by=1)

for(i in 1:length(D)){
  
  if(D[i]<=y1) 
    {
      utilidad1[i] = 35*D[i] - 15*(y1 - D[i]) - 22*y1 
    }else 
    {
      utilidad1[i] = 35*D[i] - 32*(D[i] - y1) - 22*y1 
    }
  
  if(D[i]<=y2) 
  {
    utilidad2[i] = 35*D[i] - 15*(y2 - D[i]) - 22*y2 
  }else 
  {
    utilidad2[i] = 35*D[i] - 32*(D[i] - y2) - 22*y2 
  }
  
  if(D[i]<=y3) 
  {
    utilidad3[i] = 35*D[i] - 15*(y3 - D[i]) - 22*y3 
  }else 
  {
    utilidad3[i] = 35*D[i] - 32*(D[i] - y3) - 22*y3 
  }
  
  if(D[i]<=y4) 
  {
    utilidad4[i] = 35*D[i] - 15*(y4 - D[i]) - 22*y4 
  }else 
  {
    utilidad4[i] = 35*D[i] - 32*(D[i] - y4) - 22*y4 
  }
  
  
}

d1 = sd(utilidad1)
hist(utilidad1)
u1= summary(utilidad1)
print(u1)
print(d1)

d2 = sd(utilidad2)
hist(utilidad2)
u2=summary(utilidad2)
print(u2)
print(d2)

d3 = sd(utilidad3)
hist(utilidad3)
u3=summary(utilidad3)
print(u3)
print(d3)

d4 = sd(utilidad4)
hist(utilidad4)
u4=summary(utilidad4)
print(u4)
print(d4)


