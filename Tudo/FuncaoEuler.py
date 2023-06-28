def funcao_Euler(n):
    retorno = 0
    fator = 2
    decomposicao = []
    produto = 1
    nfatorado = n
    while (nfatorado != 1):
        multiplicidade = 0
        while ((nfatorado % fator) == 0): 
            nfatorado = nfatorado / fator
            multiplicidade = multiplicidade + 1
        if (multiplicidade != 0):
            decomposicao.append((fator, multiplicidade))
        fator = fator + 1
    for elemento in decomposicao:
        produto = produto * ( 1 - (1/elemento[0]))
    retorno = n * produto
    return (retorno)
print(funcao_Euler(120))
print(funcao_Euler(360))
print(funcao_Euler(729))