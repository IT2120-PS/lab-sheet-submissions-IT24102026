setwd("C:/Users/OneDrive/Desktop/IT24102026")

punif(10,min = 0, max = 30, lower.tail = TRUE)

1-punif(20,min = 0, max = 30, lower.tail = TRUE)
punif(20,min = 0, max = 30, lower.tail = FALSE)

pexp(3,rate = 0.5,lower.tail = TRUE)

1-pexp(4, rate = 0.5,lower.tail = TRUE)

pexp(4, rate = 0.5,lower.tail = FALSE)

pexp(4, rate = 0.5,lower.tail = TRUE)-pexp(2,rate = 0.5,lower.tail = TRUE)

pexp(4, rate = 0.5,lower.tail = TRUE)-pexp(2,rate = 0.5,lower.tail = TRUE)

1-pnorm(37.9,mean = 36.8 ,sd = 0.4 ,lower.tail = TRUE
        
        pnorm (36.9, mean = 36.8, sd=0.4, lower.tail = TRUE)-pnorm(36.4, mean = 36.8, sd=0.4,lower.tail = TRUE)
        
        #part 2
        pnorm (36.9, mean = 36.8, sd=0.4, lower.tail = TRUE) -pnorm(36.4, mean = 36.8, sd=0.4,lower.tail = TRUE) 
        
        qnorm(0.012,mean = 36.8, sd = 0.4, lower.tail = TRUE)
        
        qnorm(0.01,mean = 36.8, sd = 0.4, lower.tail = FALSE)
        
        p1 <- punif(25, min=0, max=40) - punif(10, min=0, max=40)
        p1
        
        p2 <- pexp(2, rate = 1/3)   
        p2
        
        p3i <- 1 - pnorm(130, mean = 100, sd = 15)
        p3i
        
        p3ii <- qnorm(0.95, mean = 100, sd = 15)
        p3ii