# A Distribuição Binomial descreve o número de sucessos que ocorrem em um determinado número 
# de experimentos de Bernoulli 
#
# Exemplo 2) Suponha que, para uma máquina que produz peças automotivas, a probabilidade de se 
# obter uma peça defeituosa (sucesso) é 𝑝 = 0,1. Das peças produzidas por esta máquina, 
# seleciona-se uma amostra de 10 peças para análise. Qual a probabilidade de se obter:

# a) Uma peça defeituosa?
dbinom(1, 10, 0.1)

# b) Nenhuma peça defeituosa?
dbinom(0, 10, 0.1)

# c) Duas peças defeituosas?
dbinom(2, 10, 0.1)

# d) No mínimo duas peças defeituosas?
1 - pbinom(1, 10, 0.1)

# e) No máximo duas peças defeituosas?
pbinom(2, 10, 0.1)


nsamples <- 1000000
namostra <- 10; cont.defeituosa <- 0; npeca.sem.defeito <- 0; npeca.defeituosa <- rep(0, 10) 
for (i in 1:nsamples) {
  cont.defeituosa <- 0
  for (j in 1:namostra) { # seleciono 10 peças
    peca.selecionada.defeituosa <- sample(c(T, F), 1, prob = c(0.1, 0.9)) 
    if (peca.selecionada.defeituosa) {
      cont.defeituosa <- cont.defeituosa + 1 
      }
  }
  if (cont.defeituosa > 0) { 
    # npeca.defeituosa[i] contém o total de peças i defeituosas
    npeca.defeituosa[cont.defeituosa] <- npeca.defeituosa[cont.defeituosa] + 1 
  } else {
    npeca.sem.defeito <- npeca.sem.defeito + 1 
    }
}
prob.nenhuma.defeituosa <- npeca.sem.defeito/nsamples
print(prob.nenhuma.defeituosa)
prob.uma.defeituosa <- npeca.defeituosa[1]/nsamples
print(prob.uma.defeituosa)
prob.duas.defeituosas <- npeca.defeituosa[2]/nsamples
print(prob.duas.defeituosas)
prob.minimo.duas.defeituosas <- sum(npeca.defeituosa[2:10])/nsamples # filtro no vetor 
print(prob.minimo.duas.defeituosas)
prob.maximo.duas.defeituosas <- (npeca.sem.defeito + sum(npeca.defeituosa[1:2]))/nsamples
print(prob.maximo.duas.defeituosas)

# Exemplo 3) Considere que a probabilidade de certa peça artesanal ser produzida com perfeição por 
# uma pessoa que está em treinamento é igual a 0,5. Considere que a pessoa produza 6 peças por vez.

# a) Obter a distribuição de probabilidades do número de peças perfeitas produzidas pela pessoa em 6 peças.
vetor.probabilidade <- dbinom (0:6, 6, 0.5) 
intervalo <- 0:6

# b) Construir o gráfico de distribuição de probabilidade obtida no item a.

plot(intervalo, #intervalo desejado 
vetor.probabilidade, #valores de probabilidade 
type="h", #traço do eixo ao ponto
xlab='x',
ylab='Probabilidades de x',
main='Distribuição de probabilidade de X')

nsamples <- 1000000

namostra <- 6; cont.defeituosa <- 0; npeca.sem.defeito <- 0; npeca.defeituosa <- rep(0, 6)
for (i in 1:nsamples) {
    cont.defeituosa <- 0
    for (j in 1:namostra) {
        peca.selecionada.defeituosa <- sample(c(T, F), 1, prob = c(0.5, 0.5))
        if (peca.selecionada.defeituosa) {
            cont.defeituosa <- cont.defeituosa + 1
        }
    }
    if (cont.defeituosa > 0) { # npeca.defeituosa[i] contém o total de peças i defeituosas
        npeca.defeituosa[cont.defeituosa] <- npeca.defeituosa[cont.defeituosa] + 1
    } else {
        npeca.sem.defeito <- npeca.sem.defeito + 1
    }
}
vetor.probabilidade <- c(npeca.sem.defeito, npeca.defeituosa)
vetor.probabilidade <- vetor.probabilidade / nsamples
intervalo <- 0:6
plot(intervalo,
vetor.probabilidade, #valores de probabilidade 
type="h", #traço do eixo ao ponto
xlab='x',
ylab='Probabilidades de x', 
main='Distribuição de probabilidade de X')