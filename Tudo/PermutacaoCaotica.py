from PermutacaoSimples import fatorial

def permutacao_caotica(n):
    retorno = 0
    for i in range(n + 1):
        retorno = retorno + (((-1)**i)/fatorial(i))
    retorno = fatorial(n) * retorno
    return (retorno)

# Quantas são as permutações das letras 𝑎, 𝑏, 𝑐 e 𝑑, nesta ordem, que:
    # deixem as letra 𝑎 ou a letra 𝑏 fixa?

print(permutacao_caotica(3) + permutacao_caotica(3) - permutacao_caotica(2))
print(permutacao_caotica(4))