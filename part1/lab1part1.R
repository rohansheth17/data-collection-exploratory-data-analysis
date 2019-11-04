sales1<-c(12,14,16,29,30,45,19,20,16, 19, 34, 20)
sales2<-rpois(12,34)  # random numbers, Poisson distribution, mean at 34, 12 numbers
par(bg="cornsilk")
plot(sales1, col="blue", type="o", ylim=c(0,100), xlab="Month", ylab="Sales" )
title(main="Sales by Month")
lines(sales2, type="o", pch=22, lty=2, col="red")
grid(nx=NA, ny=NULL)
legend("topright", inset=.05, c("Sales1","Sales2"), fill=c("blue","red"), horiz=TRUE)





sales<-read.table(file.choose(), header=T)
sales  # to verify that data has been read
barplot(as.matrix(sales), main="Sales Data", ylab= "Total",beside=T, col=rainbow(5))





fn<-boxplot(sales,col=c("orange","green"))$stats
text(1.45, fn[3,2], paste("Median =", fn[3,2]), adj=0, cex=.7)
text(0.45, fn[3,1],paste("Median =", fn[3,1]), adj=0, cex=.7)
grid(nx=NA, ny=NULL)




fb1<-read.csv(file.choose())
aapl1<-read.csv(file.choose())
par(bg="cornsilk")
plot(aapl1$Adj.Close, col="blue", type="o", ylim=c(150,200), xlab="Days", ylab="Price" )
lines(fb1$Adj.Close, type="o", pch=22, lty=2, col="red")
legend("topright", inset=.05, c("Apple","Facebook"), fill=c("blue","red"), horiz=TRUE)
hist(aapl1$Adj.Close, col=rainbow(8))



data()
if(!requireNamespace("devtools")) install.packages("devtools")
devtools::install_github("tidyverse/ggplot2")
library(ggplot2)
attach(mpg)
head(mpg)
summary(mpg)
detach(mpg)
library (help=datasets)
attach(trees)
head(trees)
summary(trees)
detach(trees)
library(datasets)
head(uspop)
plot(uspop)


devtools::install_github("dkahle/ggmap")



library("ggmap")
citation("ggmap")
gpclibPermit()
library("maptools")
library("maps")
register_google(key = "") 
visited <- c("SFO", "Chennai", "London", "Melbourne", "Lima,Peru", "Johannesbury, SA")
ll.visited <- geocode(visited)
visit.x <- ll.visited$lon
visit.y <- ll.visited$lat
map("world", fill=TRUE, col="white", bg="lightblue", ylim=c(-60, 90), mar=c(0,0,0,0))
points(visit.x,visit.y, col="red", pch=36)




library("ggmap")
library("maptools")
library("maps")
visited <- c("SFO", "New York", "Buffalo", "Dallas, TX")
ll.visited <- geocode(visited)
visit.x <- ll.visited$lon
visit.y <- ll.visited$lat
map("state", fill=TRUE, col=rainbow(50), bg="lightblue", mar=c(0,0,0,0))
points(visit.x,visit.y, col="yellow", pch=36)





attach(mtcars)
head(mtcars)
plot(mtcars[c(1,3,4,5,6)], main="MTCARS Data")
plot(mtcars[c(1,3,4,6)], main="MTCARS Data")
plot(mtcars[c(1,3,4,6)], col=rainbow(5),main="MTCARS Data")
detach(mtcars)


attach(chickwts)
head(chickwts)
plot(chickwts[c(1,2)], main="CHICKWTS_DATA")

dev.new(width=5, height=4, unit="in")
plot(1:20)
dev.new(width = 550, height = 330, unit = "px")
plot(1:15)

require(stats); require(graphics)
boxplot(weight ~ feed, data = chickwts, col = "lightgray",
        varwidth = TRUE, notch = TRUE, main = "chickwt data",
        ylab = "Weight at six weeks (gm)")
anova(fm1 <- lm(weight ~ feed, data = chickwts))
opar <- par(mfrow = c(2, 2), oma = c(0, 0, 1.1, 0),
            mar = c(4.1, 4.1, 2.1, 1.1))
plot(fm1)
par(opar)

detach(chickwts)

attach(women)
head(women)
plot(women[c(1,2)], main="WOMEN")
detach(women)





library(ggplot2)
attach(mtcars)
ggplot(mtcars, aes(x=mpg, y=disp)) + geom_point()
detach(mtcars)








