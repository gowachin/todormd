.onLoad <- function(libname = find.package("todormd"), pkgname = "todormd") {
  if (knitr::is_latex_output()) {
    usepackage_latex("todonotes")
  }
  usefilter_lua("--lua-filter=color-text.lua")
}
