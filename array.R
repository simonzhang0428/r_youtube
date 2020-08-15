# array(data = NA, dim = length(data), dimnames = NULL)
data <- array(1:24, 2:4)
data
dim(data)
?'array'
?'dim'
x <- 1:24
is.array(x)
dim(x) <- c(2, 4, 3)
x
is.array(x)
y <- matrix(1:12, ncol = 3)
dim(y)
dimnames(data)[[1]] <- c('male', 'female')
dimnames(data)[[2]] <- c('young', 'middle', 'old')
dimnames(data)[[3]] <- c('A', 'B', 'C', 'D')
dimnames(data)
data

?'aperm' # array permute
new.data <- aperm(data, c(2, 3, 1))
new.data
data

myarray <- array(1:24, dim=c(2,3,4), 
      dimnames=list(One=c('a','b'), Two=c('A','B','C'), Three=1:4) )
print(myarray)
mynewarray <- aperm(myarray, c(3, 1, 2))
myarray[2, 3, 4]
mynewarray[4, 2, 3]
