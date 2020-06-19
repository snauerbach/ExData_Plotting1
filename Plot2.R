##Plot 2 Code
data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
+                       nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(data1$Date), data1$Time)
data1$Datetime <- as.POSIXct(datetime)
with(data1, plot(Global_active_power~Datetime, ylab = "Global Active Power (Kilowatts)"))
dev.copy(png, file="plot2.png")
dev.off()