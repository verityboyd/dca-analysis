install.packages("tidyverse")
library(tidyverse)
install.packages("janitor")
library(janitor)
wait_times <- read.csv("disney_wait_times.csv")
head(wait_times)
colnames(wait_times)
clean_wait_times <- clean_names(wait_times)
colnames(clean_wait_times)
head(clean_wait_times)
print(unique(clean_wait_times$ride))
str(clean_wait_times)
clean_wait_times <- clean_wait_times %>%
  mutate(local_time = with_tz(ymd_hms(local_time, tz = "UTC"), "America/Los_Angeles"))



