#Check if prestored .rds file present
if (!file.exists('power.rds')) {
  #Dowmload file from link
  download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip', method='curl', destfile='raw-power-data.zip')
  
  #Unzip the file
  unzip('raw-power-data.zip')

  #Load the data
  power<- read.table("household_power_consumption.txt", sep=";",nrows= 2075260, header=TRUE, quote= "", strip.white=TRUE, stringsAsFactors = FALSE, na.strings= "?")
  
  #Subset data
  power<- subset(power, (power$Date == "1/2/2007" | power$Date== "2/2/2007"))

  #Combine date and time to DateTime
  power$DateTime <- strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M:%S")

  # Save .rds file for easy access
  saveRDS(power, file='power.rds')
} else {
  #Load the .rds file
  power <- readRDS('power.rds')
}

