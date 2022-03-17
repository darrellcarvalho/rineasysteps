## This exercise demonstrates methods of filtering data frames
# Import the data
setwd("~/R/rineasysteps/data")
frame <- read.csv("DataSet-Browsers.csv")

# Perform a conditional test filter
top <- frame[frame$PerCentage.Market.Share > 10,]
cat("\nTop Browsers...\n")
print(top)

# Perform two conditional test filters
mid <- frame[frame$PerCentage.Market.Share > 3 &
               frame$PerCentage.Market.Share < 10,]
cat("\nPopular Browsers...\n")
print(mid)

# Perform a conditional test on characters
google <-
  frame[grep("Chrome", frame$Web.Browser.Version),]
cat("\nGoogle Browsers...\n")
print(google)
