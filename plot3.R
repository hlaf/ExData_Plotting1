source('plot_functions.R')
source('plot_io.R')

do.call(function() {
  par(mfrow=c(1,1))
  writeToPng('plot3.png', function() { createPlot3(readData()) })
}, list())