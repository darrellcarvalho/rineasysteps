# Script name: Comment.R
# Created on:  December 7, 2022
# Author:      Darrell
# Purpose:     Echo user input
# Version:     1.0
# Execution:   Must be run as Source to await user input.


# Lesson focused on adding and the importance of comments
# no multiline comment syntax
# Ctrl + Shift + C to comment out multiple selected lines
# lesson advises header comments for shared scripts, added above.

# lesson advises comments to define code elements

# Request user input:
name <- readline("Please enter your name: ")

# Concantenate input and strings
# lesson uses paste instead of paste0
greeting <- paste("Welcome", name, "!")

# output concantenated string
print(greeting)
