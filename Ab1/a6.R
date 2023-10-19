x = seq(0,18,2)
m = matrix(as.integer(runif(m,0,10)), 8, 10)
#m = rbind(x,m) append row to matrix
m[1,] = x
print (m)
#m[2:8,] reihe 2 bis 8