## This exercise demonstrates the merging of dataframes

# Bring in data
setwd("./data")
high.temps <- read.csv("DataSet-HighTemps.csv")
low.temps <- read.csv("DataSet-LowTemps.csv")

# create an output function
display <- function(frame){
  cat("\nAnnual Temperatures(°C)...\n")
  print(frame)
}

# Output the initial frames
display(high.temps)
display(low.temps)

# Merge by common columns
avg.temp <- merge(high.temps, low.temps, # typo in book - temps becomes temp
                  by.x = "State", by.y = "State.Code")
display(avg.temp)

# Remove duplicate column
avg.temp$Capital <- NULL

# Create new column containing temp average
avg.temp$Average <- (avg.temp$High + avg.temp$Low) / 2
display(avg.temp)
