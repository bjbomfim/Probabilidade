def probabilidade(e, s):
    retorno = len(e) / len(s)
    return (retorno)

S = ['HH', 'TH', 'HT', 'TT']
E = ['HH']
p = probabilidade(E, S)
print(p)