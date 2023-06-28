import numpy as np

def LCG(seed, a, c, M, nsample):
    x = seed
    u = [] 
    for i in range(nsample):
        nx = (a * x + c) % M
        u.append(nx/M)
        x = nx

    return u

def DADO_FACES(U, face):
    n = len(U)
    df = []
    for i in range(n):
        df.append(int(U[i]* face)+1)

    return df

def DADO_VICIADO(U, cc):
    n = len(U)
    df = []
    for i in range(n):
        if cc[i] == 0:
            df.append(int(U[i] * 5.0) + 1)
        else:
            df.append(int(U[i] * 6.0) + 1)

    return df

def CARA_COROA(U, p):
    n = len(U)
    cc = []
    for i in range(n):
        if U[i] < p :
            cc.append(0) #cara
        else :
            cc.append(1) #coroa
    return cc

x0 = 3
a = 39373
c = 0
M = 2147483647
nsample = 10000

U = LCG(x0, a, c, M, nsample)
df = DADO_FACES(U, 8)

cont = 0
for i in range(nsample):
    if df[i] == 5:
        cont = cont + 1

#print(cont)

U1 = LCG(x0, a, c, M, nsample)
U2 = np.random.sample(nsample)

cc = CARA_COROA(U1, 0.5)
df = DADO_FACES(U2, 6)

cont = 0
for i in range(nsample):
    if (cc[i] == 0):
        if (df[i] == 2) or (df[i] == 3):
            cont = cont + 1 
    else:
        cont = cont + 1

#print(cont/nsample)

cc = CARA_COROA(np.random.sample(nsample), 0.5)
dv = DADO_VICIADO(np.random.sample(nsample), cc)
cont = 0
for i in range(nsample):
    if (cc[i] == 0) and (df[i] == 3):
        cont = cont + 1 
        
#print(cont)

#2

UPaulo1 = np.random.sample(nsample)
UPaulo2 = np.random.sample(1000)
UMaria1 = np.random.sample(nsample)
UMaria2 = np.random.sample(1000)
UBruno1 = np.random.sample(nsample)
UBruno2 = np.random.sample(1000)

paulo = 3/7
maria = 2/5
bruno = 5/9

cont = 0
for i in range(nsample):
    if ((UPaulo1[i] > paulo) or (UMaria1[i] > maria) or (UBruno1[i] > bruno)):
        cont = cont + 1

print(cont/nsample)
cont = 0
for i in range(1000):
    if ((UPaulo2[i] > paulo) or (UMaria2[i] > maria) or (UBruno2[i] > bruno)):
        cont = cont + 1

print(cont/1000)