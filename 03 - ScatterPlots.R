##Grafico de dispersao
##definindo dados aleatorios

set.seed(67)
x = rnorm(10,5,7)
y = rpois(10,7)
z = rnorm(10,6,7)
t= rpois(10,9)

##cria o plot
plot(x,y,col = 123, pch = 10, main = "Multi Scatterplot", 
     col.main = "red", cex.main = 1.5, xlab = "Variavel indepentede",
    ylab = "variavel dependente")
#Adicionando ouros dados
points(z,t, col = "blue", pch = 4)

#Adicionando ouros dados
points(y,t, col = 7777, pch = 9)
