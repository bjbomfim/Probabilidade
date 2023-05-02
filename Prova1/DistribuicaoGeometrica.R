# Exemplo 3, continuação) A probabilidade de uma regulagem bem sucedida na montagem de
# um determinado tipo de produto é de 0.80. Assuma que as tentativas são independentes.
# a) Qual é a probabilidade de que a primeira regulagem bem sucedida requeira exatamente
# quatro tentativas?


nsamples <- 10000000
n.bem.sucedida <- 0; n.mal.sucedida <- rep(0, 100)
for (i in 1:nsamples) {
    regulagem <- rgeom(1, 0.8) # uso de rgeom com prob = 0.8 e pegando uma observação
    if (regulagem > 0) {
        n.mal.sucedida[regulagem] <- n.mal.sucedida[regulagem] + 1
    } else {
        n.bem.sucedida <- n.bem.sucedida + 1
    }
}
prob.quatro.tentativas <- n.mal.sucedida[3] / nsamples
print(prob.quatro.tentativas)

# Qual é a probabilidade de que a primeira regulagem bem sucedida requeira no máximo 
# quatro tentativas ?
nsamples <- 10000000
n.bem.sucedida <- 0; n.mal.sucedida <- rep(0, 100)
for (i in 1:nsamples) {
    regulagem <- rgeom(1, 0.8) # uso de rgeom com prob = 0.8 e pegando uma observação
    if (regulagem > 0) {
        n.mal.sucedida[regulagem] <- n.mal.sucedida[regulagem] + 1
    } else {
        n.bem.sucedida <- n.bem.sucedida + 1
    }
}
prob.no.maximo.quatro <- (n.bem.sucedida + sum(n.mal.sucedida[1:3])) / nsamples
print(prob.no.maximo.quatro)

# c) Qual é a probabilidade de que a primeira regulagem bem sucedida requeira ao menos
# quatro tentativas ?

nsamples <- 10000000
n.bem.sucedida <- 0; n.mal.sucedida <- rep(0, 100)
for (i in 1:nsamples) {
    regulagem <- rgeom(1, 0.8) # uso de rgeom com prob = 0.8 e pegando uma observação
    if (regulagem > 0) {
        n.mal.sucedida[regulagem] <- n.mal.sucedida[regulagem] + 1
    } else {
        n.bem.sucedida <- n.bem.sucedida + 1
    }
}
prob.ao.menos.quatro <- (1 - sum(n.mal.sucedida[3:100])) / nsamples
print(prob.ao.menos.quatro)