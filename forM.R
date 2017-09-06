library(xts)
data <- matrix(rnorm(50),nrow=10,ncol=5,dimnames=list(c(1,2,3,4,5,6,7,8,9,10),c("A","B","C","D","E")))
dates <- seq(as.Date("2017-05-01"),length=10,by="days")
xts1 <- xts(x=data, order.by=dates)

s1<-xts1[,1]

#diff(x, lag = 1, differences = 1, arithmetic = TRUE, log = FALSE, na.pad = TRUE, ...)
dow.diff <- diff(dow)
dow.diff <- cbind(dow, dow.diff)
colnames(dow.diff) <- c("dow", "diff")
head(dow.diff,3)

diff(s1)
diff(s1, differences = 2)