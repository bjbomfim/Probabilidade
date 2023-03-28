from PermutacaoSimples import fatorial

def combinacao_completa(n, p):
    nc = n + p - 1
    pc = p
    return (fatorial(nc) / (fatorial(pc) * fatorial(nc - pc)))