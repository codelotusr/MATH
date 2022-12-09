# 1 uzduotis
a = 3
b = 12
c = -3 
d = 3.5
x = b * c 
y = sqrt(b / a) + d
z = ((-a) ** 3) + c
# 2 uzduotis
ls()
rm(x, y)
ls()
# 4 uzduotis
x <- c(1, 3, 5, 7, 9); x
y <- c(2, 3, 5, 7, 11, 13); y
print(sum(x > 5))
print(sum(x[x>5]))
print(x[3])
x <- c(1, 3, 5, 7, 9); x
y <- c(2, 3, 5, 7, 11, 13); y
z <- c(2, 2, 2, 2, 2)
vekt1 <- seq(-12,21,3); vekt1
vekt2 <- vekt1[vekt1 > 0]; vekt2
vekt3 <- vekt1[vekt1 > 0 & vekt1<13]; vekt3
#Sukurkite vektorių vekt4, kurio nariai būtų vektoriaus vekt1 mažiausio nario pasikartojimas 5 kartus;
vekt4 <- rep(min(vekt1),5); vekt4