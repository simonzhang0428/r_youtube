items <- list(a=c(1, 4, 7), b=c('apple', 'orange'), c=3)
items
str(items)
items2 <- list(c(1, 4, 7), c('apple', 'orange'), 3)
str(items2)
items2
is.list(items)
is.list(2)
typeof(items2)
typeof(2)
length(items)

items[c(1, 3)]
items[-3] # not include 3rd item
items
items[c(TRUE, FALSE, TRUE)]
items[c('b', 'c')]
items['a']
typeof(items['a'])
items[['a']]
typeof(items[['a']])

items$b
items$b[1]
items$c <- FALSE
items$d <- c('one', 'two')
items

# delete element
items[['a']] <- NULL
str(items)
items$b <- NULL
str(items)
