## This exercise demonstrates the powerful switch function built into r

# first, create three variables

month <- "Jan"
year <- 2020
num <- 0

# add switch statement which evaluates first variable, and assigns new value to
# last variable

switch(month,
       "Jan" = {num <- 31},
       "Feb" = {if (year %% 4 == 0)
                num <- 29 else num <- 28},
       "Mar" = {num <- 31},
       "Apr" = {num <- 30},
       "May" = {num <- 31},
       "Jun" = {num <- 30},
       "Jul" = {num <- 31},
       "Aug" = {num <- 31},
       "Sep" = {num <- 30},
       "Oct" = {num <- 31},
       "Nov" = {num <- 30},
       "Dec" = {num <- 31}
       )

# output the number of days in the specified month
print(paste(month, year, "has", num, "days."))
