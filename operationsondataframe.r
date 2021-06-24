# R program to illustrate dataframe
  
# A vector which is a character vector
Name = c("Amiya", "Raj", "Asish")
  
# A vector which is a character vector
Language = c("R", "Python", "Java")
  
# A vector which is a numeric vector
Age = c(22, 25, 45)
  
# To create dataframe use data.frame command and
# then pass each of the vectors 
# we have created as arguments
# to the function data.frame()
df = data.frame(Name, Language, Age)
  
print(df)

# R program to illustrate operation on a data frame
  
# Creating a dataframe
df = data.frame(
  "Name" = c("Amiya", "Raj", "Asish"),
  "Language" = c("R", "Python", "Java"),
  "Age" = c(22, 25, 45)
)
cat("Before adding row\n")
print(df)
  
# Add a new row using rbind()
newDf = rbind(df, data.frame(Name = "Sandeep",
                            Language = "C",
                            Age = 23
                           ))
cat("After Added a row\n")
print(newDf)

# R program to illustrate operation on a data frame
  
# Creating a dataframe
df = data.frame(
  "Name" = c("Amiya", "Raj", "Asish"),
  "Language" = c("R", "Python", "Java"),
  "Age" = c(22, 25, 45)
)
cat("Before adding column\n")
print(df)
  
# Add a new column using cbind()
newDf = cbind(df, Rank=c(3, 5, 1))
  
cat("After Added a column\n")
print(newDf)

# R program to illustrate operation on a data frame

# Importing the dplyr library
library(dplyr)

# Creating a dataframe
df = data.frame(
"Name" = c("Amiya", "Raj", "Asish"),
"Language" = c("R", "Python", "Java"),
"Age" = c(22, 25, 45)
)
cat("Original Dataframe\n")
print(df)

# Creating an extra variable column
# "log_Age" which is log of variable column "Age"
# Using mutate() command
newDf = mutate(df, log_Age = log(Age))

cat("After creating extra variable column\n")
print(newDf)

# R program to illustrate operation on a data frame
  
# Creating a dataframe
df = data.frame(
  "Name" = c("Amiya", "Raj", "Asish"),
  "Language" = c("R", "Python", "Java"),
  "Age" = c(22, 25, 45)
)
cat("Before deleting the 3rd row and 2nd column\n")
print(df)
  
# delete the third row and the second column
newDF = df[-3, -2]
  
cat("After Deleted the 3rd row and 2nd column\n")
print(newDF)
