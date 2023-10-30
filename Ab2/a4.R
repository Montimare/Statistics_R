library(tidyverse)
library(dplyr)

no <- 30
exercise.results <- tibble(
  stud.id = 1:no,
  group = sample(x=c("A","B","C"), size=no, replace = TRUE),
  ex1 = sample(x=1:10, size=no, replace = TRUE),
  ex2= sample(x=1:10, size=no, replace = TRUE),
  ex3 = sample(x=1:10, size=no, replace = TRUE),
  ex4 = sample(x=1:10, size=no, replace = TRUE),
  ex5 = sample(x=1:10, size=no, replace = TRUE)
)

a = summarise(
  group_by(exercise.results, group),
  n = n()
  )

a2 = exercise.results %>%
group_by(group) %>%
  summarise(n = n())
#n() counts how often something comes up

b = count(exercise.results, group)

c = exercise.results %>% 
  group_by(group) %>% 
  count()
#count() counts 

