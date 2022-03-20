## This exercise demonstrates the creation of a histogram using qplot()

# create the raw data
Sex <- rep(c("Female", "Male"), each = 500)
height <- c(rnorm(500,65), rnorm(500,69))

# combine them into a data frame
frame <- data.frame(Sex, height)

# output first and last free rows
head(frame, n = 3)
tail(frame, n = 3)

# bring in ggplot2
library(ggplot2)

# use qplot() to plot a histogram in 40 bins, colored by gender
qplot(height, data = frame, geom = "histogram", fill = Sex, bins = 40,
      ylab = "Frequency", xlab = "Height in Inches",
      main = "Average Adult Height(USA)")

# Edit the code to produce a density plot
qplot(height, data = frame, geom = "density", color = Sex,
      bins = 40, size = I(2), linetype = Sex,
      ylab = "Density", xlab = "Height in Inches",
      main = "Average Adult Height(USA)")
