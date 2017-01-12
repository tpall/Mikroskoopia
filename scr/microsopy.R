library(dplyr)
library(readr)
d <- read_csv("data/use_data.csv")
d
d %>% 
  mutate(Time = End-Start) %>%
  group_by(Group, Microscope) %>% 
  summarise(Time = sum(Time))
