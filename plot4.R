source('read_data.R')

png(file="plot4.png", width=480, height=480)

par(mfrow=c(2,2), mar=c(5,5,1,1))
#1,1
plot(d$DateTime, d$Global_active_power, type="l", xlab="", ylab="Global Active Power" )
#1,2
with(d, plot(DateTime, Voltage, type="l", xlab="Datetime", ylab="Voltage"))

#1,3
plot(d$DateTime, d$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(d$DateTime, d$Sub_metering_2, type="l", col="red")
lines(d$DateTime, d$Sub_metering_3, type="l", col="blue")

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=c(1,1,1), col=c("black", "red", "blue"), box.lwd=0)
#1,4
with(d, plot(DateTime, type="l", Global_reactive_power))

dev.off()
