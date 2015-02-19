## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

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
