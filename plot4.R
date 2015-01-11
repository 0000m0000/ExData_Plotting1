#read data
source("readData.R")
print("Creating chart plot4.png")
#create file
png(filename = "plot4.png", width = 480, height = 480, units = "px")
#prepare the view 2x2charts
par (mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))
#plot charts
with(subdata, {
        plot(DateTime, Global_active_power, xlab="", ylab="Global Active Power", type="l") #chart1
        plot(DateTime, Voltage, xlab="datetime", ylab="Voltage", type="l") #chart2
        plot(DateTime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")  #chart3
        lines(DateTime, Sub_metering_2, type="l", col="red")
        lines(DateTime, Sub_metering_3, type="l", col="blue")
        legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        plot(DateTime, Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l")  #chart4
})

dev.off()
print("plot4.png saved in the R working directory")
