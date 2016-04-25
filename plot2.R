d<-read.csv("./data/household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")
dd <- subset(d, d$Date=="1/2/2007" | d$Date=="2/2/2007")
nd <- dmy_hms(paste(dd$Date,dd$Time))
n<-cbind(dd,nd)
png(file="plot2.png", width=480, height=480)
plot(n$nd,n$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()


