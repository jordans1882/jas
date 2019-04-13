\name{JAS-package}
\alias{JAS-package}
\alias{JAS}
\docType{package}
\title{
A collection of random things
}
\description{
Functions I've written over the years that I find usefull.
}
\details{
\tabular{ll}{
Package: \tab JAS\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2019-02-23\cr
License: \tab What license is it under?\cr
}

}
\author{
Jordan Schupbach

Maintainers: Jordan Schupbach <jordans1882@gmail.com>
}
\references{

}

\keyword{ package }
\seealso{
}
\examples{
A <- matrix(rnorm(10000), 100, 100)
B <- matrix(rnorm(10000), 100, 100)
system.time(AB <- mat_mult(A,B))
}
