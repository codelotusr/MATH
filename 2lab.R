# 3 uzduotis
x <- seq(1,11,2); x
A <- matrix(x, 2, 3, TRUE); A

# 6 uzduotis
metai <- c( 50, 17, 30)
balai <- c( 8, 7, 2)
asmenys <- c("Ignas", "Karina", "Jonas")
a <- cbind(asmenys, metai, balai); a
mode(a)
class(a)
attributes(a)
b <- data.frame(asmenys, metai, balai); b
mode(b)
class(b)
attributes(b)
d <- cbind(metai, balai)
mode(d)
class(d)
attributes(d)
# 7 uzduotis
data(Orange)
help(Orange)
summary(Orange)
str(Orange)
class(Orange)
mode(Orange)
attributes(Orange)
dim(Orange)



