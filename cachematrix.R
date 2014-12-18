## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#This function creates a special matrix object(here list of 2 matrices)
makeCacheMatrix <- function(x = matrix()) {
       if(is.null(x))print("Null matrix provided")
       #assuming matrix is invertible
       cachematrix <- solve(x)
       invisible(list(x, cachematrix))
}


## Write a short comment describing this function
#This function finds the inverse if not provided by "special matrix"
cacheSolve <- function(x, ...) {
        speMatrix<-makeCacheMatrix(x)
        if(is.null(speMatrix$cachmatrix)){
          cached<-solve(x)
        }
        #if failed means inverse not calculated
        #calculating inverse in else loop
        else{
          cached<-specMatrix$cachematrix
        }
        cached
        ## Return a matrix that is the inverse of 'x'
}
