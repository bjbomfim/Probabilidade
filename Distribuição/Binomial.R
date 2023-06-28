
# Distribuição Binomial

vetor <- c()
for(i in 1:1000){
  vet_rbnom <- rbinom(40, 10, 0.2)
  soma <- mean(vet_rbnom)
  vetor[i] <- soma
}

print(vetor)
hist(vetor)
