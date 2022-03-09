## The purpose of this exercise is to demonstrate the creation of optional
## arguments with default values if ommitted in custom functions

# design a count-down function named launch() that defaults to 5
launch <- function(num = 5)
{
  cat(num, "- ")
  num <- num - 1
  if (num < 0) {invisible(NULL)} else {launch(num)}
}


# design a graph function that passes arbitrary no. of arguments to further
# functions using ...
graph <- function(x, y, ...)
{
  plot(x, y, col = "Red", type = "o", ...)
}

# call both functions
launch()
graph(1:20, rnorm(20), xlab = "X Axis", ylab = "Y Axis")
