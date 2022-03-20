## This exercise demonstrates quick scatter plots made with qplot()

# create two equal length vectors
x <- 1:10
y <- x^2

# load ggplot2 (this is the second step in the exercise, but should be done
# at the beginning of the script)
library(ggplot2)

# call qplot() to plot x and y
qplot(x,y)

# edit the function to add a trend line
qplot(x, y, geom = c("point", "line"))

# edit the function again to change colors
qplot(x, y, geom = c("point","line"), color = I("Red"))
