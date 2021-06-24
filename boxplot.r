> str(airquality)
'data.frame':	153 obs. of  6 variables:
$ Ozone  : int  41 36 12 18 NA 28 23 19 8 NA ...
$ Solar.R: int  190 118 149 313 NA NA 299 99 19 194 ...
$ Wind   : num  7.4 8 12.6 11.5 14.3 14.9 8.6 13.8 20.1 8.6 ...
$ Temp   : int  67 72 74 62 56 66 65 59 61 69 ...
$ Month  : int  5 5 5 5 5 5 5 5 5 5 ...
$ Day    : int  1 2 3 4 5 6 7 8 9 10 ...

boxplot(airquality$Ozone)

boxplot(airquality$Ozone,
main = "Mean ozone in parts per billion at Roosevelt Island",
xlab = "Parts Per Billion",
ylab = "Ozone",
col = "orange",
border = "brown",
horizontal = TRUE,
notch = TRUE
)

> b <- boxplot(airquality$Ozone)
> b
$stats
[,1]
[1,]   1.0
[2,]  18.0
[3,]  31.5
[4,]  63.5
[5,] 122.0
attr(,"class")
1 
"integer" 
$n
[1] 116
$conf
[,1]
[1,] 24.82518
[2,] 38.17482
$out
[1] 135 168
$group
[1] 1 1
$names
[1] "1"

# prepare the data
ozone <- airquality$Ozone
temp <- airquality$Temp
# gererate normal distribution with same mean and sd
ozone_norm <- rnorm(200,mean=mean(ozone, na.rm=TRUE), sd=sd(ozone, na.rm=TRUE))
temp_norm <- rnorm(200,mean=mean(temp, na.rm=TRUE), sd=sd(temp, na.rm=TRUE))

boxplot(ozone, ozone_norm, temp, temp_norm,
main = "Multiple boxplots for comparision",
at = c(1,2,4,5),
names = c("ozone", "normal", "temp", "normal"),
las = 2,
col = c("orange","red"),
border = "brown",
horizontal = TRUE,
notch = TRUE
)
boxplot(Temp~Month,
data=airquality,
main="Different boxplots for each month",
xlab="Month Number",
ylab="Degree Fahrenheit",
col="orange",
border="brown"
)

