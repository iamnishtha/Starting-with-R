mtcars$gear <- factor(mtcars$gear,levels=c(3,4,5),
                       labels=c("3gears","4gears","5gears")) 
mtcars$am <- factor(mtcars$am,levels=c(0,1),
                     labels=c("Automatic","Manual")) 
mtcars$cyl <- factor(mtcars$cyl,levels=c(4,6,8),
                      labels=c("4cyl","6cyl","8cyl")) 
  qplot(mpg, data=mtcars, geom="density", fill=gear, alpha=I(.5),main="Distribution of Gas Mileage", xlab="Miles Per Gallon",ylab="Density")
