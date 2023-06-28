from PermutacaoSimples import fatorial

def combinacao(n, p):
    return (fatorial(n) / (fatorial(p) * fatorial(n - p)))


triangulo = 8 * combinacao(6, 2) + 6 * combinacao(8, 2)
print(triangulo)