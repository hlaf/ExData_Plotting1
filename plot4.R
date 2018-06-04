source('plot_functions.R')
source('plot_io.R')

do.call(function() {
  
  feb_data <- readData()
  
  writeToPng('plot4.png', plot_fn = function() {
    par(mfrow = c(2, 2))
    createPlot2(feb_data, ylab = 'Global Active Power')
    createVoltagePlot(feb_data)
    createPlot3(feb_data, bty='n')
    createReactivePowerPlot(feb_data)
  })
  
}, list())