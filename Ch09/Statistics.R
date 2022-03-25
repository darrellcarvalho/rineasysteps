## This exercise demonstrates how to plot computed statistics, namely
## density, with ggplot2

# import the dataset
library(ggplot2)
setwd("./data")
frame <- readr::read_csv("DataSet-ProfSalaries.csv")

# create a ggplot using continous variables; compend density estimates
ggplot(frame, aes(salary)) +
  geom_density(aes(fill = rank))

# create a different object specifying point geometry and line of
# computed mean values
ggplot(frame, aes(yrs.since.phd, salary)) +
  geom_point(aes(color = rank)) +
  geom_smooth(aes(color = rank), fill = NA)

## create a box plot with point locations
ggplot(frame, aes(rank, salary)) +
  geom_jitter(aes(color = rank)) +
  geom_boxplot(aes(fill = rank), alpha = 0.5)
