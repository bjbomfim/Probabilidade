x <- 0:5
y <- c(14/30, 14/30, 2/30, 0, 0, 0)
print(x)
print(y)
plot(x,y, type = 'h')
points (0, 14/30)
points (1, 14/30)
points (2, 2/30)

# Função de probabilidade acumulada:

x <- 0:5
y <- c (14/30, 28/30, 30/30, 30/30, 30/30, 30/30)
plot (x, y, type ='s')