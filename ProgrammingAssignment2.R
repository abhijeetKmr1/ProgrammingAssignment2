## Assumption
## "X" matrix passed to cacheMatrix is square matrix and  is not singular
## cache Enviroment is already started with name "cacheEnv"  using command "cacheEnv <- new.env()"
## For running calll cacheSolve(x) where x is a Square matrix

invertmatrix<- function(x)
{
	
	m <- NULL
	m <- solve(x) ## calculating the inverse matrix
	m	
}

cacheSolve <- function(data,...)
{
	## checking "invertMatrix" is present in cacheEnviroment or not
	if(exists("invertMatrix1", envir=cacheEnv))
	{
		m <- get("invertMatrix1", envir=cacheEnv) ## retriving from cache 
	}
	else
	{		
		m <- NULL
	}

	## If value found in cache memory then will enter if statement and return the value
	if(!is.null(m))
	{
		message("getting cached data")
		return(m)
	}
	else
	{
		##  calculating the inverse matrix

		message("calculating invert matrix")
		x <- invertmatrix(data)
		assign("invertMatrix1", x , envir=cacheEnv) ## assing the value in the cache
		x                                           ## Returning the value
	}
}