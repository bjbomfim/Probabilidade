## Alexandre Rodrigues Bomfim Junior - 1921241

# Q6) Considere um banco que possui 𝑛 caixas eletrônicos para realizar o atendimento dos 
#     clientes. Cada caixa pode ou não atender um cliente que entra no banco em um 
#     determinado tempo 𝑇 , chamado tempo de chegada. Se um cliente entra no banco e existe 
#     um caixa eletrônico disponível então esse cliente é atendido durante um certo tempo 𝑇,
#     𝑎 chamado tempo de atendimento. Por outro lado, se um cliente entra no banco e não há 
#     nenhum caixa eletrônico disponível pois todos os 𝑛 caixas eletrônicos estão em 
#     atendimento, então esse cliente vai embora e seu atendimento não ocorre. 
#     Busca-se determinar quantos clientes serão atendidos ou não após um determinado 
#     período de tempo 𝑇, chamado de tempo total. Observe que 𝑇 e 𝑇 são aleatórios e apresentam 
#     distribuição exponencial com tempos 𝑐𝑎 médios (1/𝜆) de 1 e 3 𝑚𝑖𝑛𝑢𝑡𝑜𝑠 respectivamente. 
#     Supondo que o banco apresenta 4 caixas eletrônicos e que 𝑇 = 12000 𝑚𝑖𝑛𝑢𝑡𝑜𝑠, faça:

n.caixas <- 4
T.minutos <- 12000
tempo.medio.chegada <- 1
tempo.medio.atendimento <- 3

atendimento.realizado <- 0
atendimento.nao.realizado <- 0
tempo.atual <- 0
nSamples <- 0

simula <- function(nSamples) {
    for(i in 1:nSamples){

        caixas <-  rep(0, n.caixas)

        while(tempo.atual < T.minutos){

            # Gerando amostra aleatória de tempos seguindo uma distribuição exponencial
            tempo.chegada <- rexp(1, rate = 1/tempo.medio.chegada)
            
            if (tempo.atual + tempo.chegada > T.minutos) {
                break
            }

            tempo.atual <- tempo.chegada + tempo.atual

            for (j in 1:n.caixas) {

                # Atendimento acabou
                if ((caixas[j] != 0) & (caixas[j] <= tempo.atual)) {
                    caixas[j] <- 0
                }

                # Atendimento pode ser feito
                if (caixas[j] == 0 ) {
                    tempo.atendimento <- rexp(1, rate = 1/tempo.medio.atendimento)
                    caixas[j] <- tempo.atendimento + tempo.atual
                    atendimento.realizado <- atendimento.realizado + 1
                } else if(j == n.caixas){
                    atendimento.nao.realizado <- atendimento.nao.realizado + 1
                }
            }
        }
    }
    cat("Atendimentos realizados: ",atendimento.realizado,"\n")
    cat("Atendimentos nao realizados: ", atendimento.nao.realizado,"\n")
    cat("Media realizados: ",atendimento.realizado/nSamples,"\n")
    cat("Media nao realizados: ",atendimento.nao.realizado/nSamples,"\n\n")
}

# A)  Simule um único período 𝑇 de 12000 𝑚𝑖𝑛𝑢𝑡𝑜𝑠 e calcule o total de atendimentos realizados
#     e não realizados.
nSamples <- 1
simula(nSamples)
# B)  Simule 30 experimentos de período 𝑇 de 12000 𝑚𝑖𝑛𝑢𝑡𝑜𝑠 e calcule a média do total de 
#     atendimentos realizados e não realizados.
nSamples <- 30

simula(nSamples)
