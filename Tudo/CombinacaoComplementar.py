from PermutacaoSimples import fatorial

def combinacao_complementar(n, p):
    nc = n
    pc = n - p
    return (fatorial(nc) / (fatorial(pc) * fatorial(nc - pc)))