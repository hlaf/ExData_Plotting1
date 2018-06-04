readData <- function(file_name = 'household_power_consumption.txt') {
  
  min_idx <- 66000
  max_rows <- 70000 - min_idx
  
  headers <- colnames(read.csv(file_name, sep=';', nrows = 1))
  
  data <- read.csv(file_name, sep=';',
                   header = FALSE, col.names = headers,
                   colClasses = c('Date'='character',
                                  'Time'='character',
                                  'Global_active_power'='numeric',
                                  'Global_reactive_power'='numeric',
                                  'Voltage'='numeric',
                                  'Global_intensity'='numeric',
                                  'Sub_metering_1'='numeric',
                                  'Sub_metering_2'='numeric',
                                  'Sub_metering_3'='numeric'
                   ),
                   na.strings = c('?'),
                   skip = min_idx,
                   nrows = max_rows)
  
  data[, 'Date'] <- as.Date(data$Date, format='%d/%m/%Y')
  data$Time <- as.POSIXlt(strptime(paste(data$Date, data$Time), format = '%Y-%m-%d %H:%M:%S'))
  
  from_date = '2007-02-01'
  to_date = '2007-02-02'
  data[data$Date >= from_date & data$Date <= to_date,]
}

writeToPng <- function(file_name, plot_fn, width=480, height=480) {
  png(filename = file_name, width=width, height=height)
  do.call(plot_fn, list())
  dev.off()
}
