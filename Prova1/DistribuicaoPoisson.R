# Exemplo 2, continuação) A análise das estradas feita por uma empresa aponta que ocorrem, em
# média, 4 buracos por Km. A análise aponta, ainda, que a quantidade de buracos segue uma
# distribuição Poisson. Qual a probabilidade de que um Km qualquer contenha:
# a) Um buraco?
nsamples <- 1000000; nkm.sem.buraco <- 0; nkm.com.buraco <- rep(0, 30)
for (i in 1:nsamples) {
    buraco <- rpois(1, 4) # uso de rpois com lambda = 4 e pegando uma observação
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
    buraco <- rpois(1, 4) # uso de rpois com lambda = 4 e pegando uma observação
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
    buraco <- rpois(1, 4) # uso de rpois com lambda = 4 e pegando uma observação
    if (buraco > 0) {
        nkm.com.buraco[buraco] <- nkm.com.buraco[buraco] + 1
    } else {
        nkm.sem.buraco <- nkm.sem.buraco + 1
    }
}
prob.pelo.menos.um.buraco <- sum(nkm.com.buraco[1:10]) / nsamples
print(prob.pelo.menos.um.buraco)

# Exemplo 2, continuação) Suponha que a probabilidade de um equipamento eletrônico ser
# defeituoso é de 0,2. Realizaram-se testes na produção de um determinado lote. Determine a
# probabilidade do primeiro defeito encontrado:
# a) Ocorrer no sétimo equipamento do teste:

nsamples <- 10000000
n.sem.defeito <- 0; n.com.defeito <- rep(0, 100)
for (i in 1:nsamples) {
    defeito <- rgeom(1, 0.2) # uso de rgeom com prob = 0.2 e pegando uma observação
    if (defeito > 0) {
        n.com.defeito[defeito] <- n.com.defeito[defeito] + 1
    } else {
        n.sem.defeito <- n.sem.defeito + 1
    }
}
prob.ocorrer.setimo <- n.com.defeito[6] / nsamples # seis sem defeito e o sétimo com defeito
print(prob.ocorrer.setimo)

# b) Não ocorrer no quarto equipamento testado:
nsamples <- 10000000
n.sem.defeito <- 0; n.com.defeito <- rep(0, 100)
for (i in 1:nsamples) {
    defeito <- rgeom(1, 0.2) # uso de rgeom com prob = 0.2 e pegando uma observação
    if (defeito > 0) {
        n.com.defeito[defeito] <- n.com.defeito[defeito] + 1
    } else {
        n.sem.defeito <- n.sem.defeito + 1
    }
}
# para não ocorrer no quarto não há três sucessos seguido de um erro
prob.nao.ocorrer.quarto <- (n.sem.defeito + sum(n.com.defeito) - n.com.defeito[3]) / nsamples
print(prob.nao.ocorrer.quarto)
