import PermutacaoCaotica as permutacao_caotica
import PermutacaoSimples as permutacao
v = []
for i in range(2, 41):
    nenhum_convidado = permutacao_caotica.permutacao_caotica(i) / permutacao.fatorial(i)
    v.append((i, nenhum_convidado))
print(v)