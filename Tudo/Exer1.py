def LCG(seed, a, c, M, nsamples):
    x = seed
    u = []
    for i in range(nsamples):
        nx = (a * x + c) % M
        u.append(nx / M)
        x = nx
    return u

def CARA_COROA(U1, U2):
    n = len(U1)
    CC = []
    for i in range(n):
        if U1[i] < 0.5 and U2[i] < 0.5:
            CC.append(0) #Cara
    return CC

x1 = 1
x2 = 2
a = 39373
c = 0
M = 2147483647
nsamples = 10000
U1 = LCG(x1, a, c, M, nsamples)
U2 = LCG(x2, a, c, M, nsamples)

cc1 = CARA_COROA(U1, U2)

print(len(cc1))

