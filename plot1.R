file <- "C:\\Users\\dewes\\OneDrive\\Desktop\\probabilitylabs\\household_power_consumption.txt"
data_1 <- read.table(file,header = TRUE,sep = ";",dec = ".",na.strings = "?")
#print(data)
df<- data_1[data_1$Date %in% c("1/2/2007","2/2/2007"),]
#print(df)
hist(df[, 3], col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")
