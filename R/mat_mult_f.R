mat_mult_f <- function(A, B){
  outer_dim1 <- nrow(A)
  outer_dim2 <- ncol(B)
  inner_dim  <- ncol(A)
  AB <- matrix(0, outer_dim1, outer_dim2)
  returned_data <- .Fortran("mat_mult_it",
                            A          = as.double(A),
                            B          = as.double(B),
                            AB         = as.double(AB),
                            outer_dim1 = as.integer(outer_dim1),
                            outer_dim2 = as.integer(outer_dim2),
                            inner_dim  = as.integer(inner_dim),
                            PACKAGE = "QUBBD")

  AB <- matrix(returned_data$AB, outer_dim1, outer_dim2)
  return(AB)
}
