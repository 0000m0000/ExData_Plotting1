#read data
source("readData.R")
print("Creating chart plot3.png")
#create file and plot chart
png(filename = "plot3.png", width = 480, height = 480, units = "px")

plot(subdata$DateTime, subdata$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(subdata$DateTime, subdata$Sub_metering_2, type="l", col="red")
lines(subdata$DateTime, subdata$Sub_metering_3, type="l", col="blue")
#add the legend
legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
print("plot3.png saved in the R working directory")
