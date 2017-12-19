#to run the code please have "household_power_consumption.txt" in the working directory. 
#image will be produced in working directory
x<-fread("household_power_consumption.txt",na.strings="?")
dat=subset(x,Date=="1/2/2007"|Date=="2/2/2007")
rm(x)
z<-strptime(paste(dat$Date,dat$Time), format="%d/ %m/ %Y %H:%M:%S")
png(filename="plot2.png",bg="transparent")
plot(z,dat$Global_active_power, type ="lines", col="black",ylab="Global Active Power (kilowatts)")
dev.off()



