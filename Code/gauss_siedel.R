library(fastmatrix)
X <- matrix(c(10,2,1,
              1,5,1,
              2,3,10),
            nrow = 3,
            ncol = 3,
            byrow = TRUE)

Y <- matrix(c(7,-8,6),
            nrow = 3,
            ncol = 1)

a <- t(X)%*%X
b <- as.vector(t(X)%*%Y)

start <- rep(0, length(b))

# Tolerance = 0.05
ajuste <- seidel(a, b, start,
                 maxiter = 200,
                 tol = 0.05)
# Output
# 0.9793988 -1.9691503  0.9950706
# iterations 6

# Tolerance = 1e-7
ajuste <- seidel(a, b, start,
                 maxiter = 200,
                 tol = 1e-7)
# Output
# 0.9999999 -1.9999999  1.0000000
# iterations 18

# Change of initial values
start <- c(1,1,1)
ajuste <- seidel(a, b, start,
                 maxiter = 200,
                 tol = 1e-7)
# Output
# 1 -2  1
# iterations 16