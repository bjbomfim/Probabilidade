# Distribuições Discretas

# Exemplo 1) Uma urna possui 10 bolas sendo 3 com o número 1 e 7 com o número 2. 
# a) Definimos a variável 𝑋 como o número de bolas obtidas em uma extração aleatória.

x <- 0:5
y <- c(0, 0.3, 0.7, 0, 0, 0)
plot(x, y, type = 'h')
points(1, 0.3)
points(2, 0.7)

# b) Definimos a variável 𝑌 como o número de bolas com o número 1 obtidas em duas extrações

x <- 0:5
y <- c (14/30, 14/30, 2/30, 0, 0, 0)
plot (x, y, type = 'h')
points (0, 14/30)
points (1, 14/30)
points (2, 2/30)

# Solução usando Sample do R, verificar Sample.R

# Solução A)

n <- 100000
bolinhas <- c(rep(1, 3),rep(2,7))
caixa <- bolinhas
numero.bolinhas <- length(bolinhas)
total.bolinha.escolhida <- rep(0, numero.bolinhas)
probabilidade.bolinha.escolhida <- rep(0, numero.bolinhas)

contBolinha1 <- 0
contBolinha2 <- 0

for (i in 1:n) {
   bolinha <- sample(caixa, 1)
   if (bolinha == 1) {
      contBolinha1 <- contBolinha1 + 1
   }
   else {
      contBolinha2 <- contBolinha2 + 2
   }
}

print(contBolinha1/n)
print(contBolinha2/n)

# b) Definimos a variável 𝑌 como o número de bolas com o número 1 obtidas em duas extrações
contBolinha1 <- 0
contBolinha2 <- 0

for (i in 1:n) {
   bolinha <- sample(caixa, 2)
   if (bolinha[1] == 1 & bolinha[2] == 1) {
      contBolinha1 <- contBolinha1 + 1
   }
   else {
      contBolinha2 <- contBolinha2 + 2
   }
}
print(contBolinha1/n)