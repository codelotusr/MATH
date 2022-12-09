# 1 uzduotis
pdf("mtcars.pdf")
par(mfrow=c(3,1))
data(mtcars)
attach(mtcars)
class(am)
# a
am <- factor(am)
class(am)
# b
str(mtcars)
summary(mtcars)
# c
table(cyl)/length(cyl)
barplot(table(cyl)/length(cyl),col=rainbow(10),main="Cyl stulpelinė diagrama")
# d
table(am,cyl)
barplot(table(am,cyl),beside=T,xlab="Cilindrų skaičius",ylab="Dažniai",legend.text=rownames(table(am,cyl)),col=rainbow(2),main="Kryžminės dažnių lentelės vizualizacija")
# e
table(carb)
carbslices <- c(7,10,3,10,1,1)
carblabels <- c(1:4,6,8)
pie(carbslices,carblabels,col=rainbow(10),main="Karbiuratorių skaičiaus pasiskirstymas")
dev.off()
detach(mtcars)
# 2 uzduotis
with(mtcars,median(qsec))
# 3 uzduotis
tapply(mtcars$mpg,mtcars$am,mean)
# 4 uzduotis
mtcars[order(mtcars$carb,decreasing=FALSE),]
# 5 uzduotis
split(mtcars$carb, mtcars$am)
# 6 uzduotis
w <- split(mtcars$qsec, mtcars$am)
boxplot(w, main="Kryžminės diagramos vizualizacija", xlab="Automobilio pavarų dėžės tipas", ylab="Automobilio greitis", las=2)
# 7 uzduotis
v <- c(52, 54, 57, 49, 63, 54, 38, 46, 49, 33, 43, 40, 29, 43, 60, 69, 54, 64, 41, 63, 44, 55, 58, 41, 37, 49, 36, 43, 36, 44, 35, 54, 57, 55, 56, 56, 56, 41, 49, 63, 41, 46, 45, 55, 45, 49, 47, 37, 62, 48, 44, 45, 48, 62)
# a
table(v, length(v))
hist(v, freq=FALSE, main="Santykinių dažnių histograma", col="orange")
abline(v=mean(v), col="red", lwd=2)
legend(50, 0.05, legend="Vidurkis", lty=FALSE, pch=15, cex=1, lwd=1, col="red")
# b
skewness(rez)
# Asimetrijos koeficientas g1 = 0.06508286 > 0. Išvada: asimetrija teigiama (dešinioji).
kurtosis(rez)
# Eksceso koeficientas g2 = -0.7952855 < 0. Išvada: histograma lėkšta, t.y. duomenų sklaida apie vidurkį didesnė nei normaliosios kreivės atveju

# c.
# Asimetrijos koeficientas
# Asimetrijos koeficientas yra histogramos simetrijos matas. Jeigu g1 > 0, tai histogramos asimetrija teigiama (dešinioji) (tankio grafikas kairėje), jeigu g1 < 0, tai asimetrija neigiama (kairioji) (tankio grafikas dešinėje). Histograma simetriška, kai g1 = 0.
# Eksceso koeficientas
# Jeigu g2 = 0, tai sklaida apie vidurkį tokia pati kaip ir normaliosios kreivės. Jeigu g2 > 0 – histograma smaila t.y. duomenų sklaida apie vidurį yra mažesnė nei normaliosios kreivės (tankio grafikas dešinėje). Jeigu g2 < 0, tai histograma lėkšta, t.y. duomenų sklaida apie vidurį didesnė nei normaliosios kreivės atveju (tankio grafikas kairėje).

# 8 uzduotis
duomrink <- read.table("C:/Users/Lotus/Documents/University/MATH/Duomenys_lab5.txt",header = T,sep =" ")
head(duomrink)
set.seed(1126)
n <- 250; x <- nrow(duomrink)
eilutes <- sample(x, n, replace = FALSE)
imtis <- duomrink[eilutes,]
head(imtis)
#dim(duomrink) eiluciu ir stulpeliu sk., nrow(duomrink) - eiluciu,  lenght(duomrink) - stulpeliu

# a
summary(imtis$year)
boxplot(imtis$year,horizontal=T,col="green",main="Year duomenys");grid(31)

# b.
str(imtis)
cor(imtis$year,imtis$area)
cor(imtis)
cor.test(imtis$year,imtis$area)
pairs(imtis)

# c
korKoficientas = lm(area~year, data=imtis)
plot(imtis$year, imtis$area, main="Year vs Area", xlab="Year", ylab="Area", col="blue")
abline(korKoficientas, col="red", lwd=2)

# 9 uzduotis
x <- rnorm(500, mean=0.5, sd=2)
# a
lol1 <- mean(x) + c(-1,1) * qnorm(0.99) * 2 / sqrt(length(x))
# b
lol2 <- mean(x) + c(-1,1) * qt(0.95, df=length(x)-1) * sd(x) / sqrt(length(x))
# c
lol3 <- mean(x) + c(-1,1) * qt(0.95, df=length(x)-1) * sd(x) / sqrt(length(x))
t.test(x, mu=1, alternative="two.sided")










