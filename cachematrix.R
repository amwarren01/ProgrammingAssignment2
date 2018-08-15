# The functions cache the inverse of a matrix 


# This function creates a list that holds fucntions of the cached matrix

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
set <- function(matrix)
        x <<- matrix
        inverse <<- NULL
        
get <- function() x
setinverse <- function(z) inverse <<- z
getinverse <- function() inverse
list(set = set, get = get, setinverse = setinverse, getinverse= getinverse)
        
}


# The function calculates the inverse of a supplied cache matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getinverse()
         if(!is.null(inverse)) {
                 message("getting cached data")
                 return(inverse)
         }
         data <- x$get()
         inverse <- solve(data)
         x$setinverse(inverse)
         inverse
}

d <- diag(3)
f <- makeCacheMatrix(d)
print(f$get())

print(f$getinverse())

invisible(cacheSolve(f))

invisible(cacheSolve(f))

