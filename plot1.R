#to run the code please have "household_power_consumption.txt" in the working directory. 
#image will be produced in working directory
x<-fread("household_power_consumption.txt",na.strings="?")
dat=subset(x,Date=="1/2/2007"|Date=="2/2/2007")
rm(x)
png(filename="plot1.png",bg="transparent")
hist(dat$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()


