# Bar graph

H=c(7,12,28,3,41)
Mon=c("Mar","Apr","May","Jun","Jul")

#save the barchart file
png(file = "Revenue_Month_bars.png")

#plot the bar chart
barplot(H,names.arg=Mon,xlab="Month",ylab="Revenue",col="blue",main="Revenue chart",border="red")

# Save the file
dev.off()


# Pie chart
#set the values

x<- c(21,62,10,53)
labels<- c("London","New york","Singapore","Mumbai")

#calculate the percentage of each value
piepercent<-round(100*x/sum(x),1)

# create png file
png(file="piechartexp5.jpg")

#plot the chart
pie(x,labels=piepercent,col=rainbow(length(x)),main="City pie chart")

#create the legend
legend("topright",labels,cex=0.8,fill=rainbow(length(x)))

#save the file
dev.off()

