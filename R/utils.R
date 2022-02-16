#' Load a LaTeX package
#'
#' @description Load a LaTeX package using R code. Just like `\\usepackage{}`
#' in LaTeX
#'
#' @param name The LaTeX package name
#' @param options The LaTeX options for the package
#'
#' @details
#' Copy from kableExtra package
#'
#' @importFrom knitr knit_meta_add
#' @importFrom rmarkdown latex_dependency
#'
#' @examples usepackage_latex("xcolor")
#' @export
usepackage_latex <- function(name, options = NULL) {
  invisible(knit_meta_add(list(latex_dependency(name, options))))
}

#' Load a Lua filter
#'
#' @description Load a Lua filter using R code.
#'
#' @param name The Lua filter name
#'
#'
#' @importFrom knitr knit_meta_add
#' @importFrom rmarkdown pandoc_metadata_arg
#'
#' @examples usefilter_lua("color-text.lua")
#' @export
usefilter_lua <- function(name) {
  invisible(knit_meta_add(list(pandoc_metadata_arg(name))))
}
