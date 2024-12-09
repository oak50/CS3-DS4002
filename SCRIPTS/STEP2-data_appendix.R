
# Create graphs for data appendix based on "celeb_image_data.csv"

library(ggplot2)
library(dplyr)
library(tidyverse)

celeb <- read.csv("celeb_image_data.csv")

# Summary Statistics
summary(celeb)

# brightness
sd(celeb$brightness)

ggplot(celeb, aes(x = brightness)) +
  geom_histogram(bins = 20, fill = "grey", color="black") + 
  labs(title = "Histogram of Brightness Variable", 
       x = "Brightness", 
       y = "Frequency") + theme_minimal() + 
  theme(plot.title = element_text(hjust = 0.5)) 

# resolution
# first separate resolution into two columns, width and height
celeb <- celeb %>% 
  separate(resolution, into = c("width", "height"), sep = "x") %>%
  mutate(across(c(width, height), as.numeric))

# width
sd(celeb$width)
ggplot(celeb, aes(x = width)) +
  geom_histogram(bins = 20, fill = "grey", color="black") + 
  labs(title = "Histogram of Width in Resolution Variable", 
       x = "Width", 
       y = "Frequency") + theme_minimal() + 
  theme(plot.title = element_text(hjust = 0.5)) 

# height
sd(celeb$height)
ggplot(celeb, aes(x = height)) +
  geom_histogram(bins = 20, fill = "grey", color="black") + 
  labs(title = "Histogram of Height in Resolution Variable", 
       x = "Height", 
       y = "Frequency") + theme_minimal() + 
  theme(plot.title = element_text(hjust = 0.5)) 

# colorfulness
sd(celeb$colorfulness)

ggplot(celeb, aes(x = colorfulness)) +
  geom_histogram(bins = 20, fill = "grey", color="black") + 
  labs(title = "Histogram of Colorfulness Variable", 
       x = "Colorfulness", 
       y = "Frequency") + theme_minimal() + 
  theme(plot.title = element_text(hjust = 0.5)) 

