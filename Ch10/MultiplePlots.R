# ## This exercise demonstrates a complete analysis
# ## Exercise 1
# # import ggplot2
# library(ggplot2)
#
# # bring in the data
# setwd("./Data")
# frame <- readr::read_csv("DataSet-Hurricanes.csv") # using readr
#
# # describe the structure of the dataset
# str(frame)
#
# # check out the data head
# head(frame, n = 8)
#
# ggplot(data = frame,
#        aes(x = Year,
#            y = DamageMillions,
#            color = WindMPH)) + geom_point()
#
# ## Exercise 2 - retaining objects
# # retain plots by storing the ggplot call in a variable
# damage_plot <- ggplot(data = frame,
#                       aes( x = Year,
#                            y = DamageMillions,
#                            size = DamageMillions,
#                            color = WindMPH))
#
# # the retained plot is a reusable object that can be modified with
# # the grammar of graphics
# damage_plot + geom_point()
#
# # draw lines between points
# damage_plot + geom_point() + geom_line(size = 0.5)
#
# ## Exercise 3 - Overriding labels
# # set initial labels
# damage_plot + ggtitle("US Atlantic Hurricanes") +
#   xlab("Event Year") +
#   ylab("Damage $ Millions") +
#   geom_point() +
#   geom_line(size = 0.5)
#
# ## Modify the labels and store them in an object
# label_object <- labs(title = "US Atlantic Hurricanes",
#                      subtitle = "1950-2012",
#                      x = "Event Year",
#                      y = "Damage $ Millions",
#                      caption = "Source: Wikipedia")
#
# # plot it
# damage_plot + label_object +
#   geom_point() +
#   geom_line(size = 0.5)
#
# ## Exercise 4 - Adding a theme
# # The following install a font package and import them into R
# install.packages("extrafont", dependencies = TRUE)
# library(extrafont)
# font_import(prompt = FALSE)
# loadfonts(device = "win")
# length(windowsFonts())
#
# # Assign all specified theme values to a name
# theme_object <- theme(
#   plot.title = element_text(color = "Red", family = "Wide Latin"),
#   plot.subtitle = element_text(color = "Red"),
#   axis.title.x = element_text(color = "Red", face = "bold"),
#   axis.title.y = element_text(color = "Red", face = "bold"),
#   plot.caption = element_text(color = "Black", face = "italic"),
#   legend.background = element_rect(color = "Gray"))
#
# # apply the theme object
# damage_plot + label_object +
#   geom_point() + geom_line(size = 0.5) +
#   theme_object


## Exercise 5 - restoring the project and continuing on
library(ggplot2)
library(extrafont)
setwd("./Data")
frame <- readr::read_csv("DataSet-Hurricanes.csv") # using readr

damage_plot <- ggplot(data = frame,
                      aes( x = Year,
                           y = DamageMillions,
                           size = DamageMillions,
                           color = WindMPH))

label_object <- labs(title = "US Atlantic Hurricanes",
                     subtitle = "1950-2012",
                     x = "Event Year",
                     y = "Damage $ Millions",
                     caption = "Source: Wikipedia")

theme_object <- theme(
  plot.title = element_text(color = "Red", family = "Wide Latin"),
  plot.subtitle = element_text(color = "Red"),
  axis.title.x = element_text(color = "Red", face = "bold"),
  axis.title.y = element_text(color = "Red", face = "bold"),
  plot.caption = element_text(color = "Black", face = "italic"),
  legend.background = element_rect(color = "Gray"))

damage_plot + label_object +
  geom_point() + geom_line(size = 0.5) +
  theme_object

## Exercise 6 - comparing boxes
gender_plot <- ggplot(data = frame,
                      aes(x = Sex, y = Deaths, color = Sex),
                      size = 3)

# append labels, geometries, coordinate limits, and theme
gender_plot +
  label_object +
  xlab("Gender") +
  ylab("Number of Fatalities") +
  geom_jitter() +
  geom_boxplot(alpha = 0.5) +
  ylim(10, 200) +
  theme_object

## Exercise 7 - identifying extremes
# Create fatal_plot object
fatal_plot <- ggplot(data = frame,
                     aes(x = Year, y = Deaths))

# assemble visualization
fatal_plot +
  label_object +
  ylab("Number of Fatalities") +
  geom_point(aes(color = WindMPH)) +
  geom_text(label = frame$Name) +
  geom_smooth() +
  theme_object

# assemble visualization with modified labelling of extreme values
fatal_plot +
  label_object +
  ylab("Number of Fatalities") +
  geom_point(aes(color = WindMPH)) +
  geom_text(
    aes(label = ifelse(Deaths > 180,as.character(Name), ""),hjust = 1.1)) +
  geom_smooth() +
  theme_object

## Exercise 8 - Limiting focus
# create windspeed plot
windspeed_plot <- ggplot(data = frame, aes(x = Year, y = Deaths))

windspeed_plot +
  label_object +
  ylab("Number of Fatalities") +
  geom_point(aes(color = WindMPH), size = 10, shape = 17) +
  xlim(1980, 2000) +
  ylim(0, 65) +
  theme_object

## Exercise 9 - Zooming focus
# create strike_plot
strike_plot <- ggplot(data = frame, aes(x = Year, fill = Sex))

# append labels, geometry, coordinates and theme to the object
strike_plot +
  label_object +
  ylab("Number of Strike") +
  geom_bar() +
  coord_cartesian(xlim = c(1980, 2000)) +
  theme_object

## Exercise 10 - Displaying facets
# create a subset for a single state
frame.tx <- frame[grep("TX", frame$AffectedStates),]

# create texas_plot
texas_plot <- ggplot(data = frame.tx,
                     aes(x = Year, y = DamageMillions,
                         size = Deaths, color = AffectedStates))

# append labels, geometry, a facet grid, and a theme
texas_plot +
  label_object +
  geom_point(aes(size = Deaths)) +
  facet_grid(AffectedStates~.) +
  theme_object

# create a second subset for a different state
frame.fl <- frame[grep("FL", frame$AffectedStates),]

# create the plot object
florida_plot <- ggplot(data = frame.fl, aes(x = Year))

# append labels, geometry, and themes to the object
florida_plot +
  label_object +
  ylab("Number of Strikes in Florida") +
  geom_histogram(aes(fill = AffectedStates), color = "Black", bins = 20) +
  theme_object

## Exercise 11 - Exporting Graphics
# This exercise demonstrates using the GUI of RStudio and so has no code;
# for code-based implementations, read documentation on appropriate device
# functions such as png(), pdf(), or ggplot2 functions such as ggsave()


## Exercise 12 - Presenting analyses
# This exercise demonstrates how to import images into Powerpoint, and so does
# not immediately demonstrate necessary r skills or code.
