## Exploratory Data Analysis
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
filename <- "household_power_consumption.zip"

if(!file.exists(filename)) {
    download.file(url, destfile = filename)
    unzip(filename)
}

rawdata <- read.delim("household_power_consumption.txt", sep = ";")
lines <- which(rawdata$Date == "1/2/2007" | rawdata$Date == "2/2/2007")

power <- rawdata[lines, ]

str(power)

write.csv(power, "household_power_consumption_2007-02-01-02.csv", row.names = FALSE)

rm(rawdata)

# Create plots

source("plot1.R")

source("plot2.R")

source("plot3.R")

source("plot4.R")