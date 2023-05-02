
# Agora vamos retomar o Exemplo 1. Uma urna possui 10 bolas sendo 3 com o número 1 e 7 com
# o número 2 e vamos refazer os itens a) e b) utilizando simulação.
# a) Definimos a variável 𝑋 como o número de bolas obtidas em uma extração aleatória.

import random
n = 100000 #100000 escolhas a realizar, ou seja, um número muito grande
bolinhas = [1,1,1,2,2,2,2,2,2,2] # bolinhas 1 e 2
caixa = bolinhas # caixa com 10 bolinhas
numerobolinhas = len(bolinhas)
totalbolinhaescolhida = [0]*numerobolinhas # vetor de tamanho numerobolinhas com 0s
probabilidadebolinhaescolhida = [0]*numerobolinhas # vetor de tamanho numerobolinhas com 0s
contb1 = 0
contb2 = 0
for i in range(n):
    bolinha = random.choice(caixa)
    if (bolinha == 1):
        contb1 = contb1 + 1
    if (bolinha == 2):
        contb2 = contb2 + 1
probb1 = (contb1/n)
print(probb1)
probb2 = (contb2/n)
print(probb2)

# b) Definimos a variável 𝑌 como o número de bolas com o número 1 obtidas em duas extrações.

import random
n = 100000 # escolhas a realizar, ou seja, um número muito grande
bolinhas = [1,1,1,2,2,2,2,2,2,2] # bolinhas 1 e 2
caixa = bolinhas #caixa com 10 bolinhas
numerobolinhas = len(bolinhas)
totalbolinhaescolhida = [0]*numerobolinhas
probabilidadebolinhaescolhida = [0]*numerobolinhas
contb11 = 0
contb12 = 0
contb21 = 0
contb22 = 0
for i in range(n):
    bolas = random.sample(caixa, 2) # sem reposição
    if (bolas[0] == 1):
        if (bolas[1] == 1):
            contb11 = contb11 + 1
        else:
            contb12 = contb12 + 1
    else:
        if (bolas[1] == 1):
            contb21 = contb21 + 1
        else:
            contb22 = contb22 + 1 

probb11 = (contb11/n)
print(probb11)
probb12 = (contb12/n)
print(probb12)
probb21 = (contb21/n)
print(probb21)
probb22 = (contb22/n)
print(probb22)