d<-read.csv("./data/household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")
dd <- subset(d, d$Date=="1/2/2007" | d$Date=="2/2/2007")
png(file="plot1.png", width=480, height=480)
hist(dd$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

