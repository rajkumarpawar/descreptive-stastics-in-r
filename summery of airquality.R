


airquality<-datasets::airquality


###Top ten rows & last 10 columns
head(airquality,10)
tail(airquality,10)


####columns
airquality[40;50,c(1,2)]

df<-airquality[,-6]



#descriptive stastics
#1
summary(airquality[,c(4,5)])


airquality$Temp
airquality$Wind
airquality$Ozone

#1
summary(airquality$wind)

########sumery of the data 
summary(airquality)
summary(airquality$Wind)


#######
#visualization

plot(airquality$Wind)

plot(airquality$temp,airquality$ozone,type="p")

plot(airquality)

#points and lines

plot(airquality$Wind,type = "l")#p:point, l: lines,b=both

plot(airquality$Wind,xlab='ozone concentration',
     ylab='no of instances',main='ozone levels in ny city',
     col='blue',type='l')

# horizontal bar plot
barplot(airquality$Ozone, main = 'ozone concentration in air',
        ylab='ozone levels',col='blue',horiz=F,axes=T)



#histogram
hist(airquality$Temp)
hist(airquality$Temp)
  main='solar radiation values in air'
 xlab='solar rad'col='blue')

#single box plot
boxplot(airquality$Wind,main="boxplot")
boxplot.stats(airquality$Wind)$out

#multi box plot
boxplot(airquality[,1:4],main="multiple")



#margin of the grid(mar),
#no of rows and columns(mfrow),
#wheather a border is to be included(bty)
#and position of the 
#lable(las:1 for horizontal, las:0 for vertical)
#bty - box around the plot



par(mfrow=c(3,3),mar=c(2,5,2,1),las=0, bty="0")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type="l")
plot(airquality$Ozone, type="l")
plot(airquality$Ozone, type="l")
barplot(airquality$Ozone, main='ozone concentration in air',
        xlab = 'ozone levels', col='green', horiz=TRUE)
hist(airquality$solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4],main ='multiple box plot')


























