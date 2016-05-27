set.seed(20)

H0<-sapply(rep(12,150000),function(x)
{((abs(mean(rnorm(x))-mean(rnorm(x))))/(sqrt(var(rnorm(x)))))}) ##normal

H1<-sapply(rep(12,150000),function(x)
{((abs(mean(rchisq(x,2.5))-mean(rchisq(x,2.5))))/(sqrt(var(rchisq(x,2.5)))))}) ## Chi-Squared 

hist(H0,breaks	=	seq(0,4,0.1),col=rgb(1,0,0,0.5),xlim	=	
       c(0,4))	
hist(H1,breaks	=	
       seq(0,10,0.1),col=rgb(0,0,1,0.5),add=T)	

try <- abs(mean(rchisq(15,2.5))-median(rchisq(15,2.5)))/(sqrt(var(rchisq(15,2.5))))
fcum <- ecdf(H0)
pvalue <- 1-fcum(try) #100*(1-alfa), si pvalue se encuentra en ese rango se rechaza la hipotesis nula
abline(v=try,col="red",lw=3)
pvalue