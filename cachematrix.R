
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  #assign inverse as NULL
  inverse_matrix <- NULL;
  
  #sets the matrix
  set <- function(y){
    
    #sets value in cache
    x <<- y
    #sets inverse as NULL
    inverse_matrix <<- NULL
  }
  
  #gets the matrix
  get <- function() x
  
  #sets the inverse of the matrix
  setinverse <- function(inverse) {
    inverse_matrix <<- inverse
  }
  
  #gets the inverse of the matrix
  getinverse <- function(){
    inverse_matrix  
  } 
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverse_matrix <- x$getinverse()
  
  #checks the null of the inverse of the matrix
  if(!is.null(inverse_matrix)) {
    message("getting matrix inverse")
    return(inverse_matrix)
  }
  
  #gets the stored matrix
  matrix <- x$get()
  
  #gets the inverse of matrix
  inverse_matrix <- solve(matrix, ...)
  
  #sets the inverse of the matrix
  x$setinverse(inverse_matrix)
  
  #return inverse of the matrix
  inverse_matrix  
}
