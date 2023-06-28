#Distribuição Poisson

vetor <- c()
for(i in 1:1000){
  vet_rpois <- rpois(40, 4)
  soma <- mean(vet_rpois)
  vetor[i] <- soma
}

print(vetor)
hist(vetor)