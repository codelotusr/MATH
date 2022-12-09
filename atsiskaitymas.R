# 1 uzduotis
set.seed(1209)
x <- rbinom(230, 10, 0.55)
# Nubraužome ir išsaugome grafiką
pdf("Grafikas 1.pdf")
barplot(table(x)/length(x))
dev.off()
# Kam lygus kintamojo x = 7 dažnis?
table(x)[7]
# Kam lygus šio atsitiktinio dydžio vidurkis?
EX = 10 * 0.55; EX
# Kam lygus šios imties empirinis vidurkis?
mean(x)

# 2 uzduotis
par(mfrow=c(1,1))
vid <- -1; st <- sqrt(2.5)

# Apskaičiuojame tikimybę P(-2 ≤x≤2)
p <- pnorm(-2, mean=-1, sd=2.5) - pnorm(2, mean=-1, sd=2.5);
round(p, digits = 4)

# Išsaugome grafiką į PDF failą
pdf("Grafikas2.pdf")

# Pavaizduojame tikimybės grafiką
a <- vid - 3 * st
b <- vid + 3 * st
f <- function(x) dnorm(x, mean=-1, sd=2.5)
curve(f,a,b)
x1 <- seq(-2, 2, 0.1)
y1 <- dnorm(x1, vid, st)
x2 <- c(-2, x1, 2)
y2 <- c(0, y1, 0)
polygon(x2, y2, col="green")

# Baigiam darbą su PDF failu
dev.off()

# 3 uzduotis

# Nuskaitome duomenis iš failo
duomrink <- read.table("C:/Users/Lotus/Documents/University/MATH/Duomenys2.txt",header = T,sep =" ")
# nustatome RNG atsitiktinių skaičių generavimui
set.seed(1209)
# pasiemam 370 atsitiktinių eilučių
n <- 370; x <- nrow(duomrink)
eilutes <- sample(x, n, replace = FALSE)
imtis <- duomrink[eilutes,]
# a)
# Apskaičiuojame skaitines charakteristikas
str(imtis)
summary(imtis)
# b)
# Nubraižome kryžminę dažnių lentelę
attach(imtis)
tab <- table(V4, V5); tab
# c)
# Apskaičiuoju vidutinį tiriamųjų amžių (metais) pagal lytį.
tapply(V1, V5, mean)
# d)
# Nubrėžkite kintamojo V1 santykinių dažnių histogramą.
barplot(table(V1)/length(V1),col=rainbow(10),main="Metų santykinių dažnių histograma")

# Kam lygus kintamojo V1 asimetrijos koeficientas?
library("e1071")
skewness(V1)

# Kam lygus kintamojo V1 vidurkis?
mean(V1)

# Kam lygus kintamojo V1 kvantilių skirtumas (Q3 - Q1)?
quantile(V1, c(0.25, 0.75))
IQR(V1)

# Kam lygi kintamojo V1 mediana?
median(V1)

# Kiek yra baltaodžių vyrų?
table(V5, V4)[5, 2]

# Kieno amžius yra didesnis: vyrų ar moterų?
tapply(V1, V5, mean)

# Kam lygi V1 dispersija?
var(V1)

# 2 uzduotis

par(mfrow=c(1,1))
vid <- 0; st <- sqrt(3)

# Apskaičiuojame tikimybę P(-2 ≤x≤2)
p <- pnorm(1, mean=0, sd=3);
round(p, digits = 4); p

# Išsaugome grafiką į PDF failą
pdf("Grafikas2.pdf")

# Pavaizduojame tikimybės grafiką
a <- vid - 3 * st
b <- vid + 3 * st
f <- function(x) dnorm(x, mean=0, sd=3)
curve(f,a,b)
x1 <- seq(a, 1, 0.1)
y1 <- dnorm(x1, vid, st)
x2 <- c(a, x1, 1)
y2 <- c(0, y1, 0)
polygon(x2, y2, col="green")

# Baigiam darbą su PDF failu
dev.off()

# 3 uzduotis

# Nuskaitome duomenis iš failo
duomrink <- read.table("C:/Users/Lotus/Documents/University/MATH/Duomenys1.txt",header = T,sep =",")
# nustatome RNG atsitiktinių skaičių generavimui
set.seed(1212)
# pasiemam 370 atsitiktinių eilučių
n <- 310; x <- nrow(duomrink)
eilutes <- sample(x, n, replace = FALSE)
imtis <- duomrink[eilutes,]
# a)
# Apskaičiuojame skaitines charakteristikas
str(imtis)
summary(imtis)
# b)
# Apskaičiuojame keik vidutiniškai kainavo 2 litrų pepsi butelis, kai buvo pasirinkta coke ir kai buvo pasirinkta pepsi
attach(imtis)
coke -> factor(coke, labels = c("Pepsi", "Coke"))
tapply(pr_pepsi, coke, mean)
# c)
# Nubrėšime kintamųjų pr_pepsi ir pr_coke stačiakampių diagramas vienoje koordinačių sistemoje. Stačiakampių diagramoms turi būti priskirti vardai atitinkamai pr_pepsi ir pr_ coke. Grafiką išsaugosime pavadinimu Grafikas3.pdf .
pdf("Grafikas3.pdf")
boxplot(pr_pepsi, pr_coke, horizontal = T, main = "pr_pepsi ir pr_coke stačiakampės diagramos", names = c("pr_pepsi", "pr_coke"))


# Koreliacijos koeficientas tarp kintamųjų pr_pepsi ir pr_coke
cor(pr_pepsi, pr_coke)

# Kam lygus kintamojo pratio kvantilių skirtumas (Q3 - Q1)?
quantile(pratio, c(0.25, 0.75))
IQR(pratio)

# Kam lygi kintamojo pratio mediana?
median(V1)

# Kam lygus kintamojo pratio vidurkis?
mean(pratio)

# Kam lygus pratio standartinis nuokrypis?
sd(pratio)

# Kam lygus kintamojo pratio eksceso koeficientas?
library("e1071")
kurtosis(pratio)
