#setwd('')#remember to delete path and comment line

##function will take matrix (square), use solve(x) to create inverse of matrix
##then store the result in cache

makeCacheMatrix <- function(testMatrix = matrix()) { #create matrix 
  
  result <- NULL #create null object, solution will be saved here
  set <- function(y){
    testMatrix <<- y #store in cache
    result <<- NULL
  }
  #create inverse of matrix, no need to verify if invertible
  get <- function() testMatrix
  setsolve <- function(solve) {
    result <<- solve
  }
  
  getsolve <- function() result
  list(set=set, get = get, setsolve = setsolve, getsolve = setsolve)
}


#will check if there is a inverse exists, if not, 
#will run makeCacheMatrix to create and store in cache the inverse
cacheSolve <- function(matrix, ...) {
  #check if anything in cache
  solution <- x$getsolve()
  #if something is available, get the result and return
  if(!is.null(solution)) {
    message("getting inversed matrix")
    return(solution)
  }
  #no inverse in cache
  data <- matrix$get() #get matrix
  solution <- solve(data, ...) #create inverse
  matirx$setsolve(solution)#save to cache
  solution
}
