household_power_consumption <- read.csv("~/R/R_lectures/Data_cousera/exploratory/household_power_consumption.txt", sep=";")
household_power_consumption$Timestamp <- strptime(household_power_consumption$Date, format = "%d/%m/%Y")

household_power_consumption$Dates <- as.Date(household_power_consumption$Timestamp, "%m/%d/%Y")

newdata <- subset(household_power_consumption, Dates=="2007-02-01"|Dates=="2007-02-02")

newdata$Global_active_power <-as.numeric(as.character(newdata$Global_active_power))

hist(newdata$Global_active_power, breaks=12, col="red", main="Global active power",xlab="Global active power(kilowatts)")
png("plot1.png", width=480, height=480)
dev.off()
