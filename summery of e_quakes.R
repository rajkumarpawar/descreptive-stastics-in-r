
quakes<-datasets::quakes

#top 10 row and columns
head(quakes,10)
tail(quakes,10)

#columns
quakes[40:50,c(1,2)]

df<-quakes[,-5]


#descriptive stastics
#1
summary(quakes[,c(4,5)])

quakes$lat
quakes$long
quakes$depth

#1
summary(quakes$lat)

########sumery of the data 
summary(quakes)
summary(quakes$lat)


#######
#visualization

plot(quakes$lat)

plot(quakes$lat,quakes$long,type="p")

plot(quakes)

#points and lines

plot(quakes$lat,type = "l")#p:point, l: lines,b=both

plot(quakes$lat,xlab='quakes lat',
     ylab='index',main='quakes concentration in earth',
     col='blue',type='l')

# horizontal bar plot
barplot(quakes$lat, main = 'quakes concentration in air',
        ylab='quakes levels',col='blue',horiz=F,axes=T)



#histogram
hist(quakes$lat)
hist(quakes$lat)
 main='quakes values in air'
 xlab='quakes rad.', col ='blue')

#single box plot
boxplot(quakes$lat,main="boxplot")
boxplot.stats(quakes$lat)$out

#multi box plot
boxplot(quakes[,1:4],main="multiple")



#margin of the grid(mar),
#no of rows and columns(mfrow),
#wheather a border is to be included(bty)
#and position of the 
#lable(las:1 for horizontal, las:0 for vertical)
#bty - box around the plot



par(mfrow=c(3,3),mar=c(2,5,2,1),las=0, bty="0")
plot(quakes$lat)
plot(quakes$lat, quakes$long)
plot(quakes$lat, type="l")
plot(quakes$lat, type="l")
plot(quakes$lat, type="l")

barplot(quakes$lat, main='quakes concentration in air',
        xlab = 'quakes  levels', col='green', horiz=TRUE)
hist(quakes$mag)
boxplot(quakes$mag)
boxplot(quakes[,0:4],main ='multiple box plot')





