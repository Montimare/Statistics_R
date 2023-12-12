library(tidyverse)

elections = tibble(
  party = c("CDU", "SPD", "AFD", "FDP", "DIE LINKE", "GRUENE", "CSU", "OTHERS"),
  results_2013 = c(26.8, 20.5, 12.6, 10.7, 9.2, 8.9, 6.2, 5.0),
  results_2017 = c(34.1, 25.7, 4.7, 4.8, 8.6, 8.4, 7.4, 6.2)
)

elections2 = tribble(
  ~party, ~results_2013, ~results_2017,
  "CDU", 26.8, 34.1,
  "SPD", 20.5, 25.7,
  "AFD", 12.6, 4.7,
  "FDP", 10.7, 4.8,
  "DIE LINKE", 9.2, 8.6,
  "GRUENE", 8.9, 8.4,
  "CSU", 6.2, 7.4,
  "OTHERS", 5.0, 6.2
)

pie(elections$results_2017, labels = elections$party)

barplot(elections$results_2017, names.arg = elections$party)

barplot(
  rbind(elections$results_2013, elections$results_2017), 
  names.arg = elections$party, 
  beside = T, 
  col = c(2,3)
  )

        