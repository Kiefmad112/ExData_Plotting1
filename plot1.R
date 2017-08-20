
#Set working Directory
setwd("C:/Users/kmaddex/Documents/Personal/DataScience")

#Read Dataset
hpc <- read.csv("household_power_consumption.txt", sep=";", header= TRUE)

#Filter Data
hpc <- subset(hpc,hpc$Date=="2/1/2007" | hpc$Date =="2/2/2007")

#Set PNG Plot
png(filename = "plot1.png", width = 480, height = 480)

#Create Weekday column
hpc$weekday <- weekday(as.Date(hpc$Date))

#Plot histograph
hist(as.numeric(as.character(hpc$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

#Turn off graphics device
dev.off()