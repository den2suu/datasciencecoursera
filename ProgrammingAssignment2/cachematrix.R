## Programming Assignment 2
## Caching the inverse of a matrix avoiding computing
## repeatedly

## getter and setter functions of a matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL ## initialize
  
  ## methods
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) inverse <<- solve
  getinverse <- function() inverse
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## looking up the cache and computing the inverse of
## matrix if it has not calculated yet.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  ##get the cached inverse matrix
  inverse <- x$getinverse()
  if(!is.null(inverse)) {##if the inverse matrix has already been cached
    message("getting cached data")##display messagae
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data, ...)
  x$serinverse(inverse)
  return(inverse)
}
