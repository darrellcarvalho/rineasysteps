## This exercise demonstrates how to make bar plots in ggplot2

# Create the data
nums <- sample(1:6, 30, replace = TRUE)
print(nums)
# Bring in ggplot2
library(ggplot2)

# create a quickplot() bar plot
qplot(nums, geom = "bar",
      color = I("Blue"), fill = I("LightBlue"),
      xlab = "Face", ylab = "Frequency",
      main = "30 Shakes of the Dice"
)

# append the tick requirements
qplot(nums, geom = "bar",
      color = I("Blue"), fill = I("LightBlue"),
      xlab = "Face", ylab = "Frequency",
      main = "30 Shakes of the Dice"
) + scale_x_continuous(breaks = 1:6,
                       labels = c("One", "Two", "Three", "Four", "Five", "Six"))
