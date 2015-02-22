## first functioin creates a list containing the functions to access and cache/store
## the current matrix and it's inverse.
## The second function checks whether the inverse was already calculated,if yes..then
## it prints it,otherwise it calcualts the inverse,prints it and stores it in cache.

## it creates a function list to access and store the matrix and it's correspondind 
## inverse.

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinv <- function(inv) i <<- inv
  getinv <- function() i
  <-list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
  
}



## it checks whether the inverse was already calculated by accessing the functions
## created in previous list. If yes, then it shows "getting from cache" message
## prints it.If No,then it calculated the inverse and stores it by accessing the 
## setmean() function created before.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinv()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinv(i)
  i
}
