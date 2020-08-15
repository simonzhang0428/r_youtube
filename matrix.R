# matrix(data=NA, nrow=1, ncol = 1, byrow=FALSE, dimnames=NULL)
mat1 <- matrix(1:6, nrow = 2)
print(mat1)
mat2 <- matrix(1:6, nrow = 2, byrow = TRUE)
mat2
rnames <- c('R1', 'R2')
cnames <- c('C1', 'C2', 'C3')
mat3 <- matrix(1:6, nrow = 2, dimnames = list(rnames, cnames))
mat3
class(mat3)
typeof(mat3)
dim(mat3)
length(mat3)
rownames(mat3)
colnames(mat3)
rownames(mat1) <- c('r1', 'r2')
colnames(mat1) <- c('c1', 'c2','c3')
mat1

mat4 <- 1:6
dim(mat4) <- c(3, 2)
is.matrix(mat4)
mat4
mat4 <- t(mat4)
mat4
?'t' # Matrix Transpose

mat <- matrix(1:9, nrow = 3, dimnames = list(c('r1', 'r2', 'r3'), c('c1', 'c2', 'c3')))
print(mat)
mat[2, 2]
mat[2,]
mat[,2]
is.matrix(mat[3,])
is.vector(mat[,3])
mat[c(2, 3), c(2, 3)]
mat['r2', 'c2']
mat['r2', ]
mat[c('r2', 'r3'), c('c2', 'c3')]
mat[2, 2, drop=FALSE] # drop -> delete one dimension
mat[2, , drop = FALSE]
is.matrix(mat[2, 2,])
is.matrix(mat[2, 2, drop=FALSE]) # return matrix
mat
mat[2, 2] <- 10
mat[ ,3] <- 20
mat[mat < 6] <- 7
mat <- mat[-2, ]

mat <- matrix(1:9, nrow=3)
rbind(mat, c(12, 13, 14))
cbind(mat, c(12, 13, 14))
?'rbind'
