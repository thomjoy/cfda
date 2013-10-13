getmonitor <- function(id, directory, summary = FALSE ) {
    ## 'id' is a vector of length 1 indicating the monitor ID
    ## number. The user can specify 'id' as either an integer, a
    ## character, or a numeric.

    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    id <- as.numeric(id)
    if( id < 10 ) {
      id <- paste('00', id, sep = "");
    }
    if( id >= 10 && id < 100 ) {
      id <- paste('0', id, sep = "");
    }

    file <- paste(id, '.csv', sep = "")
    data <- read.csv(file.path(getwd(), directory, file))

    ## 'summarize' is a logical indicating whether a summary of
    ## the data should be printed to the console; the default is
    ## FALSE
    if( summary == TRUE )
      print(summary(data))

    return(data)
    ## Your code here
}