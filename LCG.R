a = 39373
c = 0
M = 2147483647
LCG <- function (seed, a, c, M, nsamples) {
  x = seed
  u = NULL
  for (i in 1:nsamples) {
    nx = (a * x + c) %% M
    u = c(u, as.double(nx) / as.double(M))
    x = nx
  }
  return (u)
}

CARA_OU_COROA <- function (U, p) {
  n = length(U)
  CC = NULL
  for (i in 1:n)
    if (U[i] < (1.0 - p))
      CC = c(CC, 0) #cara
  else
    CC = c(CC, 1) #coroa
  return (CC)
}

U = LCG(3, a, c, M, 10000)
hist(U, col = 'green')
CC = CARA_OU_COROA(U, 0.5)
print(sum(CC))

DADO <- function (U) {
  n = length(U)
  dado = NULL
  for (i in 1:n)
    dado = c(dado, as.integer(U[i] * 6.0) + 1)
  return (dado)
}
U = LCG(3, a, c, M, 60000)
dado = DADO(U)
print(dado)
barplot(table(dado), col = 'green')