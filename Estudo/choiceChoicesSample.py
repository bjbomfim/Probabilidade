import random

n = 100000
bolinhas = [1,2,3,4,5,6,7,8,9,10]
caixa = bolinhas
numeroBolinhas = len(bolinhas)
totalBolinhaEscolhida = [0]*numeroBolinhas
probabilidadeBolinhasEscolhida = [0]*numeroBolinhas

for i in range(1, n):
    bolinha = random.choice(caixa)
    totalBolinhaEscolhida[bolinha-1] = totalBolinhaEscolhida[bolinha-1] + 1

for i in range(1, numeroBolinhas):
    probabilidade = totalBolinhaEscolhida[bolinha-1]/n
    print('Probabilidade da bolinha [' + str(i) +'] = ' + str(probabilidade))