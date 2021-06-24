mtcars$gear <- factor(mtcars$gear,levels=c(3,4,5),
                       labels=c("3gears","4gears","5gears")) 
mtcars$am <- factor(mtcars$am,levels=c(0,1),
                     labels=c("Automatic","Manual")) 
mtcars$cyl <- factor(mtcars$cyl,levels=c(4,6,8),
                      labels=c("4cyl","6cyl","8cyl")) 
  qplot(mpg, data=mtcars, geom="density", fill=gear, alpha=I(.5),main="Distribution of Gas Mileage", xlab="Miles Per Gallon",ylab="Density")
qplot(hp,mpg, data=mtcars, geom="line", alpha=I(.5), 
       main="miles per gallon vs horse power", xlab="Horse Power",ylab="Miles Per Gallon",colour = I("red"))
#Scatterplot of mpg vs. hp for each combination of gears and cylinders
 # in each facet, transmittion type is represented by shape and color
 qplot(hp, mpg, data=mtcars, shape=am, color=am,        facets=gear~cyl, size=I(3), xlab="Horsepower", ylab="Miles per Gallon") 

