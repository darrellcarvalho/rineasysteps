## This exercise demonstrates some of the basic functionality of ggplot2's
## theme() function

# import the data and ggplot2
library(ggplot2)
setwd("./data")
readr::read_csv("DataSet-ProfSalaries.csv")

# create a ggplot object with jittered points and box plot, and a theme
ggplot(frame, aes(rank, salary)) +
  geom_jitter(aes(color = rank)) +
  geom_boxplot(aes(color = rank), alpha = 0.5) +
  theme(
    axis.title.x = element_text(size = 15, color = "Red"),
    axis.title.y = element_text(size = 15, color = "Blue"),
    legend.title = element_text(size = 15),
    axis.text.x = element_text(size = 15, color = "Red"),
    axis.text.y = element_text(size = 15, color = "Blue"),
    legend.text = element_text(size = 15),
    legend.justification = c(0, 1),
    legend.position = c(0.02, 0.97)
  )
