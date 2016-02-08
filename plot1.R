source('read_data.R')

png(file="plot1.png", width=480, height=480)

par(mfrow=c(1,1))
hist(d$Global_active_power, xlab="Global Active Power (kilowatts)", col="red", main="Global Active Power")

dev.off()
