source('plot_functions.R')
source('plot_io.R')

do.call(function() {
  par(mfrow=c(1,1))
  writeToPng('plot2.png', function() { createPlot2(readData()) }) 
}, list())
