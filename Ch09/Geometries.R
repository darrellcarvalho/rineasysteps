## This exercise demonstrates the use of different geometries geom()
## within ggplot2

# bring in ggplot2
library(ggplot2)

# bring in data
setwd("./data")
readr::read_csv("DataSet-ProfSalaries.csv")

# create a ggplot object and append a bar chart geom
ggplot(frame, aes(rank)) +
  geom_bar(fill = "Yellow",
           color = "Red")

# do the same with a continuous variable, and make a histogram
ggplot(frame, aes(x = salary)) +
  geom_histogram(fill = "Purple",
                 color = "White",
                 bins = 20)

# edit the code to specify the histogram with other aesthetics mapped to a discrete variable
ggplot(frame, aes(x = salary)) +
  geom_histogram(aes(fill = rank),
                 color = "Black",
                 bins = 20)
