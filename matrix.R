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
?'rbind' # row combine

A <- matrix(1:4, ncol = 2)
B <- matrix(2:5, ncol = 2)
A
B
A + B
A / B
A + 3
A + c(2, 3)
A + c(2, 3, 4)
# A + 2:6 Error: length do not match
sin(A)
exp(A)

# t()
x <- 1:4
is.matrix(x)
t(x) # row base matrix
is.matrix(t(x))
t(t(x)) # col base

A <- matrix(1:6, ncol = 2)
B <- matrix(1:6, nrow = 2)
A %*% B
crossprod(t(A), B)
det(A %*% B)
# det(A) Error, need square to compute detiminat

A <- matrix(1:4, ncol = 2)
diag(A)
diag(A) <- c(7, 8)
A
diag(c(3, 4)) # create matrix
diag(4) # create I4 matrix

solve(A)
?'solve' 
# a %*% x = b for x, default is I(n)
A %*% solve(A) # I(n)

# triangle
A <- matrix(1:16, ncol = 4)
upper.tri(A)
# [,1]  [,2]  [,3]  [,4]
# [1,] FALSE  TRUE  TRUE  TRUE
# [2,] FALSE FALSE  TRUE  TRUE
# [3,] FALSE FALSE FALSE  TRUE
# [4,] FALSE FALSE FALSE FALSE
upper.tri(A, diag = TRUE)
lower.tri(A)
A[lower.tri(A)] <- 0
A
?'upper.tri'

# transfer matrix to vector
as.vector(A) # default col base
as.vector(t(A)) # row base
c(A)

x <- matrix(1:12, ncol = 3)
x[ ,3]
mean(x[ ,3])
var(x[2, ])
rowSums(x)
colSums(x)
rowMeans(x)
colMeans(x)
x[upper.tri(x)] <- NA
?'rowMeans'
rowMeans(x, na.rm = TRUE)

# apply(X, MARGIN, FUN, ...)
# 1 indicates rows, 2 indicates columns, 
# c(1, 2) indicates rows and columns.
?'apply'
x <- matrix(1:12, ncol = 3)
apply(x, 1, sum) # row sum
apply(x, 2, sum) # col sum
apply(x, 1, mean)
apply(x, 2, mean)
apply(x, 2, var)
apply(x, 1, max)

x <- matrix(c(1:5, NA, 7:12), ncol = 3)
apply(x, 1, mean)
apply(x, 1, mean, na.rm = TRUE)

apply(x, 2, function(x, a, b) x*a+b, a=2, b=1)
x * 2 + 1 # same as above

# rbind(), cbind()
x <- matrix(1:12, ncol = 3)
x
x <- rbind(x, apply(x, 2, mean))
x
x <- cbind(x, apply(x, 1, sum))
x
rownames(x) <- c(1:4, 'mean')
colnames(x) <- c(1:3, 'sum')
x

x <- matrix(1:12, ncol = 3)
x
?'matrix'
row(x) # give row index
?'row'
col(x) # give col index
diag(x)
x[row(x) > col(x)] <- 0 # lower trig set to 0
x

x <- matrix(1:12, ncol = 3)
x
group <- c('A', 'B', 'A', 'B') # label
rowsum(x, group) # compute label
?'rowsum'
aggregate(x, list(group), sum)
?'aggregate'
# Splits the data into subsets, computes summary statistics for each, 
# and returns the result in a convenient form.

# sweep()
x <- matrix(1:12, ncol = 3)
x
cols <- apply(x, 2, mean)
sweep(x, 2, cols) # every col minus mean
sweep(x, 2, cols, '+') # every col plus mean
sweep(x, 1, 1:4) # every row minus 1:4 respectively

# max.col()
# max.col(m, ties.method = c("random", "first", "last"))
?'max.col' # return max position
set.seed(1)
mm <- rbind(x = round(2*stats::runif(12)),
            y = round(5*stats::runif(12)),
            z = round(8*stats::runif(12)))
mm
max.col(mm)
max.col(mm)
max.col(mm, 'first')
max.col(mm, 'last')
