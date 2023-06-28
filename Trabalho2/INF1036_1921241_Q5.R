## Alexandre Rodrigues Bomfim Junior - 1921241

# Q5) Considere, como espaço amostral 𝑆, o conjunto dos pontos do 𝑅3 
#     que estão no interior de um cubo de lado 1, sendo o ponto 𝑂 = (0, 0, 0) 
#     o ponto de encontro de suas diagonais. Considere, também, que dentro do cubo 
#     existe uma esfera, de raio 0,3 centrada em 𝑂, e um cilindro reto, com altura 0,8 
#     (base superior em 𝑍 = 0,4 e inferior em 𝑍 = −0,4), raio 0,1 e com eixo em 𝑍. 


nSamples <- 10000

esfera.raio <- 0.3
esfera.pontos <- 0 # centrada em 𝑂

cilindro.raio <- 0.1

# 𝐺 é um sólido que contém os pontos que pertencem ao cubo e que estão dentro da esfera, 
# mas não contém os pontos da superfície da esfera.

# 𝐻 é um sólido que contém os pontos que pertencem ao cubo e estão no interior do cilindro,
# mas não contém os pontos da superfície do cilindro.

# Considerando que qualquer sólido que esteja dentro do cubo é um evento 𝐸, e sua 
# probabilidade coincide com o seu volume, determine, por simulação utilizando R, 
# os valores de 𝑃(𝐺), 𝑃(𝐻), 𝑃(𝐺 ∪ 𝐻), 𝑃(𝐺 ∩ 𝐻), 𝑃(˜G) e 𝑃(˜𝐻)

P.G <- 0
P.H <- 0
P.GuH <- 0
P.GinteH <- 0
P.notG <- 0
P.notH <- 0

for(i in 1: nSamples){

    point.x <- runif(1) # Coordenadas (X,y,z)
    point.y <- runif(1) # Coordenadas (x,Y,z)
    point.z <- runif(1) # Coordenadas (x,y,Z)
    
    dentro.esfera <- FALSE
    dentro.cilindro <- FALSE
    # Verificando se o ponto está dentro da esfera
    if((point.x^2 + point.y^2 + point.z^2) < esfera.raio^2){
        P.G <- P.G + 1
        P.GuH <- P.GuH + 1
        dentro.esfera <- TRUE
    }
    # Verificando se esta dentro do cilindro
    if(point.z > -0.4 & point.z < 0.4 & sqrt(point.x^2 + point.y^2) < cilindro.raio) {
        P.H <- P.H + 1
        P.GuH <- P.GuH + 1
        dentro.cilindro <- TRUE
    }

    # Verificando se esta dentro do cilindro e do Cubo
    if(dentro.esfera == TRUE & dentro.cilindro == TRUE){
        P.GinteH <- P.GinteH + 1
    }

    # Verificando se nao esta na esfera
    if(dentro.esfera == FALSE){
        P.notG <- P.notG + 1
    }

    # Verificando se nao esta no cilindro
    if(dentro.cilindro == FALSE){
        P.notH <- P.notH + 1
    }
}

print(P.G/nSamples)
print(P.H/nSamples)
print(P.GuH/nSamples)
print(P.GinteH/nSamples)
print(P.notG/nSamples)
print(P.notH/nSamples)
