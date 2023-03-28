potencia_recursiva <- function (posicao, vetor, vetoruso) {
    subconjunto <- NULL
    if (posicao > length(vetor)) { # Montamos o subconjunto
        for (i in 1:length(vetor)){ # Escrevemos o subconjunto
            if (vetoruso[i])
                subconjunto <- c(subconjunto, vetor[i])
        }
        print(subconjunto)
    } else { # Se não terminamos, continuar a gerar
        vetoruso[posicao] = T # Subconjuntos que incluem o elemento corrente
        potencia_recursiva(posicao + 1, vetor, vetoruso) # Chamada recursiva
        vetoruso[posicao] = F # Subconjuntos que não incluem o elemento corrente
        potencia_recursiva(posicao + 1, vetor, vetoruso) # Chamada recursiva
    }
}
A <- c("a","b","c", "5", "h")
uso <- rep(T, length(A))
potencia_recursiva (1, A, uso)

