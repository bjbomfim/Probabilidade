A = ['x', 'y', 'h', 'v']
def potencia_recursiva(c):
    if (len(c) == 0): # Caso base deve retornar um conjunto que contenha o conjunto vazio
        return [[]] # [[]]é uma lista que contém a lista vazia
    r = potencia_recursiva(c[:-1]) # Chamada recursiva removendo o último elemento
    return r + [s + [c[-1]] for s in r] # s representa todos os subconjuntos de r
P = potencia_recursiva(A)
print(P)