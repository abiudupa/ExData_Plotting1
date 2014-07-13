#Loading the data  
source("load.R")

#Opening png device
png(filename = "plot1.png", width = 480, height = 480, units = "px")

#Plotting
hist(power$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)",ylab="frequency" ,col="red")

#Closing device
dev.off()