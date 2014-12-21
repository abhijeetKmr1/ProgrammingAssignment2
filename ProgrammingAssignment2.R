invertmatrix<- function(x)
{
	
	m <- NULL
	m <- solve(x) ## calulating the inverse matrix
	m	
}

cacheSolve <- function(data,...)
{
	## checking "invertMatrix" is present in cacheEnviroment or not
	if(exists("invertMatrix1", envir=cacheEnv))
	{
		m <- get("invertMatrix1", envir=cacheEnv) ## retriving from cahe matrix
	}
	else
	{		
		m <- NULL
	}

	## If value found in cache memory then will enter tyhe if statement
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
		assign("invertMatrix1", x , envir=cacheEnv)
		x
	}
}