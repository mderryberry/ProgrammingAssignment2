## Put comments here that give an overall description of what your
## functions do

## By creating the two functions below,you could combine them and save time finding the inverse of
## a large invertible matrix by caching inverses 

## Write a short comment describing this function
## This function is very similar to the example, it simply sets/gets the value of the matrix and 
## sets/gets the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function
## This function takes the cached inverse if it already exists and returns it as i; 
##if it does not exist it calculates the inverse then sets it as i

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)) {
    message("cached data")
    return(i)
  }
  matrix<-x$get()
  i <- solve(matrix, ...)
  x$setinverse(i)
  i
}
