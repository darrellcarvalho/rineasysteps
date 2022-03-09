## This exercise demonstrates built-in functions for string manipulation

# assign a string to variable string
string <- "R for Data Analysis"

# display a substring extracted from string variable
cat("Substring:\t", substr(string,7,10), "\n")

# display string after modification using pattern substitution
cat("Replaced:\t", sub("sis", "tics", string), "\n\n")

# print substrings split at spaces
print(paste("Split: ", strsplit(string, " ")))

# force string to UPPER
cat("\nUppercase:\t", toupper(string),"\n\n")

# assign current date and time to a variable; print components using
# string formatting
now <- Sys.time()
print(format(now, format = "Date: %A, %B %e"))
print(format(now, format = "Time: %H:%M"))
