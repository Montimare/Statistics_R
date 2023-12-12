library(tidyverse)
library(dplyr)

data_raw = c(568, 577, 581, 640, 641, 645, 657, 673, 696, 703, 720, 728, 729, 777, 808,
             824, 825, 865, 875, 1007)

data_cumsum = cumsum(data_raw)


data_tib = tibble(
  data = data_raw
)

data_tib = mutate(
  group_by(data_tib, data),
  freq = n()
)

data_tib = add_column(data_tib, cumfreq = cumsum(data_tib$freq))

data_tib = mutate(data_tib,
                  proportion = (cumfreq / max(data_tib$cumfreq))
                  )
