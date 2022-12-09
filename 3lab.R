# 1 uzduotis
x <- seq(1, 10, 1)
y <- c(4, 8, 3, 7, 9, 1, 6, 4, 2, 7)
plot(x, y, type = "b", xlab = "x", ylab = "y", main = "SKLAIDOS DIAGRAMA")
# 2 uzduotis
setwd("C:/Users/Lotus/Documents/University/MATH")
rm(list=ls())
par(mfrow = c(2, 2))
x <- -10:10
jpeg("plot.jpg")
plot(x ** 2, type="p", xlab="x", ylab="y", main="Melyna", col="blue")
plot(x ** 2, type="o", xlab="x", ylab="y", main="Raudona", col="red")
plot(x ** 2, type="b", xlab="x", ylab="y", main="Zalia", col="green")
plot(x ** 2, type="l", xlab="x", ylab="y", main="Oranzine", col="orange")
dev.off()
# 3 uzduotis
rm(list=ls())
par(mfrow = c(1, 1))
pdf("sinusai.pdf")
x <- -4:4
plot(x, sin(x), type = "b", xlab = "x", ylab = "y", main = "Su plot grubus")
x <- seq(-4, 4, pi/5)
plot(x, sin(x), type = "b", xlab = "x", ylab = "y", main = "Su plot smulkus")
x <- -4:4
curve(sin(x), -4, 4, main="Su curve")
dev.off()
# 4 uzduotis
rm(list=ls())
pdf("cosinusas.pdf")
x <- seq(-2*pi, 2*pi, pi/20)
y <- cos(x)
plot(x, y, type = "l")
lines(x, y*-1, col="red")
abline(v=pi, col="orange")
abline(h=0, col="purple")
lines(x, y=0.05*x+0.1, col="blue")
dev.off
# 5 uzduotis
t <- seq(0,2*pi,0.01)
plot(cos(t)**3, sin(t)**3, type = "l", col="red")
lines((cos(t)**3)/2,sin(t)**3/2, type = "l", col="blue")
legend("topright", legend=c("Kvadratas", "Apskritimas"), col=c("red", "blue"), lty=1:2)
save.image(file="workspace.RData")