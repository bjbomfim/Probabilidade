# A função sample() do R permite criar uma amostra de números pseudo-aleatórios 
# de um vetor qualquer com ou sem reposição.

n <- 100000
bolinhas <- 1:10
caixa <- bolinhas
numero.bolinhas <- length(bolinhas)
total.bolinha.escolhida <- rep(0, numero.bolinhas)
probabilidade.bolinha.escolhida <- rep(0, numero.bolinhas)

for (i in 1:n) {
   bolinha <- sample(caixa, 1)
   total.bolinha.escolhida [bolinha] <- total.bolinha.escolhida [bolinha] + 1
}

for (i in 1:numero.bolinhas) {
   probabilidade <- total.bolinha.escolhida [i] / n
   print (paste('Probabilidade da bolinha [',i,'] = ', probabilidade))
}