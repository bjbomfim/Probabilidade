# A variável aleatória 𝑋 tem distribuição Exponencial com parâmetro 𝜆, 𝜆 > 0 se tiver
# função densidade de probabilidade dada por:

# Exercício 1) Uma ferramenta produzida em uma fábrica apresenta uma vida média de 90 horas.
# Considerando o comportamento segundo a distribuição exponencial, qual a probabilidade de essa 
# ferramenta durar mais de 100 horas?

# 𝑃 𝑋>100 =1−𝑃(𝑋≤100)
1 - pexp (100, rate = 1/90)

# Exercício 2) Uma fábrica utiliza dois métodos para a produção de sensores eletrônicos.
# 80% dos sensores são produzidos pelo método A, e os demais, pelo método B. A duração do sensor
# depende do método pelo qual ele foi produzido: os produzidos pelo método A seguem uma distribuição
# exponencial com parâmetro 1/90; e os produzidos pelo método B seguem uma exponencial de parâmetro
# 1/110. Qual a probabilidade de que, se escolhermos um sensor ao acaso, ele dure mais de 100 horas?

# Considere os eventos C (um sensor durar mais de 100 horas), A (o sensor ter sido produzido pelo
# método A) e B (o sensor ter sido produzido pelo método B).

# 𝑃 𝐶)=𝑃 𝐴 𝑃(𝐶|𝐴 +𝑃 𝐵 𝑃 𝐶 𝐵 =0,80𝑃 𝑋 >100 +0,20𝑃(𝑋 >100)

0.8*(1 - pexp(100, rate = 1/90)) + 0.2*(1 - pexp(100, rate = 1/110))

# Seja 𝑋 uma variável aleatória com distribuição exponencial de parâmetro 𝜆 = 1/600. 
# Calcular a probabilidade 𝑃 𝑋 ≥ 300 ,usando a função de integração numérica integrate() e 
# validando o resultado com as funções de distribuição do R.

funcao.exponencial <- function (x) {
    lambda <- 1/600
    fx <- ifelse (x < 0, 0, (lambda) * exp(-x*lambda))
    return (fx)
}
integrate (funcao.exponencial, 300, +Inf)
1 - pexp(300, rate=1/600)

