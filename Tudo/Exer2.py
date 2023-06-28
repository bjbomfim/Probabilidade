def LCG(seed, a, c, M, nsample):
    x = seed
    u = []
    for i in range(nsample):
        nx = (a * x + c) % M
        