## This example demonstrates the importing of data sets

# Set the working directory and confirm its path
setwd("~/R/rineasysteps/data")
cat("Working Directory:", getwd(), "\n\n")

# Create a data frame from imported CSV
frame <- read.csv("DataSet-Browsers.csv")

# Output the data frame
print(frame)
