
<!-- README.md is generated from README.Rmd. Please edit that file -->

# TodoRmd

<!-- # DiveR <img src="https://raw.githubusercontent.com/gowachin/DiveR/master/inst/images/DiveR_hex.png" alt="logo" align="right" height="200px/"/> -->
<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![](https://img.shields.io/badge/devel%20version-0.1.0-blue.svg)](https://github.com/gowachin/todormd)
[![R build
status](https://github.com/gowachin/todormd/workflows/R-CMD-check/badge.svg)](https://github.com/gowachin/todormd/actions)
<!-- [![Coverage status](https://codecov.io/gh/gowachin/todormd/branch/master/graph/badge.svg)](https://codecov.io/github/gowachin/todormd?branch=master) -->

<!-- badges: end -->

I don’t know how I’ll do this but this could be neat. I’ll need some
stuff from this book to understand how to do this.

Final objective is to code todonotes like in the latex package.

Feel free to participate to this project, it is designed to be open
source under a [CECILL-2
Licence](https://github.com/gowachin/todormd/blob/master/LICENCE-CECILL-2.1.txt).
Any help in is welcome (see end of README).

## Installation

### Dependencies

This package relies on very few packages listed below, that you can
install with the following code.

``` r
for (i in c('knitr', 'rmarkdown') ){
  if(!require(i,character.only = TRUE))
    install.packages(i)
}
```

### Development version

You can install the development version of `{todormd}` from
[github](https://github.com/gowachin/todormd) with:

``` r
# install.packages("devtools")
devtools::install_github('https://github.com/gowachin/todormd')
# or 
# install.packages("remotes")
remotes::install_github("gowachin/todormd")
```

## Want to help ?

Go check the [projects](https://github.com/gowachin/todormd/projects) of
this repository ! Any help is welcome and I accept all sort of ideas for
future project. The idea of this package is to learn about process like
desaturation models and turn them into algorithms. If you want to use a
specific model, join me and we can try to implement it !

Feel free to fork this, and use it. Any recommendation is welcome :)
