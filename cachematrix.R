## Put comments here that give an overall description of what your
## functions do
## This is the week 3 Assignment - This is a direct edit from Web
## This function will provide methods for get , set , getInverse and set Inverse 
## and provide a list with all the 4 functions

makeCacheMatrix <- function(x = matrix()) {

        inv <- NULL
        set  <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(solve) inv <<-solve
        getinv <- function() inv
        list(set=set,get=get,setinv=setinv,getinv=getinv)
}


## This function will take the output of the above function 
## Checkes if the Inverse is already careated 
## if created , display from cache
## else calculate the inverse , save it in the cache and then print

cacheSolve <- function(x, ...) {
        inv <- x$getinv()
        if(!is.null(inv)) {
                print("getting cached Data")
                return(inv)
        }
        print("Not In Cache, computing and put in cache")
        data <- x$get()
        inv <- solve(data, ...)
        x$setinv(inv)
        inv
}
