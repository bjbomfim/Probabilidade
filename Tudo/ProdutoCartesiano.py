A = ['a', 'b', 'c']
B = ['p', 'q']
W = []
for i in range(len(A)):
    for j in range(len(B)):
        elemento = (A[i], B[j]) #elemento é um 'tuple'
        W.append(elemento)
print(W)