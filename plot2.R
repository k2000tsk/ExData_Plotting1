
# Load file "household_power_consumption.txt"
# There are 2,075,259 Lines & 9 Columns
power_data<-read.table(file="household_power_consumption.txt",sep=";",
                       na.strings="?",header=TRUE)

# Subtract the data from 2007-02-01 ~ 2007-02-02
# There are 2,880 Lines $ 9 Columns
valid_power_data<-power_data[(power_data$Date=="1/2/2007")|(power_data$Date=="2/2/2007"),]


# add new column in last
# date+time is added in the last column
data_days$DateTime<-strptime(paste(valid_power_data[,1],valid_power_data[,2],
                             sep=""),format="%d/%m/%Y %H:%M:%S")

# draw a graph
png("plot2.png",width=480,height=480,units="px")

plot(data_days$DateTime,data_days$Global_active_power,type="l",
     xlab="",ylab="Global Active Power (kilowatts)")

dev.off()
