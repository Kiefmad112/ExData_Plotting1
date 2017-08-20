
#Get Dataset
setwd("C:/Users/Mad-X/Documents/Personal/Data Science/4 - Exploratory Data Analysis/Week1/Project")

#Load Data
hpc <- read.csv("household_power_consumption.txt", sep=";", header= TRUE, na.strings = "?")

#Filter Data by date range
hpc1 <- subset(hpc,hpc$Date=="1/2/2007" | hpc$Date =="2/2/2007")

#Set PNG plot
png(filename = "plot2.png", width = 480, height = 480)

#Bind Date & Time
hpc1<-cbind(hpc1, "DateTime" = as.POSIXct(paste(hpc1$Date, hpc1$Time)))

#Set Margins
par(mfcol=c(2,2))

#Plot Data
#1
plot(hpc1$Global_active_power ~ hpc1$DateTime, type="l", ylab = "Global Active Power", xlab = "")
#2
plot(hpc1$Sub_metering_1 ~ hpc1$DateTime, type = "l", ylab = "Energy Sub Metering", xlab = "")
lines(hpc1$Sub_metering_2 ~ hpc1$DateTime, col = "Red")
lines(hpc1$Sub_metering_3 ~ hpc1$DateTime, col = "Blue")
#3
plot(hpc1$Voltage ~ hpc1$DateTime, type="l", ylab = "Voltage", xlab = "DateTime")
#4
plot(hpc1$Global_reactive_power ~ hpc1$DateTime, type="l", ylab = "Global Reactive Power", xlab = "DateTime" )


#Turn off graphics device
dev.off()