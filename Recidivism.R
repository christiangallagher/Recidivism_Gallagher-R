library(tidyverse)
library(ggplot2)
library(dbplyr)
df <- read.csv(file = '~/Documents/NIJ_s_Recidivism_Challenge_Full_Dataset.csv')
data_pop <- tibble(
  Race = c("BLACK", "WHITE"), 
  N =  331449281 *c(.124, .616))

df %>%
  group_by(Gender, Race, Age_at_Release) %>%
  summarize(n = n()) %>%
  ungroup()

(data_counts <- df %>%
    count(Gender, Race, Age_at_Release))

l <- data_counts %>%
  left_join(data_pop, by = "Race")

l %>%
  ggplot(aes(x = Age_at_Release, y = (n/N)*100, color = Race)) +
  geom_line(aes(group = Race)) + facet_grid(cols = vars(Gender))
                                            

