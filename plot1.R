#read data
source("readData.R")
print("Creating chart plot1.png")
#create file and plot histogram
png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(subdata$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()
print("plot1.png saved in the R working directory")