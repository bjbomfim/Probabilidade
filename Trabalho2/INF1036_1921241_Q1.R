## Alexandre Rodrigues Bomfim Junior - 1921241

# Q1) Calcule, utilizando simulação, a probabilidade de que ao gerar, 
#    de forma aleatória, três números com seis dígitos:

nSamples <- 10000
todos.dois.digitos.iguais <- 0
um.todos.diferentes <- 0

# A) os três possuam pelo menos dois dígitos iguais.
verificaDoisDigitosIguais <- function(n) {
    contagem <- table(n)
    return(any(contagem >= 2))
}

for(i in 1:nSamples){
    s.randon.um <- as.character(sample(100000:999999, 1))
    s.randon.dois <- as.character(sample(100000:999999, 1))
    s.randon.tres <- as.character(sample(100000:999999, 1))
    
    a <- strsplit(s.randon.um, "")[[1]]
    b <- strsplit(s.randon.dois, "")[[1]]
    c <- strsplit(s.randon.tres,"")[[1]]

    if (verificaDoisDigitosIguais(a) & verificaDoisDigitosIguais(b) & verificaDoisDigitosIguais(c)) {
        todos.dois.digitos.iguais <- todos.dois.digitos.iguais + 1
    }
}
prob.todos.dois.digitos.iguais <- todos.dois.digitos.iguais/nSamples

print("A) os três possuam pelo menos dois dígitos iguais.")
print(prob.todos.dois.digitos.iguais)



# B) Apenas um possua todos os digitos diferentes.

verificaTodosDiferentes <- function(n) {
    contagem <- table(n)
    return(all(contagem == 1))
}

for(i in 1:nSamples){
    s.randon.um <- as.character(sample(100000:999999, 1))
    s.randon.dois <- as.character(sample(100000:999999, 1))
    s.randon.tres <- as.character(sample(100000:999999, 1))
    
    a <- strsplit(s.randon.um, "")[[1]]
    b <- strsplit(s.randon.dois, "")[[1]]
    c <- strsplit(s.randon.tres,"")[[1]]
    
    if(verificaTodosDiferentes(a) & !verificaTodosDiferentes(b) & !verificaTodosDiferentes(c)){
        um.todos.diferentes <- um.todos.diferentes + 1
    } else if(verificaTodosDiferentes(b) & !verificaTodosDiferentes(a) & !verificaTodosDiferentes(c)){
        um.todos.diferentes <- um.todos.diferentes + 1
    } else if(verificaTodosDiferentes(c) & !verificaTodosDiferentes(a) & !verificaTodosDiferentes(b)){
        um.todos.diferentes <- um.todos.diferentes + 1
    }
    
}
prob.um.todos.diferentes <- um.todos.diferentes/nSamples

print("B) Apenas um possua todos os digitos diferentes.")
print(prob.um.todos.diferentes)
