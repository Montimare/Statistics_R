library(magrittr)
library(dplyr)
#wichtig sonst geht %>% nicht

result1 = sin(log10(sqrt(5+3)))
result2 = (5+3) %>% sqrt() %>% log10() %>% sin()


v = seq(from = 0.5, to = 5, by = 0.5)
vres1 = v %>% sqrt() %>% log10() %>% sum() %>% round(digits = 2)
vres2 = round(sum(log10(sqrt(v))), digits = 2)
