read.income <- function(path = 'c:/dat203.1x/mod4/'){
  ## Read the csv file
  filePath <- file.path(path, 'Adult Census Income Binary Classification dataset.csv')
  read.csv(filePath, header = TRUE, stringsAsFactors = FALSE)
}

## Features to plot
name.list <- function(x) {
  names <- names(x)
  len <- length(names)
  names[-len]
}

## Bar plot of categorical features
bar.income <- function(x){
  library(ggplot2)
  if(!is.numeric(Income[,x])) {
    capture.output(
      plot( ggplot(Income, aes_string(x)) +
              geom_bar() + 
              facet_grid(. ~ income) + 
              ggtitle(paste("Counts of income level by",x))))
  }}



## Create Box plot of numeric features
box.income <- function(x){
  library(ggplot2)
  if(is.numeric(Income[,x])) {
    capture.output(
      plot( ggplot(Income, aes_string('income', x)) +
              geom_boxplot() +
              ggtitle(paste("Counts of income level by",x))))
  }}


