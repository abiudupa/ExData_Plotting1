#Loading the data
source("load.R")

#Opening png device
png(filename = "plot3.png", width = 480, height = 480, units = "px")

#Plotting
plot(power$DateTime, power$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(power$DateTime, power$Sub_metering_2, type="l", col="red")
lines(power$DateTime, power$Sub_metering_3, type="l", col="blue")
legend("topright",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=1, col=c("black","blue","red"), legend=cols)

#Closing device
dev.off()