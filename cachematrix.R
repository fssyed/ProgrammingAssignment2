## These functions temoprarily create and store a matrix and its inverse
## It can be used to easily recall the value

## This defines x as a matrix and y as the matrix subroutine

makeCacheMatrix <- function(x = matrix()) {

m <- NULL
set <- function(y) {
  x <<- y
  m <<- NULL  

}


get <- function () x
setmean <- function (mean) m <<- mean
getmean <- function () m
list(set = set, get=get, 
      setmean = setmean,
      getmean = getmean) 


## gets mean of matrix "m"

cacheSolve <- function(x, ...) {
  m < - x$getmean()
  if(!is.null(m)) {message ("getting cached data")
    return(m)}
  
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}


## Return a matrix that is the inverse of 'x'
x <- matrix(c(1,2,3,4), nrow=2, ncol=2)
solve(x)




