install.packages("reshape2")
library(reshape2)
library(dplyr)
tips
tips %>% filter(size >= 3 & size <=5) %>%
  mutate(tiprate = tip/total_bill) %>%
  group_by(sex) %>%
  summarise(mean(tiprate))
