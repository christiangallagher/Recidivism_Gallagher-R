library(tidyverse)
library(ggplot2)
library(dbplyr)
df <- read.csv(file = '~/Documents/NIJ_s_Recidivism_Challenge_Full_Dataset.csv')
df$Gender = ifelse(df$Gender == "F", "Female", ifelse(df$Gender == "M", "Male", NA))
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
  ggplot(aes(x = Age_at_Release, y = (n/N)*100, color = Race)) + geom_point() +
  geom_line(aes(group = Race)) + facet_grid(cols = vars(Gender)) +
  labs(x = "Age at Release", y = "Proportional Population", 
       title = "2021 Inmates Showing Age of Release Grouped by Race" ) + 
  theme_bw() + theme(plot.title = element_text(hjust = 0.5), 
                     axis.text.x = element_text(angle = 90))
                                            
df %>%
  group_by(Gender, Race, Education_Level, Recidivism_Within_3years) %>%
  summarize(n = n()) %>%
  ungroup()

(data_counts <- df %>%
    count(Gender, Race, Education_Level, Recidivism_Within_3years))

m <- data_counts %>%
  left_join(data_pop, by = "Race")

m %>%
  ggplot(aes(Recidivism_Within_3years, Education_Level, fill = (n/N)*100)) +
  geom_tile(color = "white") + facet_grid(cols = vars(Race)) +
  scale_fill_gradient(low = "blue", high = "cyan") + 
  labs(x = "Recidivism Within 3 Years",y = "Education Level",
       title = "2021 Inmate Recidivism Rate By Education Level", fill = "Prop. Population") + 
  theme(plot.title = element_text(hjust = 0.5))


df %>%
  group_by(Gender, Race, Education_Level, Recidivism_Within_3years, Prison_Years) %>%
  summarize(n = n()) %>%
  ungroup()

(data_counts <- df %>%
    count(Gender, Race, Education_Level, Recidivism_Within_3years, Prison_Years))

k <- data_counts %>%
  left_join(data_pop, by = "Race")
