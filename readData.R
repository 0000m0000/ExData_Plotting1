if (!file.exists("household_power_consumption.txt")) {
        print("downloading data")
        fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        download.file(fileUrl, destfile = "exdata_data_household_power_consumption.zip", method = "curl")
        unzip("exdata_data_household_power_consumption.zip")
}
print("Loading existing data")
data<- read.table("./household_power_consumption.txt", header=T, sep=';', na.strings="?", colClasses=c(rep('character', 2),rep('numeric', 7)))
print("Loading completed")
subdata <- data[(data$Date == "1/2/2007") | (data$Date == "2/2/2007"),]
subdata$DateTime <- strptime(paste(subdata$Date, subdata$Time), "%d/%m/%Y %H:%M:%S")