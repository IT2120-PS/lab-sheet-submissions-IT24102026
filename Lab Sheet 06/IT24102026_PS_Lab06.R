getwd()
setwd("C:\\Users\\IT24102026\\Desktop\\Labsheet6")
getwd()
dbinom(40,44,0.92)
pbinom(35,44,0.92,lower.tail = TRUE)
#What is the probability that at least 38 children are cured?
#P(X>=38) = 1-P(X<38) = 1-P(x<=37)
1- pbinom(37,44,0.92,lower.tail = TRUE)
#or
pbinom(37, 44, 0.92,lower.tail = FALSE)
#What is the probability that between 40 and 42 (both inclusive) children are cured?
pbinom(42,44,0.92,lower.tail = TRUE) - pbinom(39, 44,0.92,lower.tail = TRUE)
#Q2
#NoOf babies born in Hospital every day
#Poission distribution
dpois(6,5)
ppois(6,5,lower.tail = FALSE)
#Q1
#Binomal distribution
dbinom(47, 50, 0.85)
#Q2
#Number of calls received in given day
#poisson distribution
ppois(15, 12)
#Q2
#Number of calls received in given day
#poisson distribution
dpois(15, 12)
#Q1
#Binomal distribution
pbinom(46, 50, 0.85,lower.tail = FALSE)
getwd()
setwd("C:\Users\IT24102026\Desktop\IT24102026_Lab6")
setwd("C:\\Users\\IT24102026\\Desktop\\IT24102026_Lab6")
#Q1
#Binomal distribution
pbinom(46, 50, 0.85,lower.tail = FALSE)
#Q2
#Number of calls received in given day
#poisson distribution
dpois(15, 12)