# 1 uzduotis
p = 1/10
q = 1 - p
n = 4
# a)
P0 = dbinom(1, n, p)
# b)
P1 = dbinom(0, n, p)
# c)
P2 = 1 - P1
# D)
P3 = dbinom(0, n, p) + dbinom(1, n, p)

# 2 uzduotis
rm(list = ls())
p = 1/6
n = 7
x = 0:7
# a)
t = dbinom(x, n, p)
rbind(x, t)
# b)
pdf("diskretus.pdf")
par(mfrow = c(2, 1))
plot(x, t, type = "h", main = "Skirstinys", col = "red", lwd = 3)
f = pbinom(x, n, p)
rbind(x, f)
plot(x, f, type = "s", main = "F(x)", col = "blue", lwd = 2)
abline(v = x, lwd = 2, col = "white")
points(x, f, col = "blue", pch = 20, cex = 1)
dev.off()
# c)
EX = n * p; EX
x[which.max(t)]
# d)
P4 = dbinom(5, n, p) + dbinom(6, n, p) + dbinom(7, n, p); P4
# 4 uzduotis
rm(list = ls())
vid = 6
disp = 4
f = function(x) dnorm(x, vid, sqrt(disp))
a = vid - 3 * sqrt(disp)
b = vid + 3 * sqrt(disp)
curve(f, from = a, to = b, main = "Tankis"); grid() # tankio grafikas
f = function(x) pnorm(x, vid, sqrt(disp))
curve(f, from = a, to = b, main = "Pasiskirstymas"); grid() # pasiskirstymo grafikas
# 5 uzduotis
rm(list = ls())
jpeg("Tikimybe.jpg")
vid = 10
disp = 16
x = 2:13;
nuokrypis = sqrt(disp)
f = function(x) dnorm(x, vid, nuokrypis)
integrate(f, 2, 13)
curve(f,-2,22)
x1 = seq(2, 13, 0.1)
y1 = dnorm(x1, vid, nuokrypis)
x2 = c(2, x1, 13)
y2 = c(0, y1, 0)
polygon(x2, y2, col = "red", border = "blue")
dev.off()
# 6 uzduotis
rm(list = ls())
n = 8; p = 0.75
x = rbinom(100,n,p); x
table(x)
barplot(table(x)/100,col=rainbow(30))
# 7 uzduotis
rm(list = ls())
png("Norm_hist.png")
A <- rnorm(100,-2,3); A
hist(A)
lines(100, dnorm(100, -2, 3), lty = 2, col="blue")
lines(density(A), col = "red")
dev.off()