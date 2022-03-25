## The purpose of this exercise is to demonstrate how to examine data

# bring in data frame
setwd("./data")
frame <- read.csv("DataSet-Browsers.csv")

# display dimensions of data (# of rows, # of cols)
cat("Rows:", nrow(frame), "\tColumns:", ncol(frame))

# output first and last three rows and columns
cat("\nHead...\n")
print(head(frame, n = 3))
cat("\nTail...\n")
print(tail(frame, n = 3))

# Display structure and summary of frame
cat("\nStructure...\n")
print(str(frame))
cat("\nSummary...\n")
print(summary(frame))
