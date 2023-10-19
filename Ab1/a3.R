vec = c(0.1,0.5,2.3,1.1,11.3,14.7,23.4,15.7,0,0.9)
mean(vec) #durchschnitt
sd(vec) #standard deviation
cumsum(vec) #erzeugt ein vektor welcher an der stelle so groß ist wie alle vorherigen stellen addiert
sum(vec);
print("Day"); which.max(vec); print("had the highest rainfall")
vec2 = subset(vec, vec>10) #return array where each item is bigger 10
mean(subset(vec,vec>=5)) #return mean of vec where each item >= 5
vec3 = subset(vec, vec==0 | vec==1.1)
which(vec==0 | vec==1.1)
print(vec3)
