## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
invmatrix <- NULL
setmatrix <- function (y) {
  x <<- y
  invmatrix <- NULL
}

getmatrix <-function() x
setinverse <- function(inverse) invmatrix <<- inverse
getinverse <- function() invmatrix
list(setmatrix = setmatrix, getmatrix = getmatrix, setinverse = setinverse, getinverse = getinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
invmatrix <- x$getinverse()
if(!is.null(invmatrix)) {
  message("retrieving from cache")
  return(invmatrix)
}
matrix <- x$getmatrix()
invmatrix <- solve(matrix, ...)
x$setinverse(invmatrix)
return(invmatrix)

  }

