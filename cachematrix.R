## These functions temoprarily create and store a matrix and its inverse
## It can be used to easily recall the value

## This defines x as a matrix and y as the matrix subroutine

makeCacheMatrix <- function(x = matrix()) {

m <- NULL
set <- function(y) {
  x <<- y
  inv <<- NULL  

}


get <- function () x
setinv <- function (solve) inv <<- solve
getinv <- function () inv
list(set = set, get=get, 
      setinv = setinv,
      getinv = getinv) 


## gets mean of matrix "m"

cacheSolve <- function(x, ...) {
  m < - x$getinv()
  if(!is.null(inv)) {message ("getting cached data")
    return(inv)}
}
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  m
}


## Return a matrix that is the inverse of 'x'
x <- matrix(c(1,2,3,4), nrow=2, ncol=2)
solve(x)




