## This exercise demonstrates how to gradiate symbols in ggplot2

# Bring in the data
setwd("~/R/rineasysteps/data")
frame <- read.csv("DataSet-Autos.csv")

# Bring in ggplot2
library(ggplot2)

# quickplot mpg and weight, setting size to weigh by mpg
qplot(data = frame, mpg, wt, size = mpg, color = I("Green"))
