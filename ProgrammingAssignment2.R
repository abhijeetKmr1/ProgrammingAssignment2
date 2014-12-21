invertmatrix<- function(x)
{
	
	m <- NULL
	m <- solve(x) 
	m	
}

cacheSolve <- function(data,...)
{
	if(exists("invertMatrix1", envir=cacheEnv))
	{
		m <- get("invertMatrix1", envir=cacheEnv)
	}
	else
	{		
		m <- NULL
	}

	if(!is.null(m))
	{
		message("getting cached data")
		return(m)
	}
	else
	{
		message("calculating invert matrix")
		x <- invertmatrix(data)
		assign("invertMatrix1", x , envir=cacheEnv)
		x
	}
}