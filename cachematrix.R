## This program solve the problem of inversing a matrix and cache it to avoid costs of computation for future problems

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
    x <<- y
    m <<- NULL
  }
    get <- function() x
    setivmat <- function(ivmat) m <<-ivmat
    getivmat <- function() m
    list(set = set, get = get,
    setivmat = setivmat,
    getivmat = getivmat)

}


## This function computes the inverse of the "matrix" created before

cacheSolve <- function(x, ...) {
      m <- x$getivmat()
      if(!is.null(m)) {
              message("getting cached data")
              return(m)
        }
     data <- x$get()
     m <- solve(data, ...)
     x$setivmat(m)
     m
}
