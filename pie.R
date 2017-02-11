x<- c(21,62,10,53)
labels<- c("London","New york","Singapore","Mumbai")

# create png file
png(file="piechartdemo.jpg")

#plot the chart
pie(x,labels,col=rainbow(length(x)))

#save the file
dev.off()
