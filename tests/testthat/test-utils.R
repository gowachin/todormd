
#### Test todo function ####

library(knitr)

test_that("set tex dep", {
  knit_meta(clean = TRUE)
  usepackage_latex("todonotes")
  res <- list(latex_dependency("todonotes"))
  attributes(res)$knit_meta_id <- ""

  expect_equal(knit_meta(), res)
})


test_that("onload", {
  knit_meta(clean = TRUE)
  opts_knit$set(rmarkdown.pandoc.to="latex")
  todormd:::.onLoad("todormd")
  res <- list(latex_dependency("todonotes"))
  attributes(res)$knit_meta_id <- ""

  expect_equal(knit_meta(), res)
})

