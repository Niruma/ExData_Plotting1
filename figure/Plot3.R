newdata$Sub_metering_1 <-as.numeric(as.character(newdata$Sub_metering_1))
newdata$Sub_metering_2 <-as.numeric(as.character(newdata$Sub_metering_2))
newdata$Sub_metering_3 <-as.numeric(as.character(newdata$Sub_metering_3))
newdata$Sub_metering_1[newdata$Sub_metering_1=="?"] <- NA
newdata$Sub_metering_2[newdata$Sub_metering_2=="?"] <- NA
newdata$Sub_metering_3[newdata$Sub_metering_3=="?"] <- NA
newdata1 <- na.omit(newdata)
head(newdata1)
plot(newdata1$Datetime, newdata1$Sub_metering_1, col="black", type="l",xlab = "", ylab = "Energy sub metering")
points(newdata1$Datetime, newdata1$Sub_metering_2, type="l", pch=22, lty=2, col="red",xlab = "", ylab = "Energy sub metering")
points(newdata1$Datetime, newdata1$Sub_metering_3, type="l", pch=22, lty=2, col="blue", xlab = "", ylab = "Energy sub metering")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", 
                                                                    "Sub_metering_2", "Sub_metering_3"))
png("plot3.png", width=480, height=480)
dev.off()