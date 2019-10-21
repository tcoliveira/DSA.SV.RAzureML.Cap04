##BoxSplots
?boxplot
?sleep

#permite utilizar as colunas sem especificar o nome do dataset
attach(sleep)

#Construcao do boxplot

sleepboxplot = boxplot(data = sleep, extra ~ group,
                       main = "Duracao de sono",
                       col.main = "red", ylab = "Horas", xlab = "Droga")

#calculando as medias
media = by(extra, group, mean)
#adiciona media as graficos
points(media, col = "red")

#Boxplot horizontal
horboxplot = boxplot(data = sleep, extra ~ group,
                     ylab = "", xlab ="", horizontal = T)