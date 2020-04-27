## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  
  set <- function( matrix ) {
    mat <<- matrix
    i <<- NULL
  }
  
  get <- function() {
    mat ##returns matrix
  }
  
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  getInverse <- function() {
    ##returns inverse of matrix
    i
  }
  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mat <- x$getInverse()
  if( !is.null(mat) ) {
    message("getting cached data")
    return(mat)
  }
  
  mat1 <- x$get()
  mat <- solve(mat1) %*% mat1
  x$setInverse(mat)
  mat
}
