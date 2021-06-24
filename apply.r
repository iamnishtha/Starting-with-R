# Construct a 5x6 matrix
X <- matrix(rnorm(30), nrow=5, ncol=6)

# Sum the values of each column with `apply()`
apply(X, 2, sum)

# Create a list of matrices
MyList <- list(A,B,C)

# Extract the 2nd column from `MyList` with the selection operator `[` with `lapply()`
lapply(MyList,"[", , 2)

# Extract the 1st row from `MyList`
lapply(MyList,"[", 1, )

# Use `lapply()` to select the 2nd column from each matrix in `MyList`
lapply(MyList,"[", 1,)

# Return a list with `lapply()`
lapply(MyList,"[", 2, 1 )

# Return a vector with `sapply()`
......(MyList,"[", 2, 1 )

# Return a list with `sapply()`
......(MyList,"[", 2, 1, simplify=F)

# Return a vector with `unlist()`
......(lapply(MyList,"[", 2, 1 ))
# Initialize `Z`
Z <- sapply(MyList,"[", 1,1 )

# Return `Z`
Z

# Replicate the values of `Z`
Z <- rep(Z,c(3,1,2))

# Return `Z`
Z
