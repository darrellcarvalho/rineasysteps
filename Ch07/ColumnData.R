## This exercise demonstrates how to modify data frame columns

# B ring in data frame
setwd("~/R/rineasysteps/data")
frame <- read.csv("DataSet-Browsers.csv")

# create a function to output title and first two lines of a data frame
display <- function(title){
  cat("\n", title, "...\n")
  print(head(frame, n = 2))
}

# output two rows and columns, re-name, and output changes
display("Original Columns")
colnames(frame) <- c("Web.Browser", "PerCentage")
display("Renamed Columns")

# copy and convert num column to char column
frame$Market.Share <-
  paste(as.character(frame$PerCentage), "%", sep = "")

# delete the num column
frame$PerCentage <- NULL
display("Switched Columns")
