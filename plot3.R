source('read_data.R')

png(file="plot3.png", width=480, height=480)

par(mfrow=c(1,1))

plot(d$DateTime, d$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(d$DateTime, d$Sub_metering_2, type="l", col="red")
lines(d$DateTime, d$Sub_metering_3, type="l", col="blue")

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=c(1,1,1), col=c("black", "red", "blue"))

dev.off()
