## Startup functions ------------------------------------

#' .onAttach start message
#'
#' @param libname defunct
#' @param pkgname defunct
#'
#' @return invisible()
.onAttach <- function(libname, pkgname) {
  start_message <- c( "RmdNameChunk: Read an Rmd rmarkdown file and apply enumerated code chunks\n\n"
                      , "  by Dr. Erik Barry Erhardt <erik@StatAcumen.com>\n\n"
                    )
  packageStartupMessage(start_message)
  invisible()
}


#' .onLoad getOption package settings
#'
#' @param libname defunct
#' @param pkgname defunct
#'
#' @return
#'
#' @examples
#' getOption("RmdNameChunk.name")
.onLoad <- function(libname, pkgname) {
  op <- options()
  op.RmdNameChunk <- list(
    #RmdNameChunk.path = "~/R-dev",
    RmdNameChunk.install.args  = "",
    RmdNameChunk.name          = "Erik Barry Erhardt",
    RmdNameChunk.desc.author   = "Erik Erhardt <erik@StatAcumen.com> [aut, cre]",
    RmdNameChunk.desc.license  = "GPL-3",
    RmdNameChunk.desc.suggests = NULL,
    RmdNameChunk.desc          = list()
  )
  toset <- !(names(op.RmdNameChunk) %in% names(op))
  if (any(toset)) options(op.RmdNameChunk[toset])

  invisible()
}
