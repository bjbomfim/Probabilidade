# Exemplo 1, continuação) Um banco de investimentos possui 20 clientes com mais de
# 𝑅$ 100 𝑚𝑖𝑙ℎõ𝑒𝑠 aplicados. Destes, 5 moram fora do Brasil:
# a) Ao retirar 3 ao acaso, qual a probabilidade de que 2 deles morem fora do Brasil? 
nsamples <- 10000000
nobservacao <- 20
n.obs.fora <- 5
n.obs.Brasil <- 15
n.extraido <- 3
n.mora.fora <- rep(0, 100)
n.mora.brasil <- 0
for (i in 1:nsamples) {
    cliente <- rhyper(1, n.obs.fora, n.obs.Brasil, n.extraido) # uma observação
    if (cliente > 0) {
        n.mora.fora[cliente] <- n.mora.fora[cliente] + 1
    } else {
        n.mora.brasil <- n.mora.brasil + 1
    }
}
prob.dois.mora.fora <- n.mora.fora[2] / nsamples
print(prob.dois.mora.fora)

# b) Ao retirar 5 ao acaso, qual a probabilidade de que todos morem no Brasil?

nsamples <- 10000000
nobservacao <- 20
n.obs.fora <- 5
n.obs.Brasil <- 15
n.extraido <- 5
n.mora.fora <- rep(0, 100)
n.mora.brasil <- 0
for (i in 1:nsamples) {
    cliente <- rhyper(1, n.obs.fora, n.obs.Brasil, n.extraido) # uma observação
    if (cliente > 0) {
        n.mora.fora[cliente] <- n.mora.fora[cliente] + 1
    } else {
        n.mora.brasil <- n.mora.brasil + 1
    }
}
prob.todos.mora.Brasil <- n.mora.brasil / nsamples
print(prob.todos.mora.Brasil)

# Exemplo 2, continuação) Uma urna contém 15 bolas, sendo 10 brancas e 5 vermelhas. Uma
# amostra de extensão 4, não ordenada e sem reposição, é retirada ao acaso da urna. Determine
# qual é a probabilidade de que três bolas sejam vermelhas.

nsamples <- 10000000
nobservacao <- 15
n.obs.branca <- 10
n.obs.vermelha <- 5
n.extraido <- 4
n.bola.vermelha <- rep(0, 100)
n.bola.branca <- 0
for (i in 1:nsamples) {
    bola <- rhyper(1, n.obs.vermelha, n.obs.branca, n.extraido) # uma observação
    if (bola > 0) {
        n.bola.vermelha[bola] <- n.bola.vermelha[bola] + 1
    } else {
        n.bola.branca <- n.bola.branca + 1
    }
}
prob.tres.bola.vermelha <- n.bola.vermelha[3] / nsamples
print(prob.tres.bola.vermelha)
