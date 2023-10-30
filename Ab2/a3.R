library(tidyverse)
library(dplyr)

df = tibble(
  id = 1:10,
  sex = sample(x = c("f", "m"), size = 10, replace = TRUE),
  age = round(runif(10,20,35)),
  score1 = round(runif(10,0,25))
)

a = filter(df, sex == "m")

print(df)
print(a)

#df = rbind(df, c(11,"m",25,4)) #makes everything a text cell
df = add_row(df, id = 11, sex = "m", age = 25, score1 = 4) #keeps it as numbers

score2 = round(runif(nrow(df), 0, 25)) #rows must match or error
score3 = round(runif(nrow(df), 0, 25))

df = add_column(df, score2, score3)#mit komma kann man mehrere cols anfügen
df = mutate(df, score2, score3)#mit komma kann man mehrere cols anfügen


df = mutate(df, score_sum = score1 + score2 + score3)

df[1,7] = 65

df = mutate(df, grade = case_when(
  score_sum <= 37 ~ 5,
  37 < score_sum & score_sum <= 45 ~ 4,
  45 < score_sum & score_sum <= 55 ~ 3,
  55 < score_sum & score_sum <= 65 ~ 2,
  65 < score_sum ~ 1,
))


df_id_sex_grade = select(df, id, sex, grade)
df_id_sex_grade = filter(df_id_sex_grade, grade < 5)
df_id_sex_grade = arrange(df_id_sex_grade, sex)


df_summary = summarise(
  group_by(df, sex), 
  mean = mean(score_sum),
  minimum = min(score_sum),
  maximum = max(score_sum),
  median = median(score_sum)
  )