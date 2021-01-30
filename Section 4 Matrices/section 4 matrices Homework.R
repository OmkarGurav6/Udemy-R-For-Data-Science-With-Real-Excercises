

myplot<- function(matrix1,rows=1:10){
  data <- matrix1[rows,,drop=F]

  matplot(t(data),type = "b",pch = 15:18,col = c(1:4,6))
  legend("bottomleft",inset = 0.01,legend = Players[rows],col = c(1:4,6),pch = 15:18)
}

playerstyle <- (Points-freethrows)/FieldGoals

myplot(freethrowattempts/Games)
myplot(freethrows/freethrowattempts)
myplot(playerstyle)
