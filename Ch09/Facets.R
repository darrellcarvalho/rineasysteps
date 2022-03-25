## This exercise demonstrates facetting plots in ggplot2

# import the data and ggplot2
library(ggplot2)
setwd("./data")
readr::read_csv("DataSet-ProfSalaries.csv")

# create a ggplot object with a histogram geometry and faceted rows
ggplot(frame, aes(salary)) +
  geom_histogram(aes(fill = rank), color = "Black", bins = 20) +
  facet_grid(rank~.) # ~. says facet grid with rank in rows and nothing
# faceted in columns

# edit code to allow maximum column height in each panel
ggplot(frame, aes(salary)) +
  geom_histogram(aes(fill = rank), color = "Black", bins = 20) +
  facet_grid(rank~., scales = "free")
