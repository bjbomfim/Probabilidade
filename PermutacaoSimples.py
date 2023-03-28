# Considere 𝑛 objetos distintos 𝑜1, 𝑜2, … , 𝑜𝑛.
# De quantos modos é possível ordená-los?
# 𝑛 𝑛 − 1 𝑛 − 2 … 1 = 𝑛!
# O número de modos de ordenar 𝑛 objetos distintos é representado por 𝑃𝑛.
# 𝑃𝑛 = 𝑛!
# Cada ordenação possível dos 𝑛 objetos é chamada de permutação simples de 𝒏 objetos.

def fatorial(n):
    if n == 0:
        return 1
    else:
        return (n * fatorial(n-1))

def fatoriaFor(n):
    fat = 1
    for i in range(1, n+1):
        fat = fat * i
        
    return fat

# n = 10
# print(fatorial(n))
# print(fatoriaFor(n))

# Exemplo 1) Quantos são os anagramas da palavra PERMUTA?

# anagrama = fatorial(7)
# print(anagrama)

#Exemplo 2) Quantos são os anagramas da palavra PERMUTA que começam e terminam por vogal?

# Primeira letra = 3
# Ultima letra = 2 pois uma ja foi usada na primeira
# Restante das combinacões = 5!

# anagrama = 3 * 2 * fatorial(5)
# print(anagrama)

