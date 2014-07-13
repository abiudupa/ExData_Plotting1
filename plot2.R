#Loading the data
source("load.R")

#Opening png device
png(filename = "plot2.png", width = 480, height = 480, units = "px")

#Plotting
plot(power$DateTime, power$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

#Closing device
dev.off()