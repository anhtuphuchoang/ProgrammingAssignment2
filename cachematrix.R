## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  mcmx <-- matrix()
  if (identical(mcmx,x)){
    if (is.null(setcache)){
    Print("Matrix contains no data. Try again.")
    }else{
      return (setcache)
    }
  }else{
    mcmx <- x
  }
  setcache<<- solve(mcmx)
  return (setcache)
  ## initializes an empty matrix. compares it to the argument for x, and if x is not NULL and the cache is empty, solves for the inverse.
}


cacheSolve <- function(x, ...) {
  my<-makeCacheMatrix()
  if (identical(solve(my),x)){
    print (my)
  }else{
    setnew <- makeCacheMatrix(x)
    print (setnew)
  }
  ## initializes the my variable and compares it to the argument for x. If there is a match it prints from the cache else it updates the cache.
}
