# Descreve a quantidade de experimentos de Bernoulli que precisam ser realizados até 
# a ocorrência do primeiro sucesso.

# Exemplo 2) Suponha que a probabilidade de um equipamento eletrônico ser defeituoso é de 0,2. 
# Realizaram-se testes na produção de um determinado lote. Determine a probabilidade do primeiro 
# defeito encontrado:

# a) Ocorrer no sétimo equipamento do teste:
dgeom(6, 0.2)

# b) Não ocorrer no quarto equipamento testado:
1 - dgeom(3, 0.2)

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

# Exemplo 3) A probabilidade de uma regulagem bem sucedida na montagem de um determinado tipo 
# de produto é de 0.80. Assuma que as tentativas são independentes.

# a) Qual é a probabilidade de que a primeira regulagem bem sucedida requeira exatamente quatro 
# tentativas?

dgeom (3, 0.8)

# b) Qual é a probabilidade de que a primeira regulagem bem sucedida requeira no máximo quatro 
# tentativas ?
dgeom (0, 0.8) + dgeom (1, 0.8) + dgeom (2, 0.8) + dgeom (3, 0.8)

# c) Qual é a probabilidade de que a primeira regulagem bem sucedida requeira ao menos quatro t
# entativas ?
1 - (dgeom (0, 0.8) + dgeom (1, 0.8) + dgeom (2, 0.8))


# a) Qual é a probabilidade de que a primeira regulagem bem sucedida requeira exatamente quatro 
# tentativas?
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

# b) Qual é a probabilidade de que a primeira regulagem bem sucedida requeira no máximo quatro 
# tentativas ?
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

# c) Qual é a probabilidade de que a primeira regulagem bem sucedida requeira ao menos quatro t
# entativas ?
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

