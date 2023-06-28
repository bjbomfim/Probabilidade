fatorial <- function(n){
  fat = 1
  for (i in 1:n){
    fat = fat * i
  }
  return (fat)
}

fatorailRecursao <- function(n){
  if(n == 0){
    return(1)
  }
  else {
    return(n*fatorailRecursao(n-1))
  }
}

print(fatorial(10))
print(fatorailRecursao(10))