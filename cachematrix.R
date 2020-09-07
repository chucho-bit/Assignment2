## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##This function creates a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
    
  }
  get <- function() {x}
  setInverse <- function(inverse) {inv<<-inverse}
  getInverse <- function() {inv}
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## Write a short comment describing this function

##This function computes the inverse of the matrix returned by makeCacheMatrix.
##If the inverse has already been calculated and the matrix has not changed, it
##will retrieve the inverse from the cache directly

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cache")
    return(ing)
  }
  mat<- x$get()
  inv <- solve(mat,...)
  x$setInverse(inv)
  inv
}