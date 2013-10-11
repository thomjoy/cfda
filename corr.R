corr <- function(directory, threshold = 0) {
  output <- as.numeric()

  for( index in c(1:332) ) {
    # pull out all the data
    monitor <- getmonitor(index, 'specdata')
    # compute the completes
    complete <- complete('specdata', index)

    if( (as.numeric(complete$nobs) > as.numeric(threshold)) ) {
      c <- cor(monitor$sulfate, monitor$nitrate, "pairwise.complete.obs")
      output[index] <- c
    }
  }
  
  ## Return a numeric vector of correlations
  return(output)
}