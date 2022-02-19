
# Run all tests
rm(list = ls())
devtools::document('.')
devtools::load_all('.')
devtools::test()

library(covr, testthat)
# get a shiny to find which line is not yet tested. Very helpfull
report(x = package_coverage())
# covr::package_coverage()

# rerun all coverage for dataframe analysis.
# cov <- package_coverage()
# view results as a data.frame
# df_cov <- as.data.frame(cov)

x <- file_coverage('R/utils.R', 'tests/testthat/utils.R')
report(x)
# zero_coverage() shows only uncovered lines.
# If run within RStudio, `zero_coverage()` will open a marker pane with the
# uncovered lines.
# zero_coverage(cov)


# Update the doc part of the github with pkgdown
# pkgdown::build_site()

# Link between functions

# Update the coverage to codecov, don't forget the token
# covr::codecov()
