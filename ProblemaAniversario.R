n <- 50
p <- c(1:n)
for (k in 1:n)
  p[k] <- 1 - prod(365:(365-k+1))/(365^k)
plot(p, main = "Problema do aniversário", xlab = "Número de alunos", ylab =
       "Probabilidade")

