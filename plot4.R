#Loading the data
source("load.R")

#Opening png device
png("plot4.png", width = 480, height = 480)

#Column wised plotting
par(mfcol=c(2,2))

#First plot
plot(power$DateTime, power$Global_active_power, type= "l", xlab="", ylab= "Global Active Power")

#Second plot
plot(power$DateTime, power$Sub_metering_1, type="l", xlab="", ylab= "Energy sub metering")
lines(power$DateTime, power$Sub_metering_2, type="l", col="red")
lines(power$DateTime, power$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, bty="n", col=c("black", "red", "blue"))

#Third plot
plot(power$DateTime, power$Voltage, type="l", xlab="datetime", ylab="Voltage") 

#Fourth plot
plot(power$DateTime, power$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power") 

#Closing device
dev.off()