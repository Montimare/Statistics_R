a = list("John", "Mary", c(4,6,10))
c = list(Child1 = "Bob",Child2 = "Cate",Child3 = "Susan") #name of element in list
d = c(a,c)
e = list(a,c)
names(a) = c("Father", "Mother", "Child Ages") #name of element in list
f = list(
      c(c[[1]],a[[3]][1]),
      c(c[[2]],a[[3]][2]),
      c(c[[3]],a[[3]][1])
      )

      