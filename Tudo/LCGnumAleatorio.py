
# Linear Congruential Generator
import matplotlib.pyplot as plt

x0 = 3
a = 39373
c = 0
M = 2147483647

def LCG(seed, a, c, M, nsamples):
    x = seed
    u = []
    for i in range(nsamples):
        nx = (a * x + c) % M
        u.append(nx / M)
        x = nx
    return u

def CARA_OU_COROA(U, p):
    n = len(U)
    CC = []
    for i in range(n):
        if (U[i] < (1.0 - p)):
            CC.append(0) #cara
        else:
            CC.append(1) #coroa
    return CC


def DADO(U):
    n = len(U)
    dado = []
    for i in range(n):
        dado.append(int(U[i] * 6.0) + 1)

    return dado

U = LCG(x0, a, c, M, 10000)
CC = CARA_OU_COROA(U, 0.5)
print(CC)
print(sum(CC))

U = LCG(3, a, c, M, 6000)
dado = DADO(U)
print(dado)
plt.hist(dado,6,facecolor='green')
plt.show()
#plt.hist(U,facecolor = 'green')
#plt.show()
