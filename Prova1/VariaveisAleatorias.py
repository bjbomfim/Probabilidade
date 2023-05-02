import random
n = 100000 #100000 escolhas a realizar, ou seja, um número muito grande
bolinhas = [1,2,3,4,5,6,7,8,9,10] #bolinhas de 1 a 10
caixa = bolinhas #caixa com 10 bolinhas
numerobolinhas = len(bolinhas)
totalbolinhaescolhida = [0]*numerobolinhas # vetor de tamanho numerobolinhas com 0
probabilidadebolinhaescolhida = [0]*numerobolinhas
#n escolhas de bolinhas com repetição
for i in range(1, n):
    bolinha = random.choice(caixa)
    totalbolinhaescolhida [bolinha - 1] = totalbolinhaescolhida [bolinha - 1] + 1
#probabilidade de escolha de cada bolinha
for i in range(1, numerobolinhas):
    probabilidade = totalbolinhaescolhida [i - 1] / n
    print ('Probabilidade da bolinha [' + str(i) + '] = ' + str(probabilidade))