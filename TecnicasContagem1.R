# Exemplo 1) Quantos números naturais de 5 algarismos (na base 10) que sejam maiores que
# 6000 e que não sejam divisíveis por 5, podem ser formados usando-se apenas os algarismos 4,
# 5, 6, 7 e 8?
# Primeiro algarismo: 3 modos (pode ser 6, 7 ou 8)
# Último algarismo: 4 modos (não pode ser 5)
# Segundo algarismo: 5 modos
# Terceiro algarismo: 5 modos
# Quarto algarismo: 5 modos
# 3 x 4 x 5³ = 1500 

num = 3*4*( 5^3 )
print(num)