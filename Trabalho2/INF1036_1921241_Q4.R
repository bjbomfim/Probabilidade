## Alexandre Rodrigues Bomfim Junior - 1921241

# Q4) Usando o Método da Rejeição, implemente uma função que gere uma 
#     amostra de uma variável aleatória 𝑋 com função densidade de 
#     probabilidade dada por:

#     𝑝(𝑥) = 12𝑥2(1 − 𝑥), 0 < 𝑥 < 1
#     Usando nossa funcao h(𝑥) = 1/(b-a) função densidade de probabilidade 
#     de uma distribuição uniforme (0,1) logo temos h(x) = 1/(1-0) = 1
#     Sendo assim falta termos c que é nossa constante que atua como cota superior 
#     a razão de p(x)/h(x) para isso, precisamos garantir que ela seje menor que 
#     qualquer valor dentro no maximo de p(x), por ser nossa funcao suporte.
#     logo iremos derivar e igualar a 0 para encontrar-mos o x que maxima a 
#     funçao no intervalo de (0,1). 
#     Temos p(x)/h(x) sendo a derivada 2x(2 - 3x) = 0. Logo o x = 2/3 sendo 
#     p(2/3)/h(2/3) = 16/9

p <- function(x){
    12*x^2*(1-x)
}

h <- function(x){
    (1/(1-0))
}


# O Método da Rejeição consiste em utilizar pontos gerados de h(x) 
# como possíveis pontos da distribuição de densidade desejada f(x). 
# Aqui estamos usando a inversa da funcao dada para gerar a h(x)
hInversa <- function(x){
    (0 + (1-0)*x)
}

geraXRejei <- function(nSamples) {
    X <- rep(0, nSamples)
    c <- 16/9

    for(i in 1:nSamples){
        while(TRUE){
            x <- runif(1, 0, 1)
            y <- runif(1, 0, 1)

            if (x <= p(y) / (c * h(y))) {
                X[i] <- y
                break
            }
        }
    }

    return(X)
}

nSamples <- 100000
X <- geraXRejei(nSamples)

hist(X)