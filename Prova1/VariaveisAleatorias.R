n <- 100000 #100000 escolhas a realizar, ou seja, um número muito grande
bolinhas <- 1:10 #bolinhas de 1 a 10
caixa <- bolinhas #caixa com 10 bolinhas
numero.bolinhas <- length(bolinhas)
total.bolinha.escolhida <- rep (0, numero.bolinhas)
probabilidade.bolinha.escolhida <- rep (0, numero.bolinhas)
#n escolhas de bolinhas com repetição
for (i in 1:n) {
  bolinha <- sample (caixa, 1)
  total.bolinha.escolhida [bolinha] <- total.bolinha.escolhida [bolinha] + 1
}
#probabilidade de escolha de cada bolinha
for (i in 1:numero.bolinhas) {
  probabilidade <- total.bolinha.escolhida [i] / n
  print (paste ('Probabilidade da bolinha [', i, '] = ', probabilidade))
}