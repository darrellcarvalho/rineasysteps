## This exercise demonstrates how to navigate/address data frames (indexing)

# Set up data frame
setwd("~/R/rineasysteps/data")
frame <- read.csv("DataSet-Browsers.csv")

# Output first three rows and columns
cat("\nHead...\n")
print(head(frame, n = 3))

# Call a single cell in the data frame
data <- frame[1,2]
cat("\n Row #1, Column # 2:", data, "\n")

# Address a cell by row index and column name
data <- frame[2, "PerCentage.Market.Share"]
cat("\nRow #2, Column #2:", data, "\n")

# Address a cell by column name and row index
data <- frame$PerCentage.Market.Share[3]
cat("\n Row #3, Column #2:", data, "\n")

# Address an entire column by name
frame$Web.Browser.Version <- as.factor(frame$Web.Browser.Version)
print(levels(frame$Web.Browser.Version))
