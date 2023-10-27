library(ggplot2)
library(tidyverse)

mpg_data = mpg
t = tibble(
  variable = c("manufacturer", "model", "displ"),
  type = c("qualitative", "qualitative", "quantitative"),
  scale = c("nominal", "nominal", "ratio"),
  dc = c("discrete", "discrete", "continuous")
)
t = add_row(data.frame("year", "quantitative", "interval", "continuous"))
#fix this later and add extra variables


