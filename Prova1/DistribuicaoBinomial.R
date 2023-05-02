# Exemplo 2) Suponha que, para uma máquina que produz peças automotivas, a probabilidade
# de se obter uma peça defeituosa (sucesso) é 𝑝 = 0,1. Das peças produzidas por esta máquina,
# seleciona-se uma amostra de 10 peças para análise. Qual a probabilidade de se obter:

# a) Uma peça defeituosa? 
print(dbinom(1, 10, 0.1))
# b) Nenhuma peça defeituosa?
print(dbinom(0, 10, 0.1))
# c) Duas peças defeituosas?
print(dbinom(2, 10, 0.1))
# d) No mínimo duas peças defeituosas?
print(1 - pbinom(1, 10, 0.1))
# e) No máximo duas peças defeituosas?
print(pbinom(1, 10, 0.1))

# SIMULAÇÃO
nsamples <- 100000
namostra <- 10; cont.defeituosa <- 0; npeca.sem.defeito <- 0; npeca.defeituosa <- rep(0, 10)
for (i in 1:nsamples) {
    cont.defeituosa <- 0
    for (j in 1:namostra) { # seleciono 10 peças
        peca.selecionada.defeituosa <- sample(c(T, F), 1, prob = c(0.1, 0.9))
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
prob.nenhuma.defeituosa <- npeca.sem.defeito/nsamples
print(prob.nenhuma.defeituosa)
prob.uma.defeituosa <- npeca.defeituosa[1]/nsamples
print(prob.uma.defeituosa)
print(npeca.defeituosa)
prob.duas.defeituosas <- npeca.defeituosa[2]/nsamples
print(prob.duas.defeituosas)
prob.minimo.duas.defeituosas <- sum(npeca.defeituosa[2:10])/nsamples # filtro no vetor
print(prob.minimo.duas.defeituosas)
prob.maximo.duas.defeituosas <- (npeca.sem.defeito + sum(npeca.defeituosa[1:2]))/nsamples
print(prob.maximo.duas.defeituosas)
