## This exercise focuses on controlling environment objects.
# Create a list and two variables
iso.codes <- list("United Kingdom" = "UK",
                  "United States of America" = "US",
                  "France" = "FR",
                  "Germany" = "DE")
iso.japan <- "JP"
iso.china <- "CN"

# list the current environment objects
ls()

# remove the two variables
rm(iso.japan, iso.china)
ls()
