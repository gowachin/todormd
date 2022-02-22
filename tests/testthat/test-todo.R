
#### Test todo function ####

library(knitr)

test_that("no output", {
  opts_knit$set(rmarkdown.pandoc.to=NULL)
  expect_equal(todo("hello world"), "hello world" )
})

# PDF
test_that("pdf basic output", {
  opts_knit$set(rmarkdown.pandoc.to="latex")
  expect_equal(
    todo("hello world"),
    "\\todo[inline,color=orange]{hello world}"
  )
})

test_that("pdf red", {
  opts_knit$set(rmarkdown.pandoc.to="latex")
  expect_equal(
    todo("hello world", color = "red"),
    "\\todo[inline,color=red]{hello world}"
  )
})

test_that("pdf bolrd", {
  opts_knit$set(rmarkdown.pandoc.to="latex")
  expect_equal(
    todo("**hello world**", color = "red"),
    "\\todo[inline,color=red]{\\textbf{hello world}}"
  )
})

#HTML
test_that("html basic output", {
  opts_knit$set(rmarkdown.pandoc.to="html")
  expect_equal(
    todo("hello world"),
    paste("<div id=\"hello\" style=   \"padding: 2px 2px 2px 2px; ",
          "border: 2px solid black;   background: orange; ",
          "border-radius: 10px;\">   <p> hello world </p> </div>")
  )
})

test_that("html red", {
  opts_knit$set(rmarkdown.pandoc.to="html")
  expect_equal(
    todo("hello world", color = "red"),
    paste("<div id=\"hello\" style=   \"padding: 2px 2px 2px 2px; ",
          "border: 2px solid black;   background: red; ",
          "border-radius: 10px;\">   <p> hello world </p> </div>")
  )
})

test_that("html bold", {
  opts_knit$set(rmarkdown.pandoc.to="html")
  expect_equal(
    todo("**hello world**", color = "red"),
    paste("<div id=\"hello\" style=   \"padding: 2px 2px 2px 2px; ",
          "border: 2px solid black;   background: red; ",
          "border-radius: 10px;\">   <p> **hello world** </p> </div>")
  )
})
