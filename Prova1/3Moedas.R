nsamples <- 10000
cont.A <- 0
cont.B <- 0
cont.AeB <- 0
for (i in 1:nsamples) {
  A.verdadeiro <- FALSE
  B.verdadeiro <- FALSE
  face1 <- sample(c("CA","CO"), 1, prob = c(2/5, 3/5), replace = TRUE)
  face2 <- sample(c("CA","CO"), 1, prob = c(2/5, 3/5), replace = TRUE)
  face3 <- sample(c("CA","CO"), 1, prob = c(2/5, 3/5), replace = TRUE)
  if (((face1 == "CA") & (face2 == "CO")) | ((face1 == "CO") & (face2 == "CA"))) {
    cont.A <- cont.A + 1
    A.verdadeiro <- TRUE
  }
  if ((face2 == "CO") & (face3 == "CO")) {
    cont.B <- cont.B + 1
    B.verdadeiro <- TRUE
  }
  if ((A.verdadeiro) & (B.verdadeiro)) {
    cont.AeB <- cont.AeB + 1
  }
}
#a)
PA <- cont.A / nsamples
print(PA)
PB <- cont.B / nsamples
print(PB)

PAeB <- cont.AeB / nsamples
print(PAeB)
PAxPB <- PA * PB
print(PAxPB)
# Como PAeB é diferente de PAxPB então os eventos não são independentes.