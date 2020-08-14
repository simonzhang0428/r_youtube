ages <- c(4, 7, 6, 5, 6, 7) # combine, default form vector
new_ages <- c(12, ages, 17)
colors <- c('red', 'black', 'blue')
booleans <- c(TRUE, FALSE, TRUE)
class(ages)
class(colors)
class(booleans)
length(ages)
length(new_ages)
length(colors)
mean(ages)
max(new_ages)
ages[0]
ages[1] # index start from 1
index <- c(1, 2, 3)
ages[index]
ages[c(1, 2, 3)]
ages[-1] # not include 1
ages[ages > 5]
ages[2] <- 10
ages[ages <= 6] <- 3
ages <- ages[1:4]
ages <- NULL
new_ages <- c(kim=7, rob=6, tony=12)
ages <- c(1, 2, 3)
names(ages) <- c('bob', 'simon', 'helen')
print(ages)
names(ages)
names(new_ages)
ages[1]
ages[[2]]
ages['bob']
ages[['bob']]
as.vector(new_ages) # remove the names in vector

# convert to the same type
# character > complex > numeric > integer > logical
c(2.3 + 1i, TRUE, 'hello') # char
c(2, TRUE) # int
c(2.1, TRUE) # float
c(2+3i, TRUE) # complex
c(2, 2.1) # float
c(2, 2.1, 2+1i) # complex

is.vector(3)
is.vector(c(1, 2, 3))

# same length
x <- c(1, 2, 3)
y <- c(4, 5, 6)
x + y
x * y
x ^ y

# different length
x <- c(1, 3)
y <- c(4, 3, 2, 1)
z <- c(2, 4, 5)
x + 4
y + 4
x - y # x <- (1, 3, 1, 3), length(y) is K times length(x)
x / y
x / z # warning msg, not K times

x <- c(10, 100, 1000)
log10(x)
y <- c(pi, pi/2, pi/3)
sin(y)
x %*% y
?'%*%' # Matrix Multiplication

2 : 7 # +1
9 : 3 # -1
3.14 : 9 # 3.14 4.14 5.14 6.14 7.14 8.14
3 : 9.3
3.14 : 9.3
9 : 3.1
2 ^ (0 : 5)

seq(2, 7)
seq(11, 3)
seq(2.1, 7)
seq(1, 9, 2)
seq(2, 7, by = 1.1)
seq(0, 1, length.out = 3)

rep(1 : 4, 2) # Replicate
rep(0, 5)
rep(1 : 4, each = 2)
rep(1 : 4, c(2,2,2,2))
rep(1 : 4, c(2,1,2,1))
rep(1:4, each = 2, len = 4)
rep(1:4, each = 2, len = 12) # repeat after comsume all
rep(1:4, each = 2, times = 3)

all(c(TRUE, FALSE))
any(c(TRUE, FALSE))

# functions
?'max'
x <- c(2, 4, 5, 3, 2)
y <- c(7, 2, 3, 8, 6)
z <- c(1, 7, 2, 9, 0)
max(x)
min(x)
range(x)
length(x)
sum(x)
prod(x)
mean(x)
median(x)
var(x) # 方差
sd(x) # 标准差
cor(x, y) # Correlation
sort(x)
rank(y)
order(y)
quantile(x)
?"order"
cumsum(x)
cumprod(x)
cummax(x)
?'cummax'
cummax(y)
cummax(z)
cummin(y)
pmax(x, y, z) # parallel max
pmin(x, y, z)
table(x)
?'table'
diff(x)
unique(x) # remove duplicate
union(x, y)
intersect(x, y)
setdiff(x, y)
x %in% y

# Inf
2 / 0 # Inf, infinite
-2 / 0 # -Inf
2 / Inf
exp(-Inf)
is.finite(2)
is.infinite(2/0)

# NaN, not a number
0 / 0 
Inf - Inf
Inf / Inf
is.nan(2)
is.nan(NA)

# NA, (missing value)缺失/占位; 
# NULL,不存在, 空值
length(c(NA, NA, NULL))
c(NA, NULL, NA)
x <- c(2, 5, NA, 7, NA, 8)
is.na(x) # FALSE FALSE  TRUE FALSE  TRUE FALSE
x[! is.na(x)] # remove NA
sum(is.na(x))
mean(x, na.rm = TRUE)
which(is.na(x)) # give back index
