## This script demonstrates the creation of Box and Violin Plots with qplot()

# bring in the data
setwd("~/R/rineasysteps/data")
frame <- read.csv("DataSet-Experiment.csv")

# output the first three rows
head(frame, n = 3)

# import the package
library(ggplot2)

# call the qplot() to make a box plot
qplot(Group, Weight, data = frame,
      geom = c("boxplot", "jitter"),
      fill = Group, main = "Experimental Results")

# edit the call to make a violin plot
qplot(Group, Weight, data = frame,
      geom = "violin", trim = FALSE,
      fill = Group, main = "Experimental Results")
