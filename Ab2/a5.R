library(nycflights13)
library(tidyverse)

flights = flights
flights2 = filter(flights, arr_delay > 120)
flights3 = filter(flights, arr_delay > 120, dep_delay == 0)
flights4 = filter(flights, arr_delay == 0, carrier %in% c("UA", "AA", "DL"))
flights5 = filter(flights, arr_delay > 300, carrier %in% c("UA", "AA", "DL"), month == 5)
flights5 = arrange(flights5 %>% group_by(carrier), flight, .by_group = TRUE)
flights6 = filter(flights, month == 5, arr_delay > 300)
flights6 = arrange(group_by(flights6, carrier), flight, .by_group = TRUE)
flights7 = mutate(flights, speed = ((distance / 1.609)/(air_time/60)))
flights7 = arrange(flights7, desc(speed))
flights8 = summarise(flights7, carrier, speed) %>%
  slice(1:10) %>%
  arrange(desc(speed))
flights9 = filter(flights, !is.na(arr_delay))
flights9 = count(flights9, arr_delay < 10, carrier)
flights9 = mutate(
  group_by(flights9, carrier),
  ratio = n/sum(n)
  )
flights9 = filter(flights9, `arr_delay < 10` == TRUE) %>%
  summarise(carrier, ratio) %>%
  arrange(desc(ratio))

flights10 = filter(flights, year == 2013)
flights10 = summarise(flights10, carrier, origin, dest)
flights10 = count(flights10, carrier, origin, dest)
flights10 = mutate(
  flights10,
  frequency = n,
  airline = carrier,
  destination = dest,
  ) %>%
  summarise(airline, origin, destination, frequency)
flights10 = arrange(flights10, desc(frequency))

  
  
  
  
  
  
  
  
  
  




