library(tidyverse)
library(tidyr)

student1 = tibble(
  student = c("Adam", "Bernd", "Christian", "Doris"),
  algebra = c(NA, 5, 3, 4),
  analysis = c(2, NA, 1, 3),
  diskrete.math = c(3, NA, 2, 4),
)

tidy_student1 = gather(
  data = student1, 
  key = fach, 
  value = note, 
  algebra, 
  analysis, 
  diskrete.math
  )



student2 = tibble(
  name = rep(c("Adam", "Bernd", "Christian", "Doris"), each = 2),
  type = rep(c("height", "weight"), 4),
  measure = c(1.83, 81, 1.75, 71, 1.69, 55, 1.57, 62)
)

tidy_student2 = spread(
  data = student2,
  key = type,
  value = measure,
)


student3 = tibble(
  name = c("Adam", "Bernd", "Christian", "Doris"),
  ratio = c("81/1.83", "71/1.75", "55/1.69", "62/1.57")
)

tidy_student3 = separate(
  data = student3, 
  col = ratio, 
  into = c("height", "weight"), 
  sep = "/"
  )

