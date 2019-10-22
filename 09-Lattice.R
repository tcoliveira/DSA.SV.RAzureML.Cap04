install.packages('lattice')
library(lattice)
xyplot(data = iris, groups = Species, Sepal.Length ~ Petal.Length)
