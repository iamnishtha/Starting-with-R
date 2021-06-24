a<-readLine("enter the number")
a
product<-1
for (i in a:1)
{
product<-product*i
}
print(paste("factorial of", product))
