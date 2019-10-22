?barplot
#preparando os dados
dados<-matrix(c(652,1537,598,242,36,46,38,21,218,327,106,67), nr = 3, byrow = T)
dados

#Nomeando as linas e colunas na matri

colnames(dados)<-c('0','1-150','151-300','>300')
rownames(dados)<-c('jovem','adulto','idoso')
dados
#construindo o barplot
barplot(dados, beside = T)

#Construindo o plat starcked barplot --- um grafico emcima do outro, horrivel

barplot(dados)

barplot(dados, col = c('steelblue1', 'tan3', 'seagreen3'))

#crie uma legenda pra cada cor

colors()
legend('topright', pch = 1, col = c('steelblue1', 'tan3', 'seagreen3'), legend = c('jovem','adulto','idoso'))

barplot(dados, beside = T, col = c('steelblue1', 'tan3', 'seagreen3'))
legend('topright', pch = 1, col = c('steelblue1', 'tan3', 'seagreen3'), legend = c('jovem','adulto','idoso'))
barplot(t(dados), beside = T, col = c('steelblue1', 'tan3', 'seagreen3'))
