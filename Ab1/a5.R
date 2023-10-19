x = c(1,2,3,4,5)
y = c(3,5,7,9)
#union() Verbindungsmenge alle werte, entfernt duplicates (x concat y)
union(x,y)
c(x,y) #hier sind duplicates drinnen
#setdiff() x ohne y
setdiff(x,y)
setdiff(y,x)
#intersect() Schnittmenge nur werte welche in beiden sind, no duplicates
intersect(x,y)
