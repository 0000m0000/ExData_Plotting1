#read data
source("readData.R")
print("Creating chart plot2.png")
#create file and plot chart
png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(subdata$DateTime, subdata$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
print("plot2.png saved in the R working directory")
