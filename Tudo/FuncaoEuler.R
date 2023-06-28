funcao_Euler <- function (n) {
    retorno <- 0
    fator <- 2
    decomposicao <- NULL
    produto <- 1
    nfatorado <- n
    while (nfatorado != 1){
        multiplicidade = 0
        while ((nfatorado %% fator) == 0) {
            nfatorado = nfatorado / fator
            multiplicidade = multiplicidade + 1 
        } 
        if (multiplicidade != 0)
            decomposicao <- rbind (decomposicao, c(fator, multiplicidade))
        fator = fator + 1
    }
    for (i in seq(1:nrow(decomposicao)))
        produto = produto * ( 1 - (1/decomposicao[i, 1]))
    retorno = n * produto
    return (retorno)
}
print(funcao_Euler(120))
print(funcao_Euler(360))
print(funcao_Euler(729))