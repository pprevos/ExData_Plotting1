# Plot 1

power <- read.csv("household_power_consumption_2007-02-01-02.csv")

png("plot1.png", width = 480, height = 480)
hist(power$Global_active_power, breaks = 20, 
     col = "red", 
     main = "Global Active Power",
     xlab = "Global Active Power (kilowats)")
dev.off()
