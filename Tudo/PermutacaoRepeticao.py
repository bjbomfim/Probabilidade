# Exemplo 1) Quantos são os anagramas da palavra PROBABILIDADE?
# Se todas as letras fossem distintas formaríamos 𝑃13 = 13! anagramas.
# Como temos 5 letras distintas e as letras 𝐵, 𝐴, 𝐼 e 𝐷 aparecem 2 vezes cada, precisamos
# eliminar os anagramas repetidos:
def fatorial(n):
    if n == 0:
        return 1
    else:
        return (n * fatorial(n-1))

anagramas = fatorial(13) / (fatorial(2)**4)
print(anagramas)

# Ou combinação

def combinacao(n, p):
    return (fatorial(n) / (fatorial(p) * fatorial(n - p)))
anagramas = combinacao(13, 2) * combinacao(11, 2) * combinacao(9, 2) * combinacao(7, 2) * fatorial(5)
print(anagramas)