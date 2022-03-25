## This exercise demonstrates manipulation of coordinates in ggplot objects

# import the data and ggplot2
library(ggplot2)
setwd("./data")
readr::read_csv("DataSet-ProfSalaries.csv")

# create a histogram and then add limits
ggplot(frame, aes(salary)) +
  geom_histogram(aes(fill = rank), color = "Black", bins = 20) +
  xlim(80000, 140000) +
  ylim(0, 40)

# modify the functions to specify a focus area instead of limits
ggplot(frame, aes(salary)) +
  geom_histogram(aes(fill = rank), color = "Black", bins = 20) +
  coord_cartesian(xlim = c(80000, 140000), ylim = c(0, 40))
