## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

## Makes a matrix from random numbers
makeCacheMatrix <- function(x=matrix(rnorm(4), 2,2)) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
## Return a matrix that is the inverse of 'x'
        get <- function() x
        setmean <- function(solve) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}

##Function checks to see if the inverse is already calculated if not it calculates the inverse

cacheSolve <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setmean(m)
        m
}
