## This function computes the inverse of a matrix and caches the results.

## creates matrix object to cache the matrix inverse.

makeCacheMatrix <- function(m = matrix()) {
    n <- NULL
    set <- function(x){
        m <<- x
        
    }
    get <- function() m
    setmatrix <- function(solve)
        n <<- solve()
    getmatrix <- function() n
    
}


## Computes inverse of makeCacheMatrix. If inverse already found, retreives 
## inverse from cache. 

cacheSolve <- function(x, ...) {
    n <- m$getmatrix()
    if(!is.null(n)){
        print("Inverse has already been found. Retreiving cached data")
        return(n)
    }
    matrix <- m$get()
    n <- solve(matrix, ...)
    return(n)
        ## Return a matrix that is the inverse of 'x'
}
