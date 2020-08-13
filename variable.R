y <- 3
Y <- 7
# 2y <- 5
# _xy <- 10
# my name <- "simon"
my.name <- 'simon'
"hello" -> var_x
20 - 3 -> var_y
x <- y <- z <- 100

# real number
z1 <- 2 - 3i
z2 <- 1 + 4i
z1 + z2
Re(z1)
Im(z1)
Mod(z1) # sqrt(a^2 + b^2)
Conj(z1)
Arg(z1) # θ= atan(b/a)
is.complex(z1)
is.complex(4)
as.complex(3.5)

# integer and float
ceiling(2.8)
ceiling(-1.7)
floor(2.8)
floor(-1.7)
trunc(2.8) # close to 0
trunc(-1.7) # truncate
trunc(2.8) == floor(2.8)
trunc(-1.7) == ceiling(-1.7)
round(2.3)
round(2.6)
round(2.500001)
round(2.5) # 2, look 5 previous digit, even discard
round(3.5) # 4, odd +1
round(3.24, 1)
round(3.25, 1)
round(3.35, 1)
signif(3.1234567)
signif(12345678) # default 6
signif(12345678, 7)
signif(-12345678, 7)
