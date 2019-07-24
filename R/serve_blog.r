#' Serve blog files using servr::jekyll
#'
#' This function generates site using jekyll
#' @param input see default
#' @param output see default
#' @param ... extra parms passed to servr::jekyll
#' @keywords servr blog jekyll
#' @author Jordan Schupbach (taken from Brendan Rocks)
#' @export
#' @examples
#' # gen_blog()
#' # serve_blog()

serve_blog <- function (input = c(".", list.dirs("_source")), output = c(".",
    rep("rmd_posts/_posts", length(list.dirs("_source")))),
    command = "bundle exec jekyll build", ...)
{
    servr::jekyll(input = input, output = output, serve = TRUE,
                  command = command, ...)
}


