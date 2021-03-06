source("read_data.R")

png(filename = "plot4.png", width = 480, height = 480,units = "px")

par(mfrow = c(2, 2))
plot(data$Datetime, data$Global_active_power, type = "l",xlab = "", ylab = "Global Active Power")

plot(data$Datetime, data$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

plot(data$Datetime, data$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(data$Datetime, data$Sub_metering_2, col = "red")
lines(data$Datetime, data$Sub_metering_3, col = "blue")

legend("topright", bty = "n", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)

plot(data$Datetime, data$Global_reactive_power, type = "l", col = "black", xlab = "datetime", ylab = "Global_reactive_power")

dev.off()
