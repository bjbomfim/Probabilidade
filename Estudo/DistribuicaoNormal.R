# Sua importância se deve a vários fatores, entre eles temos o teorema central do limite, 
# o qual é um resultado fundamental em aplicações práticas e teóricas, pois garante que, 
# mesmo que os dados não sejam distribuídos segundo uma normal, a média dos dados converge para 
# uma distribuição normal conforme o número de dados aumenta.


# Exercício 1) Uma pesquisa contratada por uma oficina mecânica indica que, para cada ida à oficina,
# um cliente gasta uma média de 45 minutos com um desvio padrão de 12 minutos. O tempo gasto na 
# oficina é normalmente distribuído e representado pela variável aleatória 𝑥. Encontre o que é pedido
# para as seguintes situações:

# a) A probabilidade de um cliente, ao entrar na oficina, demorar entre 24 e 54 minutos.
pnorm (54, 45, 12) - pnorm (24, 45, 12)

# b) A probabilidade de um cliente, ao entrar na oficina, demorar mais de 39 minutos.
1 - pnorm (39, 45, 12)

# c) Se 15 clientes entram na oficina, quantos deles devem permanecer por mais de 39 minutos?
15 * (1 - pnorm (39, 45, 12))

# Exemplo 2) Para uma distribuição normal padrão, calcule: 
# a) A função de probabilidade acumulada 𝐹(𝑥) até −1.
pnorm (-1)

# b) O valor de 𝑎 tal que 𝑃(𝑋 ≤ 𝑎) = 0,975.
qnorm (0.975)

# c) Uma amostra de 5 elementos.
rnorm (5)

# Exemplo 3) Qual a probabilidade de ocorrência de um valor menor que 20 em uma distribuição
# normal de média 50 e desvio padrão igual a 15?
valor.referencia <- 20
media <- 50
desvio.padrao <- 15
pnorm (valor.referencia, media, desvio.padrao)

# Qual seria o resultado esperado se o valor de referência fosse 50?
pnorm (50, 50, 15)

# Qual seria o resultado esperado se o valor de referência fosse 20 e o desvio padrão 30?
pnorm (20, 50, 30)

# Exemplo 4) Desenhe uma curva de uma distribuição normal padrão entre −5 e 5.
curve (dnorm (x), -5, 5)

# Exercício 2) Um time de futebol coletou dados referentes ao peso de seus jogadores inscritos 
# em um campeonato. Sabendo-se que o peso da população de jogadores segue uma distribuição normal 
# com média 82 e desvio padrão 13, calcule:

# a) A probabilidade de se encontrar um jogador com mais de 93 quilos.
1 - pnorm (93, 82, 13)

# b) O valor do peso para o qual a probabilidade de se encontrar valores menores que o deste 
# seja de 70%.

qnorm (0.7, 82, 13)

# Exemplo 5) Plote o gráfico do exercício anterior:
curve (dnorm (x, 82, 13),
50, 110, #limites do gráfico
main = "Distribuição",
ylab = "Probabilidade")
lines (c (93, 93), #início e fim da linha em relação ao eixo x
c (0, 0.03), #início e fim da linha em relação ao eixo y
col = 2) #cor vermelha


# A probabilidade de um evento em uma distribuição contínua é uma área sob a curva da distribuição. 
# Vamos reforçar esta ideia com um exemplo.
# Seja 𝑋 uma variável aleatória com distribuição 𝑋~𝑁 𝜇, 𝜎2 = 𝑁(100, 100).
# Para calcular a probabilidade 𝑃 𝑋 ≤ 95 , podemos usar o comando:
pnorm (95, 100, 10)

# Vamos escrever uma função em R que represente 𝑓(𝑥) para a distribuição Normal.
funcao.normal <- function (x) {
    fx <- (1 / sqrt (2 * pi * 100)) * exp ((-1 / 200) * (x - 100)^2)
    return (fx)
}

x <- seq (60, 140, length.out = 100)
fx <- funcao.normal (x)
plot (x, fx, type = "l")

# Para marcar no gráfico a área que corresponde à probabilidade pedida, criamos um polígono.

x <- seq (60, 140, length.out = 100)
fx <- funcao.normal (x)
plot (x, fx, type = "l")
vx <- c (60, 60, x[x < 90], 90, 90)
vy <- c (0, funcao.normal(60), fx[x < 90], funcao.normal(90), 0) 
plot (x, fx, type = "l")
polygon (vx, vy, dens = 50)

# Para calcular a área pedida sem usar a função pnorm(), podemos usar a função de integração 
# numérica integrate(), que diferentemente da pnorm() reporta ainda o erro de aproximação numérica.
pnorm (90, mean = 100, sd = 10)
integrate (funcao.normal, -Inf, 90)

# Para 𝑃(90 ≤ 𝑋 ≤ 105) e 𝑃(𝑋 > 90) teríamos:
pnorm(105,100,10) - pnorm(90,100,10) 
integrate (funcao.normal, 90, 105)

1 - pnorm (90, 100, 10)
integrate (funcao.normal, 90, +Inf)

