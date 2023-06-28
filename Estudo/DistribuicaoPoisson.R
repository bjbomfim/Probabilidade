# A distribuição de Poisson é utilizada quando não é prático ou mesmo possível determinar 
# o número de fracassos ou o número total de provas de um experimento.
#
# Exemplo 2) A análise das estradas feita por uma empresa aponta que ocorrem, em média, 
# 4 buracos por Km. A análise aponta, ainda, que a quantidade de buracos segue uma distribuição 
# Poisson. Qual a probabilidade de que um Km qualquer contenha:

# a) Um buraco?
dpois (1, 4)
# b) Dois buracos?
dpois (2, 4)
# c) Nenhum buraco?
dpois (0, 4)
# d) Pelo menos um buraco?
1 - dpois (0, 4)


# a) Um buraco?
nsamples <- 1000000; nkm.sem.buraco <- 0; nkm.com.buraco <- rep(0, 30)
for (i in 1:nsamples) {
    buraco <- rpois(1, 4)
    if (buraco > 0) {
        nkm.com.buraco[buraco] <- nkm.com.buraco[buraco] + 1
    } else {
        nkm.sem.buraco <- nkm.sem.buraco + 1
    }
}
prob.um.buraco <- nkm.com.buraco[1] / nsamples
print(prob.um.buraco)
# b) Dois buracos?
nsamples <- 1000000; nkm.sem.buraco <- 0; nkm.com.buraco <- rep(0, 30)
for (i in 1:nsamples) {
    buraco <- rpois(1, 4)
    if (buraco > 0) {
        nkm.com.buraco[buraco] <- nkm.com.buraco[buraco] + 1
    } else {
        nkm.sem.buraco <- nkm.sem.buraco + 1
    }
}
prob.dois.buracos <- nkm.com.buraco[2] / nsamples
print(prob.dois.buracos)
# c) Nenhum buraco?
nsamples <- 1000000; nkm.sem.buraco <- 0; nkm.com.buraco <- rep(0, 30)
for (i in 1:nsamples) {
    buraco <- rpois(1, 4) # uso de rpois com lambda = 4 e pegando uma observação
    if (buraco > 0) {
        nkm.com.buraco[buraco] <- nkm.com.buraco[buraco] + 1 
    } else {
        nkm.sem.buraco <- nkm.sem.buraco + 1
    }
}
prob.nenhum.buraco <- nkm.sem.buraco / nsamples
print(prob.nenhum.buraco)

# d) Pelo menos um buraco?
nsamples <- 1000000; nkm.sem.buraco <- 0; nkm.com.buraco <- rep(0, 30)
for (i in 1:nsamples) {
    buraco <- rpois(1, 4)
    if (buraco > 0) {
        nkm.com.buraco[buraco] <- nkm.com.buraco[buraco] + 1
    } else {
        nkm.sem.buraco <- nkm.sem.buraco + 1 
    }
}
prob.pelo.menos.um.buraco <- sum(nkm.com.buraco[1:10]) / nsamples
print(prob.pelo.menos.um.buraco)