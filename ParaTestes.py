import Arranjo as arranjo
import CombinacaoSimples as combinacao
import ArranjoComRepeticao as arrR
import CombinacaoCompleta as cc

# Exemplo 2) Considere que existem quatro objetos distintos {𝑎, 𝑏, 𝑐, 𝑑} e que o experimento
# consiste em escolher aleatoriamente 2 objetos desses 4 de acordo com cada um dos processos
# de amostragem.
# Caso 1. (sem reposição e com ordem)
# 𝑆 = {𝑎𝑏, 𝑎𝑐, 𝑎𝑑, 𝑏𝑎, 𝑏𝑐, 𝑏𝑑, 𝑐𝑎, 𝑐𝑏, 𝑐𝑑, 𝑑𝑎, 𝑑𝑏, 𝑑𝑐}

print("Caso 1. (sem reposição e com ordem) " )
print(arranjo.arranjo(4, 2))

# Caso 2. (sem reposição e sem ordem)
# 𝑆 = {𝑎𝑏, 𝑎𝑐, 𝑎𝑑, 𝑏𝑐, 𝑏𝑑, 𝑐𝑑}
print("Caso 2. (sem reposição e sem ordem)" )
print(combinacao.combinacao(4, 2))

# Caso 3. (com reposição e com ordem)
# 𝑆 = {𝑎𝑎, 𝑎𝑏, 𝑎𝑐, 𝑎𝑑, 𝑏𝑎, 𝑏𝑏, 𝑏𝑐, 𝑏𝑑, 𝑐𝑎, 𝑐𝑏, 𝑐𝑐, 𝑐𝑑, 𝑑𝑎, 𝑑𝑏, 𝑑𝑐, 𝑑𝑑}
print("Caso 3. (com reposição e com ordem)" )
print(arrR.arranjo_com_repeticao(4, 2))

# Caso 4. (com reposição e sem ordem)
# 𝑆 = {𝑎𝑎, 𝑎𝑏, 𝑎𝑐, 𝑎𝑑, 𝑏𝑏, 𝑏𝑐, 𝑏𝑑, 𝑐𝑐, 𝑐𝑑, 𝑑𝑑}
print("Caso 4. (com reposição e sem ordem)" )
print(cc.combinacao_completa(4, 2))