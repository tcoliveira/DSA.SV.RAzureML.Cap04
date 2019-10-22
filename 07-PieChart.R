?pie

#criando fatias
fatias = c(40,20,40)

#labels
pais = c('Br','Ar','Cl')
#Unindo paises e fatias
pais=paste(pais,fatias)

#Incluindo mais detalhes no label
pais = paste(pais, '%', sep = '')

colors()

#Construindo um grafico
pie(fatias, labels = pais,
    col = c('darksalmon', 'gainsboro', 'lemonchiffon4'),
    main = 'Distribuicao vendas')

#Trabalhando com dataframes
?iris
attach(iris)
Values= table(Species)
labels=paste(names(Values))
pie(Values, labels = labels, main = ' Distrib Especieis')
install.packages('plotrix')
