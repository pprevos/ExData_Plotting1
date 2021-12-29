# Plot 4
# Execute etl.R to download and clean data

power <- read.csv("household_power_consumption_2007-02-01-02.csv")
power <- transform(power, 
                   datetime = as.POSIXct(paste(as.Date(Date, "%d/%m/%Y"), Time)))

png("plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2))

# Global Active Power
with(power, plot(datetime, Global_active_power, type = "l",
                 main = NA,
                 xlab = NA,
                 ylab = "Global Active Power"))

# Voltage
with(power, plot(datetime, Voltage, type = "l",
                 main = NA,
                 ylab = "Voltage"))

# Submetering
with(power, 
     plot(datetime, Sub_metering_1, type = "l",
     main = NA,
     xlab = NA,
     ylab = "Energy submetering"))
with(power, 
     lines(datetime, Sub_metering_2, type = "l", col = "red"))
with(power, 
     lines(datetime, Sub_metering_3, type = "l", col = "blue"))

# Global Reactive Power
with(power, plot(datetime, Global_reactive_power, type = "l",
                 main = NA,
                 ylab = "Global Reactive Power"))

par(mfrow = c(1, 1))

dev.off()
