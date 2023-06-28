## Alexandre Rodrigues Bomfim Junior - 1921241

# Q2) Usando o Método da Inversa e a linguagem R, implemente uma 
#     função para gerar uma variável aleatória contínua 𝑋 cuja 
#     função densidade pode ser dada por uma das funções abaixo:

#     f(𝑥) = 3𝑥ˆ2, 0 <= 𝑥 <= 1
#
#            {  4𝑥,  0 <= 𝑥 <= 0.5
#     g(𝑥) = {  
#            {  4(1-𝑥), 0.5 < 𝑥 <= 1

# A função implementada deve ser única e receber um parâmetro que indica qual 
#  função de densidade deve ser utilizada para 𝑋 e um outro parâmetro que 
#  indica o número de amostras da variável a ser gerada. 


geraXInversa <- function(qual.funcao, nSamples) {

    X <- rep(0, nSamples)
    U <- runif(nSamples)
    
    if(qual.funcao == 0) {
        # funcao densidade = f(𝑥)
        # Logo a funcao inversa é u^1/3
        for(i in 1:nSamples){
            X[i] <- U[i]^(1/3)
        }
        return(X)
    } else {
        # funcao densidade = g(𝑥)
        # Logo as funcoes inversas sao = u/4 e 1 - u/4
        for(i in 1:nSamples){
            resultado <- 0
            if(U[i] <= 0.5){
                resultado <- (U[i]/4)
            } else {
                resultado <- (1 - U[i]/4)
            }
            X[i] <- resultado
        }
        return(X)
    }
}

nSamples <- 10000

fx <- geraXInversa(0, nSamples)
gx <- geraXInversa(1, nSamples)


#  Plote um histograma da amostra.
hist(fx)
hist(gx)

curve(3*x^2, from = 0, to = 1, n = 1000, col = "blue")
curve(4*x, from = 0, to = 0.5, n = 1000, col = "blue")
curve(4*(1-x), from = 0.51, to = 1, n = 1000, col = "blue")
