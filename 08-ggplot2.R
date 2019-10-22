install.packages('ggplot2')
library(ggplot2)
#ploando um grafico basico com ggplot()
data(tips, package = 'reshape2')
View(tips)
qplot(total_bill, tip, data = tips, geom = 'point')

#Camada 1
cam1<-geom_point(
  mapping = aes(x = total_bill, y = tip, color = sex),
  data = tips,
  size = 3
)
ggplot() + cam1
?aes

#Construindo um omodelo de regressao
modelo_base <-lm(tip ~ total_bill, data = tips)
modelo_fit <-data.frame(
  total_bill = tips$total_bill,
  predict(modelo_base, interval =  'confidence')
)

head(modelo_fit)

#Camada 2
cam2<-geom_line(
  mapping = aes(x = total_bill, y = fit),
  data = modelo_fit,
  color = 'darkred'
)
ggplot() + cam2 + cam1
#Camada 3
cam3<-geom_ribbon(
  mapping = aes(x=total_bill, ymin = lwr, ymax=upr),
  data = modelo_fit,
  alpha = 0.3
)
ggplot() + cam2 + cam1 + cam3

ggplot(tips, aes(x= total_bill, y = tip))+
  geom_point(aes(color=sex))+
  geom_smooth(method = 'lm')

#gavando o grafico em um objeto

myplot <- ggplot(tips, aes(x= total_bill, y = tip))+
  geom_point(aes(color=sex))+
  geom_smooth(method = 'lm')

print(myplot)


#Dados
data = data.frame(grupo = c('A','B','C','D'),
                  valor = c(33,62,56,67),
                  n_obs = c(100,500,459,342))
#Gerando massa de dados
data$right = cumsum(data$n_obs) + 30 * c(0:(nrow(data)-1))
data$left = data$right - data$n_obs

#Plot
ggplot(data, aes(ymin = 0))+
  geom_rect(aes(xmin = left, xmax = right,
                ymax = valor, colour = grupo, fill=grupo))+
  xlab('Num Obs') + ylab('Valor')