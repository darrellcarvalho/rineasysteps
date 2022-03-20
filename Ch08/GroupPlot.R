## This exercise demonstrates simple symbol grouping in qplot()

# Bring in the data
setwd("~/R/rineasysteps/data")
frame <- read.csv("DataSet-Autos.csv")

# Bring in ggplot2
library(ggplot2)

# encode variable values
Cylinders <- factor(frame$cyl)

# plot fuel economy and weight, differentiated by engine type
qplot(data = frame, mpg, wt, size = I(5), shape = Cylinders, color = Cylinders)
