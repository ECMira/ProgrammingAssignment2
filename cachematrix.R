## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  kirk <- NULL
  set <- function(y){
  maruts <<- y
  kirk <<- NULL
  }
  get <- function()maruts
  setInverse <- function(inverse) kirk <<- inverse
  getInverse <- function() kirk 
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)
}

## this part of the code makes the inverse of special matrix computed.

cacheSolve <- function(maruts, ...) {
## Return a matrix that is the inverse of 'maruts'
  kirk <- maruts$getInverse()
  if(!is.null(kirk)){
  message("getting cached data")
  return(kirk)
  }
  mat <- maruts$get()
  kirk <- solve(mat,...)
  maruts$setInverse(kirk)
  kirk
}
