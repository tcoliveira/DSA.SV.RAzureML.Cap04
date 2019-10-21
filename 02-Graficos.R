# usando o base plotting system
search()

demo("graphics")
#plot basico

x = 5:7
y = 8:10
plot(x,y)

help(plot)

?plot

alt<-c(145,167,176,123,150)
larg<-c(51,63,64,40,55)
plot(alt,larg)

#plot de dataframes
?lynx
plot(lynx)
plot(lynx, ylab = "Plots com DF", xlab="observacao")
plot(lynx, main = "Plos com DF", col = 'red')
library(datasets)
hist(warpbreaks$breaks)

airquality
transform(airquality, Month = factor(Month))
boxplot(Ozone ~ Month, airquality , xlab = "Month", ylab = "Ozone(ppb)")
?par
par()
par('pch')
par('lty')
x = 2:4
plot(x, pch = 'c')

par(mfrow = c(2,2), col.axis = "red")
plot(1:8, las = 0, xlab = "xlab", ylab = "ylab", main = "LAS = 1")
plot(1:8, las = 3, xlab = "xlab", ylab = "ylab", main = "LAS = 3")
legend("topright", pch = 1, col = c("blue", "red"), legend = c("var1", "var2"))
par(mfrow = c(1,1))

#cores

colors()
#Salvando graficos
#png
png("Graficos1.png", width = 500, height = 500, res = 72)
plot(iris$Sepal.Length, iris$Petal.Length,
     col = iris$Species,
     main = "Grafico gerado a partir do Iris")
dev.off()

#Extendendo as funcoes do plot
install.packages('plotrix')
library(plotrix)
?plotrix

par(mfrow = c(1,1), col.axis = "red")
plot(1:6, las = 3, xlab = "lty 1:6", ylab = "", main = "Mais opcoes ao plot")
ablineclip(v = 1, lty = 1, col = "sienna2", lwd = 2)
ablineclip(v = 2, lty = 1, col = "sienna2", lwd = 2)
ablineclip(h = 2, lty = 4, col = "hotpink2", lwd = 2)

plot(lynx)

#Dois plots juntos
par(mar = c(4,3,3,3), color.axis("black"))
plot(cars$speed, type = "s", col = "red", bty = "n", xlab = "Cars ID", ylab = "")
text(8,14, "Velocidade", cex = 0.85, col = "red")
par(new = T)

plot(cars$dist, type = "s", bty = "n", ann = F, axes = F,col = "darkblue")
axis(side=4)
text(37.18, "Distancia", cex = 0.85, col = "darkblue")

title (main = "Velocidade x Distancia")
par(new = T)

#### plot com dataset

df<-read.csv('pibpercap.csv')#, stringAsFactors = F)
df_1982<-subset(df, ano==1982)
plot(pop ~ pibpercap, ddata =  df_1982, log = "x")
View(df_1982)
