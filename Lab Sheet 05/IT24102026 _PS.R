setwd("C:/Users/IT24102026/Desktop/IT24102026")
getwd()
data <- read.table("Data.txt", header = TRUE, sep = ",")
fix(data)
attach(data)
names(data) <- c("X1", "X2")
attach(data)
hist(X2, main = "Histogram for Number of Shareholders")
histogram <- hist(X2, main = "Histogram for Number of Shareholders",breaks = seq(130, 270, length = 8),right = FALSE)
?hist
breaks <- round(histogram$breaks)
freq <- histogram$counts
mids <- histogram$mids
classes <- c()
for(i in 1:(length(breaks)-1)) {
  classes[i] <- paste0("[", breaks[i], ",", breaks[i+1], ")")
}
cbind(classes,frequency=freq)
line(mids,freq)
plot(mids,freq,type="l",main="Frequency polygon for shareholders",xlab ="Shareholders",ylab = "Frequency",ylim = c(0,max(freq)) )

cum.freq <- cumsum(freq)
new <- c()
for(i in 1 :length(breaks)){
  if(i==1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]
  }
}
plot(breaks, new, type = 'l', main = "Cumulative Frequency Polygon for Shareholders", 
     xlab = "Shareholders", ylab = "Cumulative Frequency", ylim = c(0, max(cum.freq)))
cbind(upper=breaks,cumfreq=new)

##1
setwd("C:/Users/it24102026/Desktop/IT24102026")
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
fix(Delivery_Times)
attach(Delivery_Times)

##2
names(Delivery_Times) <- "Delivery_Time_minutes"
fix(Delivery_Times)
attach(Delivery_Times)
Delivery_hist <- hist(Delivery_Time_minutes,main = "Histogram of Delivery Times", 
                      xlab = "Delivery Time (minutes)", ylab = "Frequency",
                      breaks = seq(20, 70, length = 10),right = FALSE)
plot(breaks_delivery, shifted_cum_freq, type = 'l', main = "Cumulative Frequency Polygon for Delivery Times", 
     xlab = "Delivery Time (minutes)", ylab = "Cumulative Frequency", ylim = c(0, max(cum_freq_delivery))) 


##4
breaks <- round(histogram$breaks)
freq <- histogram$counts
mids <- histogram$mids
cum_freq <- cumsum(freq)
ogive_breaks <- breaks
ogive_cum_freq <- c(0, cum_freq)

plot(ogive_breaks, ogive_cum_freq,
     type = "l",
     main = "Cumulative Frequency Polygon (Ogive) of Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     xlim = c(20, 70),
     ylim = c(0, max(ogive_cum_freq)))
grid()
points(ogive_breaks, ogive_cum_freq, pch = 16, col = "red")
text(ogive_breaks, ogive_cum_freq, labels = ogive_cum_freq, pos = 3, cex = 0.8)
classes <- c()
for(i in 1:(length(breaks)-1)) {
  classes[i] <- paste0("[", breaks[i], ", ", breaks[i+1], ")")
}
freq_table <- data.frame(Classes = classes, Frequency = freq)
print(freq_table)

cat("\nCumulative Frequency Table:\n")
cum_table <- data.frame(Upper_Limit = breaks, Cumulative_Frequency = ogive_cum_freq)
print(cum_table)