# Load file "household_power_consumption.txt"
# There are 2,075,259 Lines & 9 Columns
power_data<-read.table(file="household_power_consumption.txt",sep=";",
                       na.strings="?",header=TRUE)

# Subtract the data from 2007-02-01 ~ 2007-02-02
# There are 2,880 Lines $ 9 Columns
valid_power_data<-power_data[(power_data$Date=="1/2/2007")|(power_data$Date=="2/2/2007"),]

# draw a graph
png("plot1.png",width=480,height=480,units="px")
hist(valid_power_data$Global_active_power,
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",ylab="Frequency",
     col="red")

# Save the figure
dev.off()
