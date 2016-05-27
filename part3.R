datos<-read.table("/home/nhell/Descargas/datos.txt", sep="", header = TRUE)
plot(datos)
library(MASS)
z<-c(datos$y)
fit1<-fitdistr(z,"weibull") # el mejor ajuste que he encontrado 
fit1
ks.test(z, "pweibull", scale=0.15543129, shape=1.97641213) ##valores apartir del test de kolmogorov-smirnov