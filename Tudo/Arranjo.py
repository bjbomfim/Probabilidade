from PermutacaoSimples import fatorial

def arranjo(n, p):
    return fatorial(n) / fatorial(n - p)