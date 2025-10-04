A <- matrix(c(2, 0, 1, 3), ncol = 3)

B <- matrix(c(5, 2, 4, -1), ncol = 2)

D <- diag(c(4, 1, 2, 3))
D

E <- matrix(0, 5, 5) + diag(3, 5)
E[1, 2:5] <- 1
E[2:5, 1] <- 2
E
