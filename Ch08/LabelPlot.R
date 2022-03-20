## This exercise demonstrates how to add text/labels via qplot()

# Bring in the data
setwd("~/R/rineasysteps/data")
frame <- read.csv("DataSet-Autos.csv")

# Bring in ggplot2
library(ggplot2)

# encode the variable factors
Cylinders <- factor(frame$cyl)

qplot(mpg, wt, data = frame,
      geom = c("point", "smooth"),
      color = Cylinders,
      xlab = "Miles Per Gallon(US)",
      ylab = "Weight (1000 lbs)",
      main = "Automobile Comparison")

# edit the call to add point labels and extend axis limits
qplot(mpg, wt, data = frame,
      geom = c("point", "smooth"),
      color = Cylinders,
      xlab = "Miles Per Gallon(US)",
      ylab = "Weight (1000 lbs)",
      main = "Automobile Comparison",
      label = 'model',
      xlim = c(8, 35),
      ylim = c(0, 6))
