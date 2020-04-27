## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(mat = matrix()) {
  inv <- NULL
  
  set <- function( matrix ) { ##sets the Matrix and initialises inverse
    mat <<- matrix
    inv <<- NULL
  }
  
  get <- function() {
    mat ##returns matrix
  }
  
  setInverse <- function(inverse) { ##sets inv as inverse
    inv <<- inverse
  }
  
  getInverse <- function() {
    ##returns inverse of matrix
    inv
  }
  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse) ##list of the functions defined earlier

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mat <- x$getInverse() ##gets inverse of matrix and stores in mat
  if( !is.null(mat) ) {   ##checks if inverse already computed
    message("getting cached data")
    return(mat)
  }
  
  mat1 <- x$get() ##gets matrix and stores in mat1
  mat <- solve(mat1) %*% mat1  ##calculate inverse
  x$setInverse(mat)   ##sets the inverse to x
  mat         ##returns matrix mat
}
