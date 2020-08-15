# normal distribution with mean equal to mean and 
# standard deviation equal to sd.
rnorm(6)
rnorm(6)
?'rnorm' # 
# dnorm gives the density, pnorm gives the distribution function, 
# qnorm gives the quantile function, and rnorm generates random deviates.
set.seed(123)
x <- rnorm(6)
x
set.seed(123)
y <- rnorm(6)
y
x == y
?'set.seed'
# random number generator (RNG) 

# sample(x, size, replace = FALSE, prob = NULL)
?'sample'
data <- 1:10
set.seed(1234)
sample(data)
sample(data, 3)
sample(data, replace = TRUE, 12)
ratio <- c(8, 2)
sample(c(0, 1), 100, replace=TRUE, prob = ratio)
sample(c(0, 1), 100, replace=TRUE)
sample(c('A', 'B'), 10, replace = TRUE)
sample(10)
sample(100)
sample(1:100)
