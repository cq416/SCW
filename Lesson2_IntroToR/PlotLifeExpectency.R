## THis is PlotlifeExpe.R
# read the data into R
myDatafull<- read.table("gapminder.txt",header = TRUE)

# select data from canada
Canada <- myDatafull[myDatafull$country=="Canada",]

#plot life exp

png("Canada.png") #opening a png device to write a plot to
plot(Canada$year,Canada$lifeExp,type = "l",col="blue")
dev.off()#Closes the device



