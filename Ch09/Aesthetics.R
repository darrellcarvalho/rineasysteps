## This exercise demonstrates the base functionality of ggplot2, namely
## aesthetics - typified by the aes() function call within ggplot()

# import ggplot2
library(ggplot2)

# bring in the data
setwd("~/Data")
frame <- readr::read_csv("DataSet-ProfSalaries.csv") # using readr
# instead of base as used in book, because it brings in tibble

# view the beginning of the frame
head(frame, n = 10)

# create a ggplot object (note no plot, only grid and axes)
ggplot(
  data = frame,
  aes(x = yrs.since.phd, y = salary)) +
  geom_point()
