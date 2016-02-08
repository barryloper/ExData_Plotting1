source('read_data.R')

png(file="plot2.png", width=480, height=480)

par(mfrow=c(1,1))
plot(d$DateTime, d$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)" )

dev.off()
