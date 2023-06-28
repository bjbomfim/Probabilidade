#Distribuição Hypergeometrica

vetor <- c()
for(i in 1:1000){
  vet_rpois <- rhyper(40, 20, 20, 5)
  soma <- mean(vet_rpois)
  vetor[i] <- soma
}

print(vetor)
hist(vetor)