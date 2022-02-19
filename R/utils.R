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


#' Add a todonotes to a Rmarkdown
#' @param x text to be included in the todo.
#' This text is modified with rmarkdown render for latex output and with
#' custom code for html output.
#' @param color orange by default, this is the color background of the todonote.
#'
#' @details
#' For now, the package is based on the \code{todonotes} package in latex,
#' but only use the inlince option. Works will be done to include
#' \code{listoftodo} and a greater variety of todonotes.
#'
#' @author Maxime Jaunatre
#'
#' @export
todo <- function(x = "", color = "orange") {
  if (knitr::is_latex_output()) {

    # this is from stackoverflow
    # https://stackoverflow.com/questions/59123976/how-to-use-r-to-convert-character-from-markdown-to-latex

    infile <- tempfile(fileext=".md")
    writeLines(x, infile)
    outfile <- rmarkdown::render(infile, rmarkdown::latex_fragment(), quiet = TRUE)
    x <- readLines(outfile, encoding  = "Latin-1")
    x  <- paste(x, collapse = " ")
    unlink(c(infile, outfile))

    sprintf("\\todo[inline,color=%s]{%s}", color, x)

  } else if (knitr::is_html_output()) {

    sprintf(
      paste(
        '<div id="hello" style=',
        '  "padding: 2px 2px 2px 2px;  border: 2px solid black;',
        '  background: %s;  border-radius: 10px;">',
        '  <p> %s </p>',
        '</div>'
      ),
      color,  x
    )

  } else x
}
