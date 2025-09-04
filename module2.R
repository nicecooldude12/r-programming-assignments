assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)

myMean <- function(assignment2) {
  return(sum(assignment2) / length(assignment2))
}

myMean(assignment2)

#This works because ‘assignment2’ is in its rightful place. The sum adds up all of the existing numbers in the list and divides it by the length that exists aswell. Answer is 19.25.
