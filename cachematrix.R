## Put comments here that give an overall description of what your
## functions do

## This function makes a matrix, retrieves it, sets the inverse and gets its inverse

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function (y){ # This function assigns the value of the matrix
    x <<- y
    inverse <<- NULL
  }
    get <- function() x # This function retrieves the value of the matrix
    setInverse <- function(i) inverse <<- i # This function assigns the value of the inverse of the earlier matrix
    getInverse <- function() inverse # This function retrieves the value of the inverse of the earlier matrix
    
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function

#This function only takes makeCacheMatrix type of R object
cacheSolve <- function(x, ...) { 
        ## Return a matrix that is the inverse of 'x'
  i <- x$getInverse() #This checks if the inverse of a matrix already exists
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
     }
     data <- x$get() #This calculates and returns th inverse of the matrix
     i <- solve(data, ...)
     x$setInverse(i)
     i
}
