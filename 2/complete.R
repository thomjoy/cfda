complete <- function(directory, id = 1:332) {  
  #infiles <- dir(file.path(getwd(), directory), pattern='\\.csv$')
  ådf <- data.frame(id = numeric(), nobs = numeric())
  
  countobs <- function(file) {
    data <- getmonitor(file, 'specdata')
    id <- data$ID[1]
    nobs <- sum(complete.cases(data))
    row <- data.frame(id = id, nobs = nobs)
    return(row)
  }
  
  for( i in id ) {
    df <- rbind(df, countobs(i))
  }
  
  return(df)
}