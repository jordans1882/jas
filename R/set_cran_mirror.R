set_cran_mirror <- function(mirror = "http://cran.us.r-project.org") {
  r <- getOption("repos")
  r["CRAN"] <- mirror
  options(repos = r)
  rm(r)
}
