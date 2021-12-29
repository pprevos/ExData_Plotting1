# Plot 3
# Execute etl.R to download and clean data

power <- read.csv("household_power_consumption_2007-02-01-02.csv")
power <- transform(power, 
                   datetime = as.POSIXct(paste(as.Date(Date, "%d/%m/%Y"), Time)))

png("plot3.png", width = 480, height = 480)
with(power, 
     plot(datetime, Sub_metering_1, type = "l",
     main = NA,
     xlab = NA,
     ylab = "Energy submetering"))
with(power, 
     lines(datetime, Sub_metering_2, type = "l", col = "red"))
with(power, 
     lines(datetime, Sub_metering_3, type = "l", col = "blue"))
legend(x = "topright", legend = names(power)[7:9], lwd = 2, col = c("black", "red", "blue"))
dev.off()
