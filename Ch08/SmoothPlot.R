## This exercise demonstrates how to plot smoother trend lines for highly
## variable scatter plots

## load the required data
setwd("~/R/rineasysteps/data")
frame <- read.csv("DataSet-Autos.csv")

# output the end rows of the data frame
print(tail(frame))

# load the ggplot2 package (again, this should be at the beginning of the script
# but the book waits until step 4)
library(ggplot2)

# call a quick plot of fuel economy against car weight
qplot(data = frame, mpg, wt, geom = c("point", "line")) # messy plot

# edit function to give a smooth line
qplot(data = frame, mpg, wt, geom = c("point", "smooth"))

