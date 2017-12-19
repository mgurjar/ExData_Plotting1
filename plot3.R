#to run the code please have "household_power_consumption.txt" in the working directory. 
#image will be produced in working directory
x<-fread("household_power_consumption.txt",na.strings="?")
dat=subset(x,Date=="1/2/2007"|Date=="2/2/2007")
rm(x)
z<-strptime(paste(dat$Date,dat$Time), format="%d/ %m/ %Y %H:%M:%S")
png(filename="plot3.png")
plot(z,dat$Sub_metering_1, type ="l", col="black",ylab="Energy sub metering")
lines(z,dat$Sub_metering_2, type ="l", col="red")
lines(z,dat$Sub_metering_3, type ="l", col="blue")
legend(x="topright",y=0.92,legend=c("sub_metering_1","sub_metering_2","sub_metering_3"),col=c("black", "red","blue"),lty=1:2)
dev.off()
