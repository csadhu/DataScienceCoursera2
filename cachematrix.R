## Week 3 Coursera R Programming Assignment 2

## Add comments here that give an overall description of what your
## functions do

## Write a short comment describing this function.

## This function creates a special "matrix object", "makeCacheMatrix"  that can cache its
## inverse.

## It is really a list containing a function to  
## set the value of the matrix
## get the value of the matrix
## set the value of its inverse
## get the value of its inverse

##Computing the inverse of a square matrix can be done with the solve function in R.
## If X is a square invertible matrix, then solve(X) returns its inverse.

makeCacheMatrix <- function(x = matrix()) {
    inv <-NULL              ## initialize inv as NULL; holds the 
+                           ## value of the inverse matrix
    set <-function(y){      ## define the set function to assign new
          x <<- y           ## value of matrix in parent environment
          inv <<- NULL      ## if there is a new matrix, reset inv to NULL
    }
    get <-function() x      ## define the get function - returns the
+                           ## value of the matrix argument
      
    setInverse <- function(solve) inv <<- solve 
                            ## assign value of inv in parent environment
    getInverse <- function() inv
                            ## get the value of inv where called
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Write a short comment describing this function

## get the value of inv where called to refer to the functions with $ operator
 
cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
}  
  inv <- x$getInverse()
  if (!is.null(inv)) {
      message("getting cached data")
      return(inv)
}
