# Plot 2

power <- read.csv("household_power_consumption_2007-02-01-02.csv")
power <- transform(power, 
                   datetime = as.POSIXct(paste(as.Date(Date, "%d/%m/%Y"), Time)))

png("plot2.png", width = 480, height = 480)
with(power, plot(datetime, Global_active_power, type = "l",
     main = NA,
     xlab = NA,
     ylab = "Global Active Power (kilowats)"))
dev.off()
