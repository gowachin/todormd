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


