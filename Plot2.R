newdata$Datetime <- strptime(paste(newdata$Date, newdata$Time), "%d/%m/%Y %H:%M:%S")
plot(newdata$Datetime, newdata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
png("plot2.png", width=480, height=480)
dev.off()