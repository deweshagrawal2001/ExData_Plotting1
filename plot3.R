

file <- "C:\\Users\\dewes\\OneDrive\\Desktop\\probabilitylabs\\household_power_consumption.txt"
data_1 <- read.table(file,header = TRUE,sep = ";",dec = ".",na.strings = "?")
#print(data)
df<- data_1[data_1$Date %in% c("1/2/2007","2/2/2007"),]
#print(df)


Sys.setlocale("LC_TIME", "English")
date<- as.Date(df[, 1], format = "%d/%m/%Y")
time <- strptime(df[, 2], format = "%H:%M:%S")
time_axis <- as.POSIXct(paste(date, df[, 2]))

plot(time_axis, df[, 7], xlab = "", ylab = "Energy sub metering", type = "l")
lines(time_axis, df[, 8], col = "red")
lines(time_axis, df[, 9], col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black","red","blue"), lty = 1)
