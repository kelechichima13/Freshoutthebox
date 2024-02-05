##install.packages("tidyverse")
##library(tidyverse)
##install.packages(
#c("arrow", "babynames", "curl", "duckdb", "gapminder", 
# "ggrepel", "ggridges", "ggthemes", "hexbin", "janitor", "Lahman", 
#  "leaflet", "maps", "nycflights13", "openxlsx", "palmerpenguins", 
#   "repurrrsive", "tidymodels", "writexl")
#)
##install.packages("ggrepel")

library(palmerpenguins)
library(ggthemes)
view(penguins)
?penguins

#creating a plot showing the relationship between flipper length and body mass by penguin species

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(mapping = aes(color = species, shape = species), na.rm = TRUE) +
  geom_smooth(method = "lm")+
  labs(
    title = "Body mass and flipper length",
    subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
    x = "Flipper length (mm)", y = "Body mass (g)",
    color = "Species", shape = "Species"
  ) +
  scale_color_colorblind()

#Excercises
str(penguins)

##ex - 3 checking bill length vs bill depth
ggplot(
  data = penguins,
  mapping = aes(x = bill_length_mm, y = bill_depth_mm)
) +
  geom_point(mapping = aes(color = species, shape = species)) +
  geom_smooth(method = "lm", mapping = aes(color = species, shape = species))+
  labs(
    title = "Bill length and bill depth",
    subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
    x = "Bill length (mm)", y = "Bill depth (mm)",
    color = "Species", shape = "Species"
  ) +
  scale_color_colorblind()

##ex 4 - checking species vs bill depth

ggplot(
  data = penguins,
  mapping = aes(x = species, y = bill_depth_mm)
) +
  geom_boxplot()+
  labs(
    title = "Species and bill depth",
    caption = "Data come from the palmerpenguins package.",
    x = "species", y = "Bill depth (mm)",
    color = "Species", shape = "Species"
  ) +
  scale_color_colorblind()

## ex 6 - using na.rm

?geom_point

##ex - 8
ggplot(
  data = penguins,
  aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(aes(color = bill_depth_mm)) +
  geom_smooth() +
  labs(
    title = "Body mass and flipper length",
    subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
    x = "Flipper length (mm)", y = "Body mass (g)",
  )

##ex 9
ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g, color = island)
) +
  geom_point() +
  geom_smooth(se = FALSE)

?geom_point
