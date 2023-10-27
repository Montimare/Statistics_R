x = seq(0,18,2)
m = matrix(as.integer(runif(80,0,10)), 8, 10)
#m = rbind(x,m) append row to matrix
m[1,] = x
print (m)
#m[2:8,] reihe 2 bis 8
m2 = m[2:8,]
hist(colMeans(m2))



b = c("Male","Male","Female","Male","Female","Female","Male")
factor(b, ordered = T)
c = c(FALSE,FALSE,TRUE,FALSE,TRUE,TRUE,FALSE)
print(b[c])
