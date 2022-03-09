## The purpose of this exercise is to demonstrate simple function creation in R

# declare a custom function
greet <- function() # assign function header
{
  print("Hello from R!") # function body; code to be executed
}

# call function
greet()

# declare custom function with required argument
f2c <- function(degrees)
{
  result <- ((degrees - 32) * (5/9)) # convert Fahrenheit to Celsius
  return(result)
}
cat("Body Temperature 98.6 °F =", f2c(98.6), "°C\n\n")
