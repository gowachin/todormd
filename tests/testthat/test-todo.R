
#### Test todo function ####

# Test for correct input
rmd_file <- tempfile(fileext = ".Rmd")
cat("
---
title: test
---

```{r setup}
library(todormd)
```
`r todo('For example this is a quick note')`

`r todo('here I need something more visible so it is red', color='red')`

`r todo('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id
est laborum.', color = 'gray')`

`r todo('this is *italic*, **bold** and ***both***')`

", file = rmd_file )
html_file <- gsub("\\.Rmd$", ".html", rmd_file )
pdf_file <- gsub("\\.Rmd$", ".pdf", rmd_file )


test_that("html output", {
  # this test is
  html <- rmarkdown::render(rmd_file, output_format = "html_document",
                            output_file = html_file, quiet = TRUE)
  expect_equal(basename(html), basename(html_file) )
})

# test_that("pdf output", {
#   # this test is
#   pdf <- rmarkdown::render(rmd_file, output_format = "pdf_document",
#                             output_file = pdf_file, quiet = TRUE)
#   expect_equal(basename(pdf), basename(html_file) )
# })


