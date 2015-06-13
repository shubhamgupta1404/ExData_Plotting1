file <- "household_power_consumption.txt"
full_data <- read.table(file, header = T, sep = ";", colClasses = c("character","character",rep("numeric",7)), na = "?")
full_data$Date <- as.Date(full_data$Date,format="%d/%m/%Y")

data <- subset(full_data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(full_data)

datetime <- paste(as.Date(data$Date),data$Time)
data$Datetime <- as.POSIXct(datetime)
