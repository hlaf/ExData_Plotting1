
createPlot1 <- function(data) {
  hist(data$Global_active_power,
       col='red',
       xlab='Global Active Power (kilowatts)',
       main='Global Active Power')
}

createPlot2 <- function(data, ylab='Global Active Power (kilowatts)') {
  plot(data$Time, data$Global_active_power,
       xlab = '',
       ylab = ylab,
       type = 'n')
  lines(data$Time, data$Global_active_power)
}

createPlot3 <- function(data, bty = "o") {
  plot(data$Time, data$Sub_metering_1,
       xlab = '',
       ylab = 'Energy sub metering',
       type = 'n')
  lines(data$Time, data$Sub_metering_1, col='black')
  lines(data$Time, data$Sub_metering_2, col='red')
  lines(data$Time, data$Sub_metering_3, col='blue')
  legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
         col=c('black', 'red', 'blue'), lty=1, bty = bty)
}

createVoltagePlot <- function(data) {
  plot(data$Time, data$Voltage,
       xlab = 'datetime',
       ylab = 'Voltage',
       type = 'n')
  lines(data$Time, data$Voltage)
}

createReactivePowerPlot <- function(data) {
  plot(data$Time, data$Global_reactive_power,
       xlab = 'datetime',
       ylab = 'Global_reactive_power',
       type = 'n')
  lines(data$Time, data$Global_reactive_power)
}
