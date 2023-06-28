# Exercício 1) O tempo de falha (em horas) de uma determinada peça em um tipo de freio de carro
# é satisfatoriamente modelado como uma variável aleatória de Weibull com 𝛽 = 1/2 e 𝛿 = 6000.

# a) Determine a probabilidade de uma peça durar no mínimo 6500 h.
1 - pweibull (6500, 0.5, 6000)

# b) Verifique a probabilidade de uma peça ter problemas nas primeiras 6500 h e plote o resultado.
pweibull (6500, 0.5, 6000)

x <- 0:8000
curve (dweibull (x, 0.5, 6000), 0, 8000)

