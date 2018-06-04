source('plot_functions.R')
source('plot_io.R')

do.call(function() {
  par(mfrow=c(1,1))
  writeToPng('plot1.png', function() { createPlot1(readData()) })
}, list())
