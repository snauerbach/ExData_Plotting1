##Plot 1 Code
data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
+                       nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
head(data_full)
data1 <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
hist(data1$Global_active_power, col = "red", main = "Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency"
png("plot1.png")
dev.off()
