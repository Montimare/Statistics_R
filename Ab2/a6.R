library(tidyr)
library(tidyverse)

who = who

who_clean = gather(who, key = "key", value = "cases", new_sp_m014:newrel_f65, na.rm = TRUE)
who_clean = mutate(who_clean, key = str_replace(key, "newrel", "new_rel"))
who_clean = separate(who_clean, key, c("new", "diagnosis", "genderage"), sep = "_")
who_clean = separate(who_clean, genderage, c("gender", "age"), sep = 1)
who_clean_sol = select(who_clean, -new, -iso2, -iso3)


production = expand.grid(
  product = c("A", "B"),
  country = c("AI", "EI"),
  year = 2000:2014
)
production = filter(production, (product == "A" & country == "AI") | product == "B")
production = mutate(production, production = rnorm(nrow(production)))

production = mutate(production, product_country = str_c(product, country, sep = "_"))
production = select(production, -product, -country)
production = spread(production, key = product_country, value = production)


warpbreaks %>%
  group_by(wool, tension) %>%
  summarise(Mean = mean(breaks)) %>%
  spread(key = wool, value = Mean)
